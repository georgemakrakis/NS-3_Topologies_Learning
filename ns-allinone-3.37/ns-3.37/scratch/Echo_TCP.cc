// #include "Echo_TCP.h"

#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/applications-module.h"
#include "ns3/wifi-module.h"
#include "ns3/mobility-module.h"
#include "ns3/netanim-module.h"
#include "ns3/internet-module.h"
#include "ns3/packet-socket-helper.h"
#include "ns3/packet-socket-address.h"
#include "ns3/mobility-module.h"
#include "ns3/config-store-module.h"
#include "ns3/ns2-mobility-helper.h"
#include "ns3/node.h"

#include "ns3/point-to-point-module.h"
#include "ns3/packet.h"
#include "ns3/header.h"

#include <iostream>
#include <vector>
#include <string>

// #include "ns3/tcp-module.h"

using namespace ns3;

NS_LOG_COMPONENT_DEFINE("Echo_Client_Server");

void ReceivePacket (Ptr<Socket> socket)
{
	if(socket->Recv()){

		NS_LOG_INFO("Received one packet!");



    }
}

void HandleRead(Ptr<Socket> socket) {
    Ptr<Packet> packet;
    Address from;
    NS_LOG_INFO("Handling ");
    while ((packet = socket->RecvFrom(from))) {
        uint8_t buffer[1024];
        packet->CopyData(buffer, packet->GetSize());
        socket->SendTo(buffer, packet->GetSize(), 0, from);

        NS_LOG_INFO("Server Received: " << buffer);
    }
}


void HandleAccept(Ptr<Socket> socket, const Address& from) {
    
    socket->SetRecvCallback(MakeCallback(&HandleRead));
    NS_LOG_INFO("Accepted: ");
    // socket->SetAcceptCallback(
    //     MakeNullCallback<void, Ptr<Socket>, const Address&>(),
    //     MakeCallback(&HandleAccept)
    // );

    socket->SetAcceptCallback(
        MakeNullCallback<void, Ptr<Socket>, const Address&>(),
        MakeCallback(&HandleAccept)
    );
}

void ServerHandleConnectionCreated (Ptr<Socket> s, const Address & addr)
{
    s->SetRecvCallback (MakeCallback (&HandleRead));
    // s->SetSendCallback (MakeCallback (&TcpTestCase::ServerHandleSend, this));
}

void HandleRead_Client(Ptr<Socket> socket) {
    Ptr<Packet> packet;
    Address from;
    while ((packet = socket->RecvFrom(from))) {
        uint8_t buffer[1024];
        packet->CopyData(buffer, packet->GetSize());
        NS_LOG_INFO("Received: " << buffer);
    }
}

// void SendData(Ptr<Socket> socket, uint32_t dataSize) {
void SendData(Ptr<Socket> socket) {
    uint32_t dataSize = 10;
    uint8_t data[dataSize];
    // Ptr<Packet> packet = Create<Packet>(data, dataSize);
    Ptr<Packet> packet;
    packet->CopyData(data, dataSize);
    socket->Send(packet);
}


static void GenerateTraffic (Ptr<Socket> socket, uint32_t pktSize,
                             uint32_t pktCount, Time pktInterval )
{
  if (pktCount > 0)
    {
      socket->Send (Create<Packet> (pktSize));
      Simulator::Schedule (pktInterval, &GenerateTraffic,
                           socket, pktSize,pktCount-1, pktInterval);

    }
  else
    {
      socket->Close ();
    }
}

void run_server(NodeContainer nodes, Ipv4InterfaceContainer interfaces) {}

void run_client(NodeContainer nodes, Ipv4InterfaceContainer interfaces) {
    TypeId tid_client = TypeId::LookupByName("ns3::TcpSocketFactory");
    Ptr<Socket> clientSocket = Socket::CreateSocket(nodes.Get(1), tid_client);
    InetSocketAddress remote = InetSocketAddress(interfaces.GetAddress(0), 8080);
    clientSocket->SetRecvCallback(MakeCallback(&HandleRead_Client));
    clientSocket->SetSendCallback(MakeCallback(&SendData));
    
    clientSocket->Connect(remote);
}

static void RandomFunction (Ptr<Socket> socket)
{
    NS_LOG_INFO("HERE!");
}

static void SendPacket (Ptr<Socket> clientSocket)
{
    InetSocketAddress remote = InetSocketAddress("192.168.1.1", 8080);
    clientSocket->Connect(remote);
    
    // Simulator::Schedule (Seconds (1.0), &RandomFunction, &clientSocket);
    // SendData(clientSocket);

    uint32_t dataSize = 10;
    uint8_t data[dataSize];

    for(int i =0; i < dataSize; i++)
    {   
        if( i == 0)
        {
            data[i] = 65;
            continue;
        }
    
        data[i] = data[i-1] + 1;
        // data[i] = 65;
    }

    // Ptr<Packet> packet = Create<Packet>(data, dataSize);
    // Ptr<Packet> packet;
    Ptr<Packet> packet = Create<Packet>(reinterpret_cast<const uint8_t*>(&data), dataSize);
    clientSocket->Send(packet);
}

int main() {
    // Enable logging
    LogComponentEnable("Echo_Client_Server", LOG_LEVEL_ALL);
    uint32_t packetSize = 1000; // bytes
    uint32_t numPackets = 1;
    double interval = 2;
    double duration = 100;
    
    Time interPacketInterval = Seconds (interval); // transfer objec

    // Create nodes
    NodeContainer nodes;
    nodes.Create(2);
    
    // Create a simple point-to-point link
    PointToPointHelper pointToPoint;
    pointToPoint.SetDeviceAttribute("DataRate", StringValue("5Mbps"));
    pointToPoint.SetChannelAttribute("Delay", StringValue("2ms"));
    NetDeviceContainer devices;
    devices = pointToPoint.Install(nodes);

    // Install the internet stack on the nodes
    InternetStackHelper stack;
    stack.Install(nodes);

    // Assign IP addresses
    Ipv4AddressHelper address;
    address.SetBase("192.168.1.0", "255.255.255.0");
    Ipv4InterfaceContainer interfaces = address.Assign(devices);
    
    // Create a TCP server

    TypeId tid = TypeId::LookupByName("ns3::TcpSocketFactory");
    Ptr<Socket> serverSocket = Socket::CreateSocket(nodes.Get(0), tid);
    InetSocketAddress local = InetSocketAddress(interfaces.GetAddress(0), 8080);
    serverSocket->Bind(local);
    // serverSocket->SetRecvCallback (MakeCallback (&ReceivePacket));
    serverSocket->Listen();
    // serverSocket->SetAcceptCallback(
    //     MakeCallback(&HandleAccept),
    //     MakeNullCallback<void, Ptr<Socket>, const Address&>()
    // );

    serverSocket->SetAcceptCallback (MakeNullCallback<bool, Ptr< Socket >, const Address &> (),
                               MakeCallback (&ServerHandleConnectionCreated));

    // OnOffHelper server("ns3::TcpSocketFactory", InetSocketAddress(interfaces.GetAddress(0), 8080));
    // server.SetAttribute ("OnTime", StringValue ("ns3::ConstantRandomVariable[Constant=1]"));
    // server.SetAttribute ("OffTime", StringValue ("ns3::ConstantRandomVariable[Constant=0]"));
    // ApplicationContainer serverApps = server.Install(nodes.Get(0));
    // serverApps.Start(Seconds(0.0));
    // serverApps.Stop(Seconds(10.0));


    // Simulator::Schedule (Seconds (1.0), &run_server, &nodes, &interfaces);
    // Simulator::Schedule (Seconds (1.0), &RandomFunction);
    // run_server(nodes, interfaces);

    // Create a TCP client
    // Simulator::Schedule (Seconds (10.0), &run_client, &nodes, &interfaces);
    // Simulator::Schedule (Seconds (10.0), &RandomFunction);
    // run_client(nodes, interfaces);
    
    TypeId tid_client = TypeId::LookupByName("ns3::TcpSocketFactory");
    Ptr<Socket> clientSocket = Socket::CreateSocket(nodes.Get(1), tid_client);
    InetSocketAddress remote = InetSocketAddress(interfaces.GetAddress(0), 8080);
    clientSocket->SetRecvCallback(MakeCallback(&HandleRead_Client));
    // clientSocket->SetSendCallback(MakeCallback(&SendData));
    
    // clientSocket->Connect(remote);
    // Send data to the server
    // SendData(clientSocket, 10);

    NS_LOG_INFO("Connected: ");


    // Simulator::Schedule (Seconds (1.0), &SendData, &clientSocket);
    Simulator::ScheduleWithContext (clientSocket->GetNode ()->GetId (),
                                    Seconds (1.0), &SendPacket, 
                                    clientSocket);

    // Simulator::ScheduleWithContext (clientSocket->GetNode ()->GetId (),
    //                               Seconds (1.0), &GenerateTraffic,
    //                               clientSocket, packetSize, numPackets, interPacketInterval);

    // OnOffHelper client("ns3::TcpSocketFactory", Address(interfaces.GetAddress(1)));
    // client.SetAttribute ("OnTime", StringValue ("ns3::ConstantRandomVariable[Constant=1]"));
    // client.SetAttribute ("OffTime", StringValue ("ns3::ConstantRandomVariable[Constant=0]"));
    // client.SetAttribute ("Remote", AddressValue(InetSocketAddress(interfaces.GetAddress(0), 8080)));
    // ApplicationContainer clientApps = client.Install(nodes.Get(1));
    // clientApps.Start(Seconds(1.0));
    // clientApps.Stop(Seconds(10.0));

    pointToPoint.EnablePcapAll ("Echo_Client_Server");
    
    // Run simulation
    NS_LOG_INFO("Run Simulation.");
    Simulator::Stop(Seconds(10));
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");

    return 0;
}
