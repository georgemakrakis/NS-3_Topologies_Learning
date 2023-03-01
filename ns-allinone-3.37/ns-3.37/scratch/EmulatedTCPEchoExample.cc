//#include "EmulatedTCPEchoExample.h"

#include "ns3/applications-module.h"
#include "ns3/core-module.h"
#include "ns3/fd-net-device-module.h"
#include "ns3/internet-module.h"
#include <string>
#include <ns3/sequence-number.h>

#include <fstream>

using namespace ns3;
using namespace std;

NS_LOG_COMPONENT_DEFINE("EmulatedTCPEchoExample");

int
main(int argc, char* argv[])
{
    LogComponentEnable ("EmulatedTCPEchoExample", LOG_LEVEL_ALL);

    // TcpHeader new_tcpHeader;
    // new_tcpHeader.SetSequenceNumber(SequenceNumber32(5000));
    // Config::Set ("ns3::TcpHeader", new_tcpHeader);

    // std::string deviceName("virt1");
    std::string deviceName("vpeer1"); // If running inside linux namespaces
    std::string encapMode("Dix");
    bool clientMode = false;
    double stopTime = 10;
    uint32_t nNodes = 2;

    //
    // Allow the user to override any of the defaults at run-time, via command-line
    // arguments
    //
    CommandLine cmd(__FILE__);
    cmd.AddValue("client", "client mode", clientMode);
    cmd.AddValue("deviceName", "device name", deviceName);
    cmd.AddValue("stopTime", "stop time (seconds)", stopTime);
    cmd.AddValue("encapsulationMode",
                 "encapsulation mode of emu device (\"Dix\" [default] or \"Llc\")",
                 encapMode);
    cmd.AddValue("nNodes", "number of nodes to create (>= 2)", nNodes);

    cmd.Parse(argc, argv);

    GlobalValue::Bind("SimulatorImplementationType", StringValue("ns3::RealtimeSimulatorImpl"));

    GlobalValue::Bind("ChecksumEnabled", BooleanValue(true));

    //
    // need at least two nodes
    //
    nNodes = nNodes < 2 ? 2 : nNodes;

    //
    // Explicitly create the nodes required by the topology (shown above).
    //
    NS_LOG_INFO("Create nodes.");
    NodeContainer n;
    n.Create(nNodes);

    InternetStackHelper internet;
    internet.Install(n);

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

    ipv4.SetBase("10.1.1.0", "255.255.255.0");
   
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


    //
    // Create a TcpEchoClient application to send Tcp packets
    //
    NS_LOG_INFO("Created client applications.");
    uint32_t packetSize = 1024;
    uint32_t maxPacketCount = 20;
    Time interPacketInterval = Seconds(0.1);
    
    // UdpEchoClientHelper client(Ipv4Address("10.1.1.3"), 9);
    // client.SetAttribute("MaxPackets", UintegerValue(maxPacketCount));
    // client.SetAttribute("Interval", TimeValue(interPacketInterval));
    // client.SetAttribute("PacketSize", UintegerValue(packetSize));
    
    // TcpHeader new_tcpHeader;
    // new_tcpHeader.SetAckNumber(SequenceNumber32(5000));
    // Config::SetDefault ("ns3::TcpHeader", TcpHeader(new_tcpHeader));

    BulkSendHelper source ("ns3::TcpSocketFactory",
                          (InetSocketAddress(Ipv4Address("10.1.1.3"), 80)));
    // Set the amount of data to send in bytes.  Zero is unlimited.
    uint32_t maxBytes = 20;
    source.SetAttribute ("MaxBytes", UintegerValue (maxBytes));
    ApplicationContainer sourceApps = source.Install (n.Get (0));
    sourceApps.Start (Seconds (1.0));
    sourceApps.Stop (Seconds (stopTime));

    // OnOffHelper client("ns3::TcpSocketFactory", Address());
    // client.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
    // client.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
    // // client.SetAttribute("MaxPackets", UintegerValue(maxPacketCount));
    // //client.SetAttribute("Interval", TimeValue(interPacketInterval));
    // std::string dataRate("5kb/s");
    // client.SetAttribute("DataRate", DataRateValue(dataRate));
    // client.SetAttribute("PacketSize", UintegerValue(packetSize));
    // AddressValue remoteAddress (InetSocketAddress(Ipv4Address("10.1.1.3"), 80));
    // client.SetAttribute("Remote", remoteAddress);


    // apps = client.Install(n.Get(0));
    // // int64_t streamIndex = 54879;
    // // client.AssignStreams(n.Get(0), streamIndex);
    // apps.Start(Seconds(2.0));
    // apps.Stop(Seconds(stopTime));
    // string message = "Hello\n";
    // client.SetFill(apps.Get(0), message);
   

    // Ipv4GlobalRoutingHelper::PopulateRoutingTables();

    emu.EnablePcapAll("fd-emu-TCP-echo-COPY", true);
    emu.EnableAsciiAll("fd-emu-TCP-echo-COPY.tr");

    //
    // Now, do the actual simulation.
    //
    NS_LOG_INFO("Run Simulation.");
    Simulator::Stop(Seconds(stopTime + 2));
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");
}
