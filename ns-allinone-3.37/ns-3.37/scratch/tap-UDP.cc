/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation;
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

// Network topology
//
// Packets sent to the device "thetap" on the Linux host will be sent to the
// tap bridge on node zero and then emitted onto the ns-3 simulated CSMA
// network.  ARP will be used on the CSMA network to resolve MAC addresses.
// Packets destined for the CSMA device on node zero will be sent to the
// device "thetap" on the linux Host.
//
//  +----------+
//  | external |
//  |  Linux   |
//  |   Host   |
//  |          |
//  | "thetap" |
//  +----------+
//       |           n0            n1            n2            n3
//       |       +--------+    +--------+    +--------+    +--------+
//       +-------|  tap   |    |        |    |        |    |        |
//               | bridge |    |        |    |        |    |        |
//               +--------+    +--------+    +--------+    +--------+
//               |  CSMA  |    |  CSMA  |    |  CSMA  |    |  CSMA  |
//               +--------+    +--------+    +--------+    +--------+
//                   |             |             |             |
//                   |             |             |             |
//                   |             |             |             |
//                   ===========================================
//                                 CSMA LAN 10.1.1
//
// The CSMA device on node zero is:  10.1.1.1
// The CSMA device on node one is:   10.1.1.2
// The CSMA device on node two is:   10.1.1.3
// The CSMA device on node three is: 10.1.1.4
//
// Some simple things to do:
//
// 1) Ping one of the simulated nodes
//
//    ./ns3 run tap-csma&
//    ping 10.1.1.2
//

//#include "tap-UDP.h"

#include "ns3/core-module.h"
#include "ns3/csma-module.h"
#include "ns3/internet-module.h"
#include "ns3/ipv4-global-routing-helper.h"
#include "ns3/network-module.h"
#include "ns3/tap-bridge-module.h"
#include "ns3/wifi-module.h"

#include "ns3/applications-module.h"

#include <fstream>
#include <iostream>

using namespace ns3;

NS_LOG_COMPONENT_DEFINE("TapUdpExample");

int
main(int argc, char* argv[])
{
    std::string mode = "ConfigureLocal";
    std::string tapName = "thetap";

    bool clientMode = false;
    bool serverMode = false;

    CommandLine cmd(__FILE__);
    cmd.AddValue("mode", "Mode setting of TapBridge", mode);
    cmd.AddValue("tapName", "Name of the OS tap device", tapName);
    cmd.AddValue("client", "client mode", clientMode);
    cmd.AddValue("server", "server mode", serverMode);
    cmd.Parse(argc, argv);

    GlobalValue::Bind("SimulatorImplementationType", StringValue("ns3::RealtimeSimulatorImpl"));
    GlobalValue::Bind("ChecksumEnabled", BooleanValue(true));

    NodeContainer nodes;
    nodes.Create(2);

    CsmaHelper csma;
    csma.SetChannelAttribute("DataRate", DataRateValue(5000000));
    csma.SetChannelAttribute("Delay", TimeValue(MilliSeconds(2)));

    NetDeviceContainer devices = csma.Install(nodes);

    InternetStackHelper stack;
    stack.Install(nodes);

    Ipv4AddressHelper addresses;
    addresses.SetBase("10.1.1.0", "255.255.255.0");
    Ipv4InterfaceContainer interfaces = addresses.Assign(devices);

    TapBridgeHelper tapBridge;
    tapBridge.SetAttribute("Mode", StringValue(mode));
    tapBridge.SetAttribute("DeviceName", StringValue(tapName));
    tapBridge.Install(nodes.Get(0), devices.Get(0));
    
    ApplicationContainer apps;
    // We also add UDP server to the second node.
    if (serverMode)
    {
        
        UdpEchoServerHelper server(9);
        apps = server.Install(nodes.Get(1));
        apps.Start(Seconds(1.0));
        apps.Stop(Seconds(70));
    }
    // or client
    else if (clientMode)
    {
        UdpEchoClientHelper client(Ipv4Address("10.1.1.1"), 9);
        // client.SetAttribute("MaxPackets", UintegerValue(maxPacketCount));
        // client.SetAttribute("Interval", TimeValue(interPacketInterval));
        // client.SetAttribute("PacketSize", UintegerValue(packetSize));
        apps = client.Install(nodes.Get(1));
        apps.Start(Seconds(2.0));
        apps.Stop(Seconds(70));
        std::string message = "Hello\n";
        client.SetFill(apps.Get(0), message);
    }


    csma.EnablePcapAll("tap-csma", false);
    Ipv4GlobalRoutingHelper::PopulateRoutingTables();

    Simulator::Stop(Seconds(60.));
    Simulator::Run();
    Simulator::Destroy();
}
