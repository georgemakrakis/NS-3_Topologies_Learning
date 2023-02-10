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
// - MAYBE each n1, n2 etc. in the above should be another server for the home network. 
// Currently they just "push" send the data but we can have home devices sending some 
// traffic to them as well.


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
    bool n0_secondary_server = true;
    
    // number of HANs + 1 NAN gateway
    uint32_t nCsma = 11;
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
    for (uint32_t i = 1; i < nCsma; ++i)
    {
        clientApps.Add(clientHelper.Install(csmaNodes.Get(i)));
    }
    clientApps.Start(Seconds(1.0));
    clientApps.Stop(Seconds(10.0));
    // clientApps.Stop(Seconds(30.0));

    //
    // Create a PacketSinkApplication and install it on node 0 with two interfaces
    //
    PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfaces.GetAddress(0), port));
    ApplicationContainer sinkApps = sink.Install(csmaNodes.Get(0));
    sinkApps.Start(Seconds(0.0));
    sinkApps.Stop(Seconds(10.0));
    // sinkApps.Stop(Seconds(30.0));

    if(n0_secondary_server)
    {
        // This is the same server as above but now it is also "attached" to the second network
        PacketSinkHelper sinkSecondary("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfacesSecondary.GetAddress(0), port));
        ApplicationContainer sinkAppsSecondary = sinkSecondary.Install(csmaNodesSecondary.Get(0));
        sinkAppsSecondary.Start(Seconds(0.0));
        sinkAppsSecondary.Stop(Seconds(10.0));

        // Add another client to the 192.168.2.0 network with the same characteristics as before.
        OnOffHelper clientHelperSecondary("ns3::TcpSocketFactory", Address());
        clientHelperSecondary.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
        clientHelperSecondary.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
        // clientHelperSecondary.SetAttribute("MaxBytes", UintegerValue(250));

        AddressValue remoteAddressSecondary (InetSocketAddress(csmaInterfacesSecondary.GetAddress(0), port));
        clientHelperSecondary.SetAttribute("Remote", remoteAddressSecondary);
        ApplicationContainer clientAppsSecondary = clientHelperSecondary.Install(csmaNodesSecondary.Get(1));
        clientAppsSecondary.Start(Seconds(1.0));
        clientAppsSecondary.Stop(Seconds(10.0));
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
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");

    return 0;
}