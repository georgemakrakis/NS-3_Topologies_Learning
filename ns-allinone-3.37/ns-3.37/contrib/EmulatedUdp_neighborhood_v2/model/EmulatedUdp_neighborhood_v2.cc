// #include "EmulatedUdp_neighborhood_v2.h"

#include "ns3/applications-module.h"
#include "ns3/core-module.h"
#include "ns3/fd-net-device-module.h"
#include "ns3/internet-module.h"
#include "ns3/csma-module.h"
#include <string>

#include <fstream>

using namespace ns3;
using namespace std;

NS_LOG_COMPONENT_DEFINE("EmulatedUdp_neighborhood_v2");

int
main(int argc, char* argv[])
{
    LogComponentEnable ("EmulatedUdp_neighborhood_v2", LOG_LEVEL_ALL);

    std::string deviceName("enx00e04c653c58");
    // std::string deviceName("enx34298f72f07b");
    // std::string deviceName("vpeer1"); // If running inside linux namespaces
    std::string encapMode("Dix");
    bool clientMode = false;
    bool serverMode = false;
    double stopTime = 5;
    uint32_t nNodes = 2;

    //
    // Allow the user to override any of the defaults at run-time, via command-line
    // arguments
    //
    CommandLine cmd(__FILE__);
    cmd.AddValue("client", "client mode", clientMode);
    cmd.AddValue("server", "server mode", serverMode);
    cmd.AddValue("deviceName", "device name", deviceName);
    cmd.AddValue("stopTime", "stop time (seconds)", stopTime);
    cmd.AddValue("encapsulationMode",
                 "encapsulation mode of emu device (\"Dix\" [default] or \"Llc\")",
                 encapMode);
    cmd.AddValue("nNodes", "number of nodes to create (>= 2)", nNodes);

    cmd.Parse(argc, argv);

    GlobalValue::Bind("SimulatorImplementationType", StringValue("ns3::RealtimeSimulatorImpl"));

    GlobalValue::Bind("ChecksumEnabled", BooleanValue(true));

    if (clientMode && serverMode)
    {
        NS_FATAL_ERROR("Error, both client and server options cannot be enabled.");
    }
    //
    // need at least two nodes
    //
    nNodes = nNodes < 2 ? 2 : nNodes;

    //
    // Explicitly create the nodes required by the topology (shown above).
    //
    NS_LOG_INFO("Create nodes.");
    NodeContainer n;
    // n.Create(nNodes);
    n.Create(1);
    
    uint32_t nCsma = 2;
    NodeContainer csmaNodes;
    // We add the previously created node that will be the server also to the batch of CSMA nodes
    csmaNodes.Add(n.Get(0));
    // ..and then we create the rest.
    csmaNodes.Create(nCsma);

    // InternetStackHelper internet;
    // internet.Install(n);

    //
    // Explicitly create the channels required by the topology (shown above).
    //
    NS_LOG_INFO("Create channels.");
    EmuFdNetDeviceHelper emu;
    emu.SetDeviceName(deviceName);
    emu.SetAttribute("EncapsulationMode", StringValue(encapMode));

    NetDeviceContainer d;
    Ipv4AddressHelper ipv4;
    Ipv4InterfaceContainer i;
    ApplicationContainer apps;

    NS_LOG_INFO("Create client nodes.");
    CsmaHelper csma;
    csma.SetChannelAttribute("DataRate", StringValue("100Mbps"));
    csma.SetChannelAttribute("Delay", TimeValue(NanoSeconds(6560)));

    NetDeviceContainer csmaDevices;
    csmaDevices = csma.Install(csmaNodes);

    InternetStackHelper stack;
    stack.Install(csmaNodes);

    Ipv4InterfaceContainer csmaInterfaces;

    ipv4.SetBase("10.1.1.0", "255.255.255.0");
    if (clientMode)
    {
        d = emu.Install(n.Get(0));
        // Note:  incorrect MAC address assignments are one of the confounding
        // aspects of network emulation experiments.  Here, we assume that there
        // will be a server mode taking the first MAC address, so we need to
        // force the MAC address to be one higher (just like IP address below)
        Ptr<FdNetDevice> dev = d.Get(0)->GetObject<FdNetDevice>();
        dev->SetAddress(Mac48Address("00:00:00:00:00:02"));
        NS_LOG_INFO("Assign IP Addresses for client.");
        ipv4.NewAddress(); // burn the 10.1.1.1 address so that 10.1.1.2 is next
        i = ipv4.Assign(d);
    }
    else if (serverMode)
    {
        d = emu.Install(n.Get(0));
        Ptr<FdNetDevice> dev = d.Get(0)->GetObject<FdNetDevice>();
        dev->SetAddress(Mac48Address("00:00:00:00:00:01"));
        NS_LOG_INFO("Assign IP Address to server.");
        ipv4.NewAddress(); // burn the 10.1.1.1 address so that 10.1.1.2 is next
        i = ipv4.Assign(d);

        ipv4.SetBase("192.168.1.0", "255.255.255.0");
        csmaInterfaces = ipv4.Assign(csmaDevices);
    }
    else
    {
        d = emu.Install(n);
        NS_LOG_INFO("Assign IP Addresses.");
        i = ipv4.Assign(d);
    }

    if (serverMode)
    {
        //
        // Create a UdpEchoServer application
        //
        NS_LOG_INFO("Create Server Application (external).");
        UdpEchoServerHelper server(9);
        apps = server.Install(n.Get(0));
        apps.Start(Seconds(1.0));
        apps.Stop(Seconds(stopTime+2));

        Ipv4Address iaddr = i.GetAddress(0,0);
        NS_LOG_INFO("IP address of server (external)");
        NS_LOG_INFO(iaddr);

        NS_LOG_INFO("Create Server Application (internal).");
        UdpEchoServerHelper server_int(10);
        ApplicationContainer apps_int;
        apps_int = server_int.Install(csmaNodes.Get(0));
        apps_int.Start(Seconds(1.0));
        apps_int.Stop(Seconds(stopTime+2));

        iaddr = csmaInterfaces.GetAddress(0,0);
        NS_LOG_INFO("IP address of server (internal)");
        NS_LOG_INFO(iaddr);

        NS_LOG_INFO("Create Client Application.");
        uint32_t MaxPacketSize = 1024;
        Time interPacketInterval = Seconds (0.1);
        uint32_t maxPacketCount = 320;

        UdpClientHelper clientApp (Ipv4Address("192.168.1.1"), 10);
        clientApp.SetAttribute ("MaxPackets", UintegerValue (maxPacketCount));
        clientApp.SetAttribute ("Interval", TimeValue (interPacketInterval));
        clientApp.SetAttribute ("PacketSize", UintegerValue (MaxPacketSize));

        ApplicationContainer clientApps;
        // We start from the i=1 since the first one will be the server
        for (uint32_t i = 1; i < nCsma; ++i)
        {
            clientApps.Add(clientApp.Install(csmaNodes.Get(i)));

            Ipv4Address iaddr = csmaInterfaces.GetAddress(i,0);
            NS_LOG_INFO("IP address of client");
            NS_LOG_INFO(iaddr);
        }
        clientApps.Start(Seconds(2.0));
        clientApps.Stop(Seconds(stopTime));

        // apps = clientApp.Install (clientNodes.Get (0));
        // apps.Start(Seconds(2.0));
        // apps.Stop(Seconds(stopTime));

    }
    else if (clientMode)
    {
        //
        // Create a UdpEchoClient application to send UDP datagrams
        //
        NS_LOG_INFO("Created client applications.");
        uint32_t packetSize = 1024;
        uint32_t maxPacketCount = 20;
        Time interPacketInterval = Seconds(0.1);
        UdpEchoClientHelper client(Ipv4Address("10.1.1.3"), 9);
        client.SetAttribute("MaxPackets", UintegerValue(maxPacketCount));
        client.SetAttribute("Interval", TimeValue(interPacketInterval));
        client.SetAttribute("PacketSize", UintegerValue(packetSize));
        apps = client.Install(n.Get(0));
        apps.Start(Seconds(2.0));
        apps.Stop(Seconds(stopTime));
        string message = "Hello\n";
        client.SetFill(apps.Get(0), message);
    }
    else
    {
        //
        // Create a UdpEchoServer application on node one.
        //
        NS_LOG_INFO("Create Applications.");
        UdpEchoServerHelper server(9);
        apps = server.Install(n.Get(1));
        apps.Start(Seconds(1.0));
        apps.Stop(Seconds(stopTime+2));

        //
        // Create a UdpEchoClient application to send UDP datagrams from node zero to node one.
        //
        uint32_t packetSize = 1024;
        uint32_t maxPacketCount = 20;
        Time interPacketInterval = Seconds(0.1);
        UdpEchoClientHelper client(i.GetAddress(1), 9);
        client.SetAttribute("MaxPackets", UintegerValue(maxPacketCount));
        client.SetAttribute("Interval", TimeValue(interPacketInterval));
        client.SetAttribute("PacketSize", UintegerValue(packetSize));
        apps = client.Install(n.Get(0));
        apps.Start(Seconds(2.0));
        apps.Stop(Seconds(stopTime));
    }

    Ipv4GlobalRoutingHelper::PopulateRoutingTables();

    emu.EnablePcapAll("EmulatedUdp_neighborhood_v2", true);
    emu.EnableAsciiAll("EmulatedUdp_neighborhood_v2.tr");

    csma.EnableAsciiAll("EmulatedUdp_neighborhood_v2_CSMA");
    csma.EnablePcapAll("EmulatedUdp_neighborhood_v2_CSMA");

    //
    // Now, do the actual simulation.
    //
    NS_LOG_INFO("Run Simulation.");
    Simulator::Stop(Seconds(stopTime + 5));
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");
}