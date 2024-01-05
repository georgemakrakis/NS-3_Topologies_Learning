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

// The number of bytes to send in this simulation.
static const uint32_t totalTxBytes = 200;
static uint32_t currentTxBytes = 0;
// Perform series of 1040 byte writes (this is a multiple of 26 since
// we want to detect data splicing in the output stream)
static const uint32_t writeSize = 1040;
uint8_t data_S[writeSize];

void WriteUntilBufferFull (Ptr<Socket> localSocket, uint32_t txSpace)
{
    while (currentTxBytes < totalTxBytes && localSocket->GetTxAvailable () > 0) 
    {
        uint32_t left = totalTxBytes - currentTxBytes;
        uint32_t dataOffset = currentTxBytes % writeSize;
        uint32_t toWrite = writeSize - dataOffset;
        toWrite = std::min (toWrite, left);
        toWrite = std::min (toWrite, localSocket->GetTxAvailable ());
        int amountSent = localSocket->Send (&data_S[dataOffset], toWrite, 0);
        if(amountSent < 0)
        {
            // we will be called again when new tx space becomes available.
            return;
        }
        currentTxBytes += amountSent;
    }
    localSocket->Close ();
}

void StartFlow (Ptr<Socket> localSocket,
                 Ipv4Address servAddress,
                uint16_t servPort)
{
    NS_LOG_LOGIC ("Starting flow at time " <<  Simulator::Now ().GetSeconds ());
    localSocket->Connect (InetSocketAddress (servAddress, servPort)); //connect
 
    // tell the tcp implementation to call WriteUntilBufferFull again
    // if we blocked and new tx buffer space becomes available
    localSocket->SetSendCallback (MakeCallback (&WriteUntilBufferFull));
    WriteUntilBufferFull (localSocket, localSocket->GetTxAvailable ());
}

int main(int argc, char* argv[])
{
    LogComponentEnable ("EmulatedTCPEchoExample", LOG_LEVEL_ALL);

    // TcpHeader new_tcpHeader;
    // new_tcpHeader.SetSequenceNumber(SequenceNumber32(5000));
    // Config::Set ("ns3::TcpHeader", new_tcpHeader);

    std::string deviceName("enx00e04c653c58");
    // std::string deviceName("vpeer1"); // If running inside linux namespaces
    std::string encapMode("Dix");
    bool clientMode = false;
    double stopTime = 10;
    uint32_t nNodes = 2;

    uint32_t packetSize = 1400; // bytes

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

    Config::SetDefault("ns3::TcpSocket::SegmentSize", UintegerValue(packetSize));

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

    // ipv4.SetBase("10.1.1.0", "255.255.255.0");
    ipv4.SetBase("192.168.99.0", "255.255.255.0");
   
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
    uint32_t maxPacketCount = 20;
    Time interPacketInterval = Seconds(0.1);

    if(clientMode)
    {
        // TcpHeader new_tcpHeader;
        // new_tcpHeader.SetAckNumber(SequenceNumber32(5000));
        // Config::SetDefault ("ns3::TcpHeader", TcpHeader(new_tcpHeader));

        // BulkSendHelper source ("ns3::TcpSocketFactory",
        //                       (InetSocketAddress(Ipv4Address("10.1.1.3"), 80)));
        // // Set the amount of data to send in bytes.  Zero is unlimited.
        // uint32_t maxBytes = 20;
        // source.SetAttribute ("MaxBytes", UintegerValue (maxBytes));
        // ApplicationContainer sourceApps = source.Install (n.Get (0));
        // sourceApps.Start (Seconds (1.0));
        // sourceApps.Stop (Seconds (stopTime));

        // OnOffHelper client("ns3::TcpSocketFactory", Address());
        // client.SetAttribute("OnTime", StringValue("ns3::ConstantRandomVariable[Constant=1]"));
        // client.SetAttribute("OffTime", StringValue("ns3::ConstantRandomVariable[Constant=0]"));
        // // client.SetAttribute("MaxPackets", UintegerValue(maxPacketCount));
        // // client.SetAttribute("Interval", TimeValue(interPacketInterval));
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
        //string message = "Hello\n";
        //client.SetFill(apps.Get(0), message);

        // initialize the tx buffer.
        for(uint32_t i = 0; i < writeSize; ++i)
        {
            char m = toascii (97 + i % 26);
            data_S[i] = m;
        }

        // TypeId tid = TypeId::LookupByName("ns3::TcpNewReno");
        // Config::Set("/NodeList/*/$ns3::TcpL4Protocol/SocketType", TypeIdValue(tid));
        Ptr<Socket> localSocket = Socket::CreateSocket(n.Get(0), TcpSocketFactory::GetTypeId());
        localSocket->Bind();
        // Simulator::ScheduleNow (&StartFlow, localSocket, Ipv4Address("10.1.1.3"), 80);
        Simulator::ScheduleNow (&StartFlow, localSocket, Ipv4Address("192.168.99.4"), 80);
        // localSocket.Connect(remoteAddress);
        // Ptr<Packet> packet = Create<Packet> (1024);
        // TcpHeader TcpHeader;
        // packet->AddHeader(udTcpHeaderpHeader);
        // localSocket.Send(packet)
    }
    else
    {
        // Address sinkLocalAddress(InetSocketAddress(Ipv4Address("10.1.1.2"), 80));
        Address sinkLocalAddress(InetSocketAddress(Ipv4Address("192.168.99.2"), 80));
        PacketSinkHelper sinkHelper("ns3::TcpSocketFactory", sinkLocalAddress);
        ApplicationContainer sinkApp = sinkHelper.Install(n.Get(0));
        sinkApp.Start(Seconds(2.0));
        sinkApp.Stop(Seconds(stopTime));
    }
   

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
