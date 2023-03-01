// Topology has two servers and many clients in two different subnets, all over CMSA
//        192.168.1.0/24                           192.168.2.0/24
//      (1.2) (1.3)  (1.4) ... (1.11)            (2.2) (2.3)  (2.4) ... (2.11)
//        n1    n2    n3       n10                 n1    n2    n3       n10
//        |     |     |         |                  |     |     |         |  
//        ======================= LAN              ======================= LAN
//              |                                        | 
//            (1.1)                                    (2.1)
//              n0                                       n0
//     (10.1.0.1)/(10.1.0.2)                     (10.1.1.1)/(10.1.1.2)
//              |                                         |
//        ============= LAN                       ============= LAN
//                      \                               /
//                       \                             /
//                        \                           /
//                         \                         /
//                                       n4
//                              (10.1.0.1)/(10.1.0.2)
//                              (10.1.1.1)/(10.1.1.2)

// - Traffic goes from the n1, n2 and n3 to n0
// - It can also go from n4 to n0 or the other way arround (2.1 to be server or client).
// - MAYBE each n1, n2 etc. in the above should be another server for the home network. 
// Currently they just "push" send the data but we can have home devices sending some 
// traffic to them as well.


// For now this is not needed.
// #include "neighborhood_topology_v1.h"

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

NS_LOG_COMPONENT_DEFINE("neighborhood_topology_v1");

int
main(int argc, char* argv[])
{
    // Users may find it convenient to turn on explicit debugging
    // for selected modules; the below lines suggest how to do this

    // LogComponentEnable ("TcpServer", LOG_LEVEL_INFO);
    // LogComponentEnable ("TcpL4Protocol", LOG_LEVEL_ALL);
    // LogComponentEnable ("TcpSocketImpl", LOG_LEVEL_ALL);
    // LogComponentEnable ("PacketSink", LOG_LEVEL_ALL);

    // These are parameters for the TCP/Application.
    Config::SetDefault("ns3::OnOffApplication::PacketSize", UintegerValue(250));
    Config::SetDefault("ns3::OnOffApplication::DataRate", StringValue("5kb/s"));
    // Config::SetDefault("ns3::OnOffApplication::DataRate", StringValue("5Mb/s"));

    // Specify if the n0 will be server or client in the second subnet.
    bool n0SecondaryServer = true;
    
    // number of HANs + 1 NAN gateway
    uint32_t nCsma = 11;
    uint32_t nCsmaSecondary = 1;

    NodeContainer csmaNodesNAN1;
    csmaNodesNAN1.Create(nCsma);

    NodeContainer csmaNodesNAN2;
    csmaNodesNAN2.Create(nCsma);

    NodeContainer csmaNodesNAN1Secondary;
    // We add the previously created node that will be the server also to the second batch of CSMA nodes
    csmaNodesNAN1Secondary.Add(csmaNodesNAN1.Get(0));
    // ..and then we create the rest.
    csmaNodesNAN1Secondary.Create(nCsmaSecondary);

    // One more time for the second NAN
    NodeContainer csmaNodesNAN2Secondary;
    csmaNodesNAN2Secondary.Add(csmaNodesNAN2.Get(0));
    csmaNodesNAN2Secondary.Create(nCsmaSecondary);

    // These are for the channel, but there are overriden by the TCP ones?
    CsmaHelper csma;
    csma.SetChannelAttribute("DataRate", StringValue("100Mbps"));
    csma.SetChannelAttribute("Delay", TimeValue(NanoSeconds(6560)));

    // First NAN
    NetDeviceContainer csmaDevicesNAN1;
    csmaDevicesNAN1 = csma.Install(csmaNodesNAN1);

    // Second NAN
    NetDeviceContainer csmaDevicesNAN2;
    csmaDevicesNAN2 = csma.Install(csmaNodesNAN2);

    NetDeviceContainer csmaDevicesNAN1Secondary;
    csmaDevicesNAN1Secondary = csma.Install(csmaNodesNAN1Secondary);

    NetDeviceContainer csmaDevicesNAN2Secondary;
    csmaDevicesNAN2Secondary = csma.Install(csmaNodesNAN2Secondary);

    InternetStackHelper stack;
    stack.Install(csmaNodesNAN1);
    // NOTE: For the secondary ones we should also add stacks to the rest of the nodes, not just the first one.
    stack.Install(csmaNodesNAN1Secondary.Get(1));
    
    stack.Install(csmaNodesNAN2);
    stack.Install(csmaNodesNAN2Secondary.Get(1));
    
    //
    // We've got the "hardware" in place.  
    // Now we need to add IP addresses for NAN1.
    //
    NS_LOG_INFO("Assign IP Addresses.");
    Ipv4AddressHelper ipv4;
    ipv4.SetBase("192.168.1.0", "255.255.255.0");
    Ipv4InterfaceContainer csmaInterfacesNAN1;
    csmaInterfacesNAN1 = ipv4.Assign(csmaDevicesNAN1);

    // IP addresses for NAN2.
    ipv4.SetBase("192.168.2.0", "255.255.255.0");
    Ipv4InterfaceContainer csmaInterfacesNAN2;
    csmaInterfacesNAN2 = ipv4.Assign(csmaDevicesNAN2);


    // Interfaces for the second network.
    // Both gateways will be in a separate subnet.
    // ipv4.SetBase("10.1.0.0", "255.255.0.0");

    // Say for now that we can have a /24 but we need to see how to go to the second subnet of a /16 as the above one
    // when you do GetAddress to interface, you get "Attempted to dereference zero pointer" if number bigger than the nodes
    // Therefore, there are probably assigned sequentially based on the number of nodes/devices and there is not a "range" statically allocated
    ipv4.SetBase("10.1.0.0", "255.255.255.0");
    Ipv4InterfaceContainer csmaInterfacesNAN1Secondary;
    csmaInterfacesNAN1Secondary = ipv4.Assign(csmaDevicesNAN1Secondary);

    ipv4.SetBase("10.1.1.0", "255.255.255.0");
    Ipv4InterfaceContainer csmaInterfacesNAN2Secondary;
    csmaInterfacesNAN2Secondary = ipv4.Assign(csmaDevicesNAN2Secondary);

  
    uint16_t port = 8080;
    
    OnOffHelper clientHelperNAN1("ns3::TcpSocketFactory", Address());
    clientHelperNAN1.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
    clientHelperNAN1.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
    AddressValue remoteAddress (InetSocketAddress(csmaInterfacesNAN1.GetAddress(0), port));
    clientHelperNAN1.SetAttribute("Remote", remoteAddress);
    // clientHelper.SetAttribute("MaxBytes", UintegerValue(250));

    OnOffHelper clientHelperNAN2("ns3::TcpSocketFactory", Address());
    clientHelperNAN2.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
    clientHelperNAN2.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
    AddressValue remoteAddress2 (InetSocketAddress(csmaInterfacesNAN2.GetAddress(0), port));
    clientHelperNAN2.SetAttribute("Remote", remoteAddress2);

    // ApplicationContainer sourceApps = clientHelper.Install(csmaNodes.Get(1));
    // sourceApps = clientHelper.Install(csmaNodes.Get(2));
    
    ApplicationContainer clientApps;
    // We start from the i=1 since the first one will be the server
    for (uint32_t i = 1; i < nCsma; ++i)
    {
        clientApps.Add(clientHelperNAN1.Install(csmaNodesNAN1.Get(i)));
        clientApps.Add(clientHelperNAN2.Install(csmaNodesNAN2.Get(i)));
    }
    clientApps.Start(Seconds(1.0));
    clientApps.Stop(Seconds(10.0));
    // clientApps.Stop(Seconds(30.0));

    //
    // Create a PacketSinkApplication and install it on node 0 with two interfaces
    //
    PacketSinkHelper sinkNAN1("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfacesNAN1.GetAddress(0), port));
    ApplicationContainer sinkApps = sinkNAN1.Install(csmaNodesNAN1.Get(0));
    sinkApps.Start(Seconds(0.0));
    sinkApps.Stop(Seconds(10.0));
    // sinkApps.Stop(Seconds(30.0));

    // ... and the second server
    // TODO: Can we do something similar to the above to remove this "duplicate" code?
    PacketSinkHelper sinkNAN2("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfacesNAN2.GetAddress(0), port));
    ApplicationContainer sinkApps2 = sinkNAN2.Install(csmaNodesNAN2.Get(0));
    sinkApps2.Start(Seconds(0.0));
    sinkApps2.Stop(Seconds(10.0));


    if(n0SecondaryServer)
    {
        // This is the same NAN1 server as above but now it is also "attached" to the second network
        PacketSinkHelper sinkNAN1Secondary("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfacesNAN1Secondary.GetAddress(0), port));
        ApplicationContainer sinkAppsNAN1Secondary = sinkNAN1Secondary.Install(csmaNodesNAN1Secondary.Get(0));
        sinkAppsNAN1Secondary.Start(Seconds(0.0));
        sinkAppsNAN1Secondary.Stop(Seconds(10.0));

        // // ...for NAN2 as well. But let's go to the second subnet.
        PacketSinkHelper sinkNAN2Secondary("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfacesNAN2Secondary.GetAddress(0), port));
        // PacketSinkHelper sinkNAN2Secondary("ns3::TcpSocketFactory", InetSocketAddress("10.1.1.1", port));
        ApplicationContainer sinkAppsNAN2Secondary = sinkNAN2Secondary.Install(csmaNodesNAN2Secondary.Get(0));
        sinkAppsNAN2Secondary.Start(Seconds(0.0));
        sinkAppsNAN2Secondary.Stop(Seconds(10.0));

        // Add another client to the second network with the same characteristics as before.
        OnOffHelper clientHelperSecondary("ns3::TcpSocketFactory", Address());
        clientHelperSecondary.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
        clientHelperSecondary.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
        // clientHelperSecondary.SetAttribute("MaxBytes", UintegerValue(250));

        AddressValue remoteAddressSecondary (InetSocketAddress(csmaInterfacesNAN1Secondary.GetAddress(0), port));
        clientHelperSecondary.SetAttribute("Remote", remoteAddressSecondary);
        ApplicationContainer clientAppsSecondary = clientHelperSecondary.Install(csmaNodesNAN1Secondary.Get(1));
        clientAppsSecondary.Start(Seconds(1.0));
        clientAppsSecondary.Stop(Seconds(10.0));

        // .. and then we do the connection with the other gateway.
        OnOffHelper clientHelperSecondary2("ns3::TcpSocketFactory", Address());
        clientHelperSecondary2.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
        clientHelperSecondary2.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));

        AddressValue remoteAddressSecondary2 (InetSocketAddress(csmaInterfacesNAN2Secondary.GetAddress(0), port));
        // AddressValue remoteAddressSecondary2 (InetSocketAddress("10.1.1.1", port));
        clientHelperSecondary2.SetAttribute("Remote", remoteAddressSecondary2);
        ApplicationContainer clientAppsSecondary2 = clientHelperSecondary2.Install(csmaNodesNAN2Secondary.Get(1));
        clientAppsSecondary2.Start(Seconds(1.0));
        clientAppsSecondary2.Stop(Seconds(10.0));
    }
    // TODO: The following is NOT ready yet.
    // else
    // {
    //      // Below we do the node that belongs ONLY to the 192.168.2.0 network, to be the server.
    //     PacketSinkHelper sinkSecondary("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfacesSecondary.GetAddress(1), port));
    //     ApplicationContainer sinkAppsSecondary = sinkSecondary.Install(csmaNodesSecondary.Get(1));
    //     sinkAppsSecondary.Start(Seconds(0.0));
    //     sinkAppsSecondary.Stop(Seconds(30.0));

    //     // And now the node 0 in the second network will be a client
    //     OnOffHelper clientHelperSecondary("ns3::TcpSocketFactory", Address());
    //     clientHelperSecondary.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
    //     clientHelperSecondary.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
    //     // clientHelperSecondary.SetAttribute("MaxBytes", UintegerValue(250));

    //     AddressValue remoteAddressSecondary (InetSocketAddress(csmaInterfacesSecondary.GetAddress(1), port));
    //     clientHelperSecondary.SetAttribute("Remote", remoteAddressSecondary);
    //     ApplicationContainer clientAppsSecondary = clientHelperSecondary.Install(csmaNodesSecondary.Get(0));
    //     clientAppsSecondary.Start(Seconds(1.0));
    //     clientAppsSecondary.Stop(Seconds(10.0));
    // }

    Ipv4GlobalRoutingHelper::PopulateRoutingTables();
    
    // configure tracing
    AsciiTraceHelper ascii;
    csma.EnableAsciiAll(ascii.CreateFileStream("neighborhood_topology_v1"));
    csma.EnablePcapAll("neighborhood_topology_v1");

    // Check those PCAPs for conversations to see if they have the correct number of hosts based on the "nCsma" number
    // csma.EnablePcap("two-LANs", csmaDevices.Get(0), true);
    // csma.EnablePcap("two-LANs", csmaDevices.Get(1), true);

    NS_LOG_INFO("Run Simulation.");
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");

    return 0;
}
