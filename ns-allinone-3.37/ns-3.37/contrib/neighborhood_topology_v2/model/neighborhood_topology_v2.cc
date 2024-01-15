// Topology has two servers and many clients in two different subnets, all over CMSA
//        192.168.1.0/24
//      (1.2) (1.3)  (1.4)
//        n1    n2    n3
//        |     |     |
//        ============= LAN
//              |
//            (1.1)
//              n0
//         (2.1)/(2.2)
//              | 
//        ============= LAN
//              | 
//              n4
//         (2.1)/(2.2)
//        192.168.2.0/24

// - Traffic goes from the n1, n2 and n3 to n0
// - It can also go from n4 to n0 or the other way arround (2.1 to be server or client).


// For now this is not needed.
// #include "neighborhood_topology_v2.h"

#include "ns3/applications-module.h"
#include "ns3/core-module.h"
#include "ns3/internet-module.h"
#include "ns3/ipv4-global-routing-helper.h"
#include "ns3/network-module.h"
#include "ns3/point-to-point-module.h"
#include "ns3/packet-sink.h"
#include "ns3/csma-module.h"

//#include "src/click/model/ipv4-click-routing.h"
//#include "src/click/helper/click-internet-stack-helper.h"

#include <cassert>
#include <fstream>
#include <iostream>
#include <string>

using namespace ns3;

NS_LOG_COMPONENT_DEFINE("neighborhood_topology_v2");

uint8_t central_data [1024];

void HandleRead_Client(Ptr<Socket> socket) {
    Ptr<Packet> packet;
    Address from;
    while ((packet = socket->RecvFrom(from))) {
        uint8_t buffer[1024];
        packet->CopyData(buffer, packet->GetSize());
        NS_LOG_INFO("Received: " << buffer);

        Ipv4Address remoteIpv4 = InetSocketAddress::ConvertFrom(from).GetIpv4();
        NS_LOG_INFO("FROM: " << remoteIpv4 << " port " << InetSocketAddress::ConvertFrom(from).GetPort());

    }
}

static void SendPacket (Ptr<Socket> clientSocket, Time pktInterval, uint32_t pktCount, InetSocketAddress remote)
{   
    // Ptr<TcpSocketBase> myTcpSocket = DynamicCast<TcpSocketBase>(clientSocket);
    // myTcpSocket->SetTcpNoDelay(true);

    // InetSocketAddress remote = InetSocketAddress("192.168.1.1", 80);
    clientSocket->Connect(remote);
    
    // Simulator::Schedule (Seconds (1.0), &RandomFunction, &clientSocket);
    // SendData(clientSocket);

    uint32_t dataSize = 50;
    // uint32_t dataSize = 0;
    uint8_t data[dataSize];
    
    for(int i =0; i < dataSize; i++)
    {   
        Ipv4Address remoteIpv4 = InetSocketAddress::ConvertFrom(remote).GetIpv4();
        if(remoteIpv4 == "10.1.0.1")
        {
            NS_LOG_INFO("Second subnet client setting data.");
            data[i] = 65;
        }
        else 
        {
            if( i == 0)
            {
                data[i] = 65;
                continue;
            }
        
            data[i] = data[i-1] + 1;
        }
        
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
        Simulator::Schedule(pktInterval, &SendPacket, clientSocket, pktInterval, pktCount - 1, remote);
    }
    else
    {
        clientSocket->Close();
    }
}

void HandleRead(Ptr<Socket> socket) {
    Ptr<Packet> packet;
    Address from;
    // NS_LOG_INFO("Handling ");
    while ((packet = socket->RecvFrom(from))) {
        

        // packet->RemoveAtEnd(50);
        // packet->RemoveAtStart(50);

        Ipv4Address remoteIpv4 = InetSocketAddress::ConvertFrom(from).GetIpv4();
        if(remoteIpv4 == "10.1.0.2")
        {   
            NS_LOG_INFO("Second subnet server setting data.");
            socket->SendTo(central_data, packet->GetSize(), 0, from);
            return;
        }

        uint8_t buffer[1024];
        packet->CopyData(buffer, packet->GetSize());
        packet->CopyData(central_data, packet->GetSize());
        NS_LOG_INFO("Server Received: " << buffer);
        NS_LOG_INFO("Server Packet Size: " << packet->GetSize());
        
        socket->SendTo(buffer, packet->GetSize(), 0, from);
        return;
    }
}

void ServerHandleConnectionCreated (Ptr<Socket> s, const Address & addr)
{
    s->SetRecvCallback (MakeCallback (&HandleRead));
    // s->SetSendCallback (MakeCallback (&TcpTestCase::ServerHandleSend, this));
}

int
main(int argc, char* argv[])
{
    // Users may find it convenient to turn on explicit debugging
    // for selected modules; the below lines suggest how to do this

    // LogComponentEnable ("TcpServer", LOG_LEVEL_INFO);
    // LogComponentEnable ("TcpL4Protocol", LOG_LEVEL_ALL);
    // LogComponentEnable ("TcpSocketImpl", LOG_LEVEL_ALL);
    // LogComponentEnable ("PacketSink", LOG_LEVEL_ALL);

    // Enable logging
    LogComponentEnable("neighborhood_topology_v2", LOG_LEVEL_ALL);

    // These are parameters for the TCP/Application.
    Config::SetDefault("ns3::OnOffApplication::PacketSize", UintegerValue(250));
    Config::SetDefault("ns3::OnOffApplication::DataRate", StringValue("5kb/s"));
    // Config::SetDefault("ns3::OnOffApplication::DataRate", StringValue("5Mb/s"));
    
    uint32_t numPackets = 10;
    double interval = 1;
    double duration = 100;
    
    Time interPacketInterval = Seconds (interval);

    // Specify if the n0 will be server or client in the second subnet.
    bool n0_secondary_server = true;

    uint32_t nCsma = 2;
    uint32_t nCsmaSecondary = 1;

    NodeContainer csmaNodes;
    csmaNodes.Create(nCsma);

    NodeContainer csmaNodesSecondary;
    // We add the previously created node that will be the server also to the second batch of CSMA nodes
    csmaNodesSecondary.Add(csmaNodes.Get(0));
    // ..and then we create the rest.
    csmaNodesSecondary.Create(nCsmaSecondary);

    // These are for the channel, but there are overriden by the TCP ones?
    CsmaHelper csma;
    csma.SetChannelAttribute("DataRate", StringValue("100Mbps"));
    csma.SetChannelAttribute("Delay", TimeValue(NanoSeconds(6560)));

    NetDeviceContainer csmaDevices;
    csmaDevices = csma.Install(csmaNodes);

    NetDeviceContainer csmaDevicesSecondary;
    csmaDevicesSecondary = csma.Install(csmaNodesSecondary);

    InternetStackHelper stack;
    stack.Install(csmaNodes);
    // NOTE: For the secondary ones we should also add stacks to the rest of the nodes, not just the first one.
    stack.Install(csmaNodesSecondary.Get(1));

    
    //
    // We've got the "hardware" in place.  Now we need to add IP addresses.
    //
    NS_LOG_INFO("Assign IP Addresses.");
    Ipv4AddressHelper ipv4;
    ipv4.SetBase("192.168.1.0", "255.255.255.0");
    Ipv4InterfaceContainer csmaInterfaces;
    csmaInterfaces = ipv4.Assign(csmaDevices);

    // Interfaces for the second subnet.
    // ipv4.SetBase("192.168.2.0", "255.255.255.0");
    ipv4.SetBase("10.1.0.0", "255.255.0.0");
    Ipv4InterfaceContainer csmaInterfacesSecondary;
    csmaInterfacesSecondary = ipv4.Assign(csmaDevicesSecondary);

  
    uint16_t port = 8080;
    
    OnOffHelper clientHelper("ns3::TcpSocketFactory", Address());
    clientHelper.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
    clientHelper.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
    AddressValue remoteAddress (InetSocketAddress(csmaInterfaces.GetAddress(0), port));
    clientHelper.SetAttribute("Remote", remoteAddress);
    // clientHelper.SetAttribute("MaxBytes", UintegerValue(250));

    // ApplicationContainer sourceApps = clientHelper.Install(csmaNodes.Get(1));
    // sourceApps = clientHelper.Install(csmaNodes.Get(2));
    
    ApplicationContainer clientApps;
    // We start from the i=1 since the first one will be the server
    // for (uint32_t i = 1; i < nCsma; ++i)
    // {
    //     clientApps.Add(clientHelper.Install(csmaNodes.Get(i)));
    // }
    // clientApps.Start(Seconds(1.0));
    // clientApps.Stop(Seconds(10.0));

    TypeId tid_client = TypeId::LookupByName("ns3::TcpSocketFactory");
    for (uint32_t i = 1; i < nCsma; ++i)
    {
        Ptr<Socket> clientSocket = Socket::CreateSocket(csmaNodes.Get(i), tid_client);
        InetSocketAddress remote = InetSocketAddress(csmaInterfaces.GetAddress(0), port);
        clientSocket->SetRecvCallback(MakeCallback(&HandleRead_Client));

        Simulator::ScheduleWithContext (clientSocket->GetNode ()->GetId (),
                                    Seconds (1.0), &SendPacket, 
                                    clientSocket,
                                    interPacketInterval,
                                    numPackets, remote);
    }

    //
    // Create a PacketSinkApplication and install it on node 0 with two interfaces
    //
    // PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfaces.GetAddress(0), port));
    // ApplicationContainer sinkApps = sink.Install(csmaNodes.Get(0));
    // sinkApps.Start(Seconds(0.0));
    // sinkApps.Stop(Seconds(10.0));

    TypeId tid = TypeId::LookupByName("ns3::TcpSocketFactory");
    Ptr<Socket> serverSocket = Socket::CreateSocket(csmaNodes.Get(0), tid);
    InetSocketAddress local = InetSocketAddress(csmaInterfaces.GetAddress(0), port);
    serverSocket->Bind(local);
    // serverSocket->SetRecvCallback (MakeCallback (&ReceivePacket));
    serverSocket->Listen();
    // serverSocket->SetAcceptCallback(
    //     MakeCallback(&HandleAccept),
    //     MakeNullCallback<void, Ptr<Socket>, const Address&>()
    // );

    serverSocket->SetAcceptCallback (MakeNullCallback<bool, Ptr< Socket >, const Address &> (),
                               MakeCallback (&ServerHandleConnectionCreated));


    if(n0_secondary_server)
    {
        // This is the same server as above but now it is also "attached" to the second network
        // PacketSinkHelper sinkSecondary("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfacesSecondary.GetAddress(0), port));
        // ApplicationContainer sinkAppsSecondary = sinkSecondary.Install(csmaNodesSecondary.Get(0));
        // sinkAppsSecondary.Start(Seconds(0.0));
        // sinkAppsSecondary.Stop(Seconds(10.0));

        TypeId tid = TypeId::LookupByName("ns3::TcpSocketFactory");
        Ptr<Socket> serverSocket = Socket::CreateSocket(csmaNodesSecondary.Get(0), tid);
        InetSocketAddress local = InetSocketAddress(csmaInterfacesSecondary.GetAddress(0), port);
        serverSocket->Bind(local);
        // serverSocket->SetRecvCallback (MakeCallback (&ReceivePacket));
        serverSocket->Listen();
        // serverSocket->SetAcceptCallback(
        //     MakeCallback(&HandleAccept),
        //     MakeNullCallback<void, Ptr<Socket>, const Address&>()
        // );

        serverSocket->SetAcceptCallback (MakeNullCallback<bool, Ptr< Socket >, const Address &> (),
                                MakeCallback (&ServerHandleConnectionCreated));

        // Add another client to the 192.168.2.0 network with the same characteristics as before.
        // OnOffHelper clientHelperSecondary("ns3::TcpSocketFactory", Address());
        // clientHelperSecondary.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
        // clientHelperSecondary.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));

        // AddressValue remoteAddressSecondary (InetSocketAddress(csmaInterfacesSecondary.GetAddress(0), port));
        // clientHelperSecondary.SetAttribute("Remote", remoteAddressSecondary);
        // ApplicationContainer clientAppsSecondary = clientHelperSecondary.Install(csmaNodesSecondary.Get(1));
        // clientAppsSecondary.Start(Seconds(1.0));
        // clientAppsSecondary.Stop(Seconds(10.0));

        Ptr<Socket> clientSocket = Socket::CreateSocket(csmaNodesSecondary.Get(1), tid_client);
        InetSocketAddress remote = InetSocketAddress(csmaInterfacesSecondary.GetAddress(0), port);
        clientSocket->SetRecvCallback(MakeCallback(&HandleRead_Client));

        Simulator::ScheduleWithContext (clientSocket->GetNode ()->GetId (),
                                    Seconds (1.0), &SendPacket, 
                                    clientSocket,
                                    interPacketInterval,
                                    numPackets, remote);
    }
    else
    {
         // Below we do the node that belongs ONLY to the 192.168.2.0 network, to be the server.
        PacketSinkHelper sinkSecondary("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfacesSecondary.GetAddress(1), port));
        ApplicationContainer sinkAppsSecondary = sinkSecondary.Install(csmaNodesSecondary.Get(1));
        sinkAppsSecondary.Start(Seconds(0.0));
        sinkAppsSecondary.Stop(Seconds(30.0));

        // And now the node 0 in the second network will be a client
        OnOffHelper clientHelperSecondary("ns3::TcpSocketFactory", Address());
        clientHelperSecondary.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
        clientHelperSecondary.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
        // clientHelperSecondary.SetAttribute("MaxBytes", UintegerValue(250));

        AddressValue remoteAddressSecondary (InetSocketAddress(csmaInterfacesSecondary.GetAddress(1), port));
        clientHelperSecondary.SetAttribute("Remote", remoteAddressSecondary);
        ApplicationContainer clientAppsSecondary = clientHelperSecondary.Install(csmaNodesSecondary.Get(0));
        clientAppsSecondary.Start(Seconds(1.0));
        clientAppsSecondary.Stop(Seconds(10.0));
    }

    Ipv4GlobalRoutingHelper::PopulateRoutingTables();
    
    // configure tracing
    AsciiTraceHelper ascii;
    csma.EnableAsciiAll(ascii.CreateFileStream("neighborhood_topology_v2"));
    csma.EnablePcapAll("neighborhood_topology_v2");

    // Check those PCAPs for conversations to see if they have the correct number of hosts based on the "nCsma" number
    // csma.EnablePcap("two-LANs", csmaDevices.Get(0), true);
    // csma.EnablePcap("two-LANs", csmaDevices.Get(1), true);

    NS_LOG_INFO("Run Simulation.");
    Simulator::Stop(Seconds(10));
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");

    return 0;
}