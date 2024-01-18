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
#include "ns3/csma-module.h"
#include "ns3/packet.h"
#include "ns3/header.h"

// #include "ns3/amqtt-module.h"
#include "amqtt-module.h"

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
    // NS_LOG_INFO("Handling ");
    while ((packet = socket->RecvFrom(from))) {
        

        // packet->RemoveAtEnd(50);
        // packet->RemoveAtStart(50);

        uint8_t buffer[1024];
        packet->CopyData(buffer, packet->GetSize());
        NS_LOG_INFO("Server Received: " << buffer);
        NS_LOG_INFO("Server Packet Size: " << packet->GetSize());
        
        // TcpHeader tcpHeader;
        // packet->RemoveHeader(tcpHeader);
        // // copy->PeekHeader(TCPHeader);
        // NS_LOG_INFO("This is the TCP header: " << tcpHeader);

        // uint32_t flags = 0;
        // flags |= TcpHeader::ACK;
        // flags |= TcpHeader::PSH;
        // tcpHeader.SetFlags(flags);
        // tcpHeader.EnableChecksums();

        // NS_LOG_INFO("This is the NEW TCP header: " << tcpHeader);
        
        // packet->AddHeader(tcpHeader);

        
        socket->SendTo(buffer, packet->GetSize(), 0, from);

        // socket->SendTo(buffer, packet->GetSize(), flags, from);

        // Print the IP addresses of the packet
        Ptr<Packet> copy = packet->Copy();

        // // Headers must be removed in the order they're present.
        // // PppHeader pppHeader;
        // // copy->RemoveHeader(pppHeader);

        // // NS_LOG_INFO ("This is the P2P header:" << pppHeader);

        // EthernetHeader ethernetHeader ;
        // copy->RemoveHeader(ethernetHeader);

        // NS_LOG_INFO ("This is the Eth header:" << ethernetHeader);

        // Ipv4Header ipHeader;
        // copy->RemoveHeader(ipHeader);

        // NS_LOG_INFO ("This is the IP header:" << ipHeader);

        // std::cout << "After: ";
        // std::cout << copy->ToString() << std::endl;

        // std::cout << "IP PAYLOAD size: ";
        // uint16_t ipPayloadSize = ipHeader.GetPayloadSize ();
        // std::cout << ipPayloadSize;
        // std::cout << std::endl;

        // std::cout << "Source IP: ";
        // ipHeader.GetSource().Print(std::cout);
        // std::cout << std::endl;

        // std::cout << "Destination IP: ";
        // ipHeader.GetDestination().Print(std::cout);
        // std::cout << std::endl;

        // TcpHeader tcpHeader;
        // copy->RemoveHeader(tcpHeader);
        // // copy->PeekHeader(TCPHeader);

        // uint8_t flags=0;
        // flags |= TcpHeader::ACK;
        // flags |= TcpHeader::PSH;
        // tcpHeader.SetFlags(flags);

        // NS_LOG_INFO ("This is the TCP header:" << tcpHeader);


        // std::cout << "Source Port: ";
        // uint16_t srcPort = TCPHeader.GetSourcePort();
        // std::cout << srcPort;
        // std::cout << std::endl;

        // std::cout << "Destination Port: ";        
        // uint16_t dstPort = TCPHeader.GetDestinationPort();
        // std::cout << dstPort;
        // std::cout << std::endl;
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

        Ipv4Address remoteIpv4 = InetSocketAddress::ConvertFrom(from).GetIpv4();
        NS_LOG_INFO("FROM: " << remoteIpv4 << " port " << InetSocketAddress::ConvertFrom(from).GetPort());

        // Print the IP addresses of the packet
        Ptr<Packet> copy = packet->Copy();

        // Headers must be removed in the order they're present.
        // PppHeader pppHeader;
        // copy->RemoveHeader(pppHeader);

        // NS_LOG_INFO ("This is the P2P header:" << pppHeader);

        EthernetHeader ethernetHeader ;
        copy->RemoveHeader(ethernetHeader);

        NS_LOG_INFO ("This is the Eth header:" << ethernetHeader);

        Ipv4Header ipHeader;
        copy->RemoveHeader(ipHeader);

        Ipv4Address srcIp = ipHeader.GetSource();
        Ipv4Address dstIp = ipHeader.GetDestination();

        NS_LOG_INFO("Source IP: " << srcIp);
        NS_LOG_INFO("Destination IP: " << dstIp);
        NS_LOG_INFO("Protocol: " << ipHeader.GetProtocol());


        if (ipHeader.GetProtocol() == 6) {  // 6 corresponds to TCP in the IP header
            TcpHeader tcpHeader;
            copy->RemoveHeader(tcpHeader);
            NS_LOG_INFO("This is the TCP header: " << tcpHeader);

            // Extract source and destination port from the TCP header
            uint16_t srcPort = tcpHeader.GetSourcePort();
            uint16_t dstPort = tcpHeader.GetDestinationPort();

            NS_LOG_INFO("Source Port: " << srcPort);
            NS_LOG_INFO("Destination Port: " << dstPort);
        }
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

static void RandomFunction (Ptr<Socket> socket)
{
    NS_LOG_INFO("HERE!");
}

static void SendPacket (Ptr<Socket> clientSocket, Time pktInterval, uint32_t pktCount)
{   
    // Ptr<TcpSocketBase> myTcpSocket = DynamicCast<TcpSocketBase>(clientSocket);
    // myTcpSocket->SetTcpNoDelay(true);

    InetSocketAddress remote = InetSocketAddress("192.168.1.1", 80);
    clientSocket->Connect(remote);
    
    // Simulator::Schedule (Seconds (1.0), &RandomFunction, &clientSocket);
    // SendData(clientSocket);

    uint32_t dataSize = 50;
    // uint32_t dataSize = 0;
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

    // char req[] = "GET / HTTP/1.1\r\n"
    // "Host: www.example.com\r\n"
    // "User-Agent: curl/7.68.0\r\n"
    // "Accept: */*\r\n"
    // "\r\n";

    // uint8_t data [strlen(req)];
    // for(int i =0; i < strlen(req); i++)
    // {   
    //     data[i] = req[i];
    //     // data[i] = 65;
    // }
    // uint32_t dataSize = sizeof(data)/sizeof(uint8_t);


    // Ptr<Packet> packet = Create<Packet>(data, dataSize);
    // Ptr<Packet> packet;
    // Ptr<Packet> packet = Create<Packet>(reinterpret_cast<const uint8_t*>(&data), dataSize);
    // clientSocket->Send(packet);

    if (pktCount > 0)
    {
        Ptr<Packet> packet = Create<Packet>(reinterpret_cast<const uint8_t*>(&data), dataSize);
        
        // Print the whole packet, but it does not interpret non ASCII
        // packet->Print (std::cout);
        // std::cout << std::endl;

        clientSocket->Send(packet);
        Simulator::Schedule(pktInterval, &SendPacket, clientSocket, pktInterval, pktCount - 1);
    }
    else
    {
        clientSocket->Close();
    }
}

int main() {

    Packet::EnablePrinting();
    // PacketMetadata::EnableChecking(),

    // Enable logging
    LogComponentEnable("Echo_Client_Server", LOG_LEVEL_ALL);
    uint32_t packetSize = 1000; // bytes
    uint32_t numPackets = 10;
    double interval = 1;
    double duration = 100;
    
    Time interPacketInterval = Seconds (interval); // transfer objec

    // Create nodes
    NodeContainer nodes;
    nodes.Create(2);
    
    // Create a simple point-to-point link
    // PointToPointHelper pointToPoint;
    // pointToPoint.SetDeviceAttribute("DataRate", StringValue("5Mbps"));
    // pointToPoint.SetChannelAttribute("Delay", StringValue("2ms"));

    // Create a CSMA channel
    CsmaHelper csma;
    csma.SetChannelAttribute("DataRate", StringValue("100Mbps"));
    csma.SetChannelAttribute("Delay", TimeValue(NanoSeconds(6560)));

    NetDeviceContainer devices;
    // devices = pointToPoint.Install(nodes);
    devices = csma.Install(nodes);

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
    InetSocketAddress local = InetSocketAddress(interfaces.GetAddress(0), 80);
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
    InetSocketAddress remote = InetSocketAddress(interfaces.GetAddress(0), 80);
    clientSocket->SetRecvCallback(MakeCallback(&HandleRead_Client));
    // clientSocket->SetSendCallback(MakeCallback(&SendData));
    
    // clientSocket->Connect(remote);
    // Send data to the server
    // SendData(clientSocket, 10);

    // NS_LOG_INFO("Connected: ");


    // Simulator::Schedule (Seconds (1.0), &SendData, &clientSocket);
    Simulator::ScheduleWithContext (clientSocket->GetNode ()->GetId (),
                                    Seconds (1.0), &SendPacket, 
                                    clientSocket,
                                    interPacketInterval,
                                    numPackets);

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

    // pointToPoint.EnablePcapAll ("Echo_Client_Server");
    csma.EnablePcapAll ("Echo_Client_Server");
    
    // Run simulation
    NS_LOG_INFO("Run Simulation.");
    Simulator::Stop(Seconds(10));
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");

    return 0;
}
