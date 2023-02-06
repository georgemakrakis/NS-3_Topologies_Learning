// For now this is not needed.
// #include "two-LANs.h"

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

NS_LOG_COMPONENT_DEFINE("two-LANs");

int
main(int argc, char* argv[])
{
    // Users may find it convenient to turn on explicit debugging
    // for selected modules; the below lines suggest how to do this

    // LogComponentEnable ("TcpServer", LOG_LEVEL_INFO);
    // LogComponentEnable ("TcpL4Protocol", LOG_LEVEL_ALL);
    // LogComponentEnable ("TcpSocketImpl", LOG_LEVEL_ALL);
    // LogComponentEnable ("PacketSink", LOG_LEVEL_ALL);

    uint32_t nCsma = 4;
    uint32_t nCsmaSecondary = 1;

    NodeContainer csmaNodes;
    csmaNodes.Create(nCsma);

    NodeContainer csmaNodesSecondary;
    csmaNodesSecondary.Add(csmaNodes.Get(0));
    csmaNodesSecondary.Create(nCsmaSecondary);

    CsmaHelper csma;
    csma.SetChannelAttribute("DataRate", StringValue("100Mbps"));
    csma.SetChannelAttribute("Delay", TimeValue(NanoSeconds(6560)));

    NetDeviceContainer csmaDevices;
    csmaDevices = csma.Install(csmaNodes);

    NetDeviceContainer csmaDevicesSecondary;
    csmaDevicesSecondary = csma.Install(csmaNodesSecondary);

    InternetStackHelper stack;
    stack.Install(csmaNodes);
    // For the secondary ones we should also add stacks to the rest of the nodes, not just the first one.
    stack.Install(csmaNodesSecondary.Get(1));

    //std::vector<NetDeviceContainer> devicesList(nCsma);
    //for (uint32_t i = 0; i < devicesList.size(); ++i)
    //{
    //    devicesList[i] = csma.Install(csmaNodes[i]);
    //}
    
    //
    // We've got the "hardware" in place.  Now we need to add IP addresses.
    //
    NS_LOG_INFO("Assign IP Addresses.");
    Ipv4AddressHelper ipv4;
    ipv4.SetBase("192.168.1.0", "255.255.255.0");
    Ipv4InterfaceContainer csmaInterfaces;
    csmaInterfaces = ipv4.Assign(csmaDevices);

    // Assgin a second interface to the server node
    ipv4.SetBase("192.168.2.0", "255.255.255.0");
    Ipv4InterfaceContainer csmaInterfacesSecondary;
    csmaInterfacesSecondary = ipv4.Assign(csmaDevicesSecondary);

    //std::vector<Ipv4InterfaceContainer> csmaInterfacesList(nCsma);

    //for (uint32_t i = 0; i < csmaInterfacesList.size(); ++i)
    //{
    //    csmaInterfacesList[i] = ipv4.Assign(csmaDevices[i]);
    //}

    //NS_LOG_INFO("Create Applications.");

    //
    // Create a BulkSendApplication and install it on node 0
    //
    uint16_t port = 8080; // well-known echo port number

    //BulkSendHelper source("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfaces.GetAddress(1), port));
    // Set the amount of data to send in bytes.  Zero is unlimited.
    
    OnOffHelper clientHelper("ns3::TcpSocketFactory", Address());
    clientHelper.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
    clientHelper.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
    AddressValue remoteAddress (InetSocketAddress(csmaInterfaces.GetAddress(0), port));
    clientHelper.SetAttribute("Remote", remoteAddress);
    clientHelper.SetAttribute("MaxBytes", UintegerValue(250));

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

    //
    // Create a PacketSinkApplication and install it on node 0 with two interfaces
    //
    PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfaces.GetAddress(0), port));
    //PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(Ipv4Address::GetAny(), port));
    //PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(interfaces[0].GetAddress(0), port));
    ApplicationContainer sinkApps = sink.Install(csmaNodes.Get(0));
    sinkApps.Start(Seconds(0.0));
    sinkApps.Stop(Seconds(10.0));


    PacketSinkHelper sinkSecondary("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfacesSecondary.GetAddress(0), port));
    //PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(Ipv4Address::GetAny(), port));
    //PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(interfaces[0].GetAddress(0), port));
    ApplicationContainer sinkAppsSecondary = sinkSecondary.Install(csmaNodesSecondary.Get(0));
    sinkAppsSecondary.Start(Seconds(0.0));
    sinkAppsSecondary.Stop(Seconds(10.0));

    // Add another client to the 192.168.2.0 network with the same characteristics as before.
     OnOffHelper clientHelperSecondary("ns3::TcpSocketFactory", Address());
    clientHelperSecondary.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
    clientHelperSecondary.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
    clientHelperSecondary.SetAttribute("MaxBytes", UintegerValue(250));

    AddressValue remoteAddressSecondary (InetSocketAddress(csmaInterfacesSecondary.GetAddress(0), port));
    clientHelperSecondary.SetAttribute("Remote", remoteAddressSecondary);
    ApplicationContainer clientAppsSecondary = clientHelperSecondary.Install(csmaNodesSecondary.Get(1));
    clientAppsSecondary.Start(Seconds(1.0));
    clientAppsSecondary.Stop(Seconds(10.0));

    Ipv4GlobalRoutingHelper::PopulateRoutingTables();
    
    // configure tracing
    AsciiTraceHelper ascii;
    csma.EnableAsciiAll(ascii.CreateFileStream("two-LANs"));
    csma.EnablePcapAll("two-LANs");

    // Check those PCAPs for conversations to see if they have the correct number of hosts based on the "nCsma" number
    // csma.EnablePcap("two-LANs", csmaDevices.Get(0), true);
    // csma.EnablePcap("two-LANs", csmaDevices.Get(1), true);

    NS_LOG_INFO("Run Simulation.");
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");

    return 0;
}