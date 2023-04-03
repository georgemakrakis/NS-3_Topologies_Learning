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
//       |           n0            n1    
//       |       +--------+    +--------+ 
//       +-------|  tap   |    |        | 
//               | bridge |    |        | 
//               +--------+    +--------+  
//               |  CSMA  |    |  CSMA  |  
//               +--------+    +--------+  
//                   |             |       
//                   |             |       
//                   |             |       
//                   ======================
//                       CSMA LAN 10.1.1
//
// The CSMA device on node zero is:  10.1.1.1
// The CSMA device on node one is:   10.1.1.2
//
// Some simple things to do:
//
// 1) Use netcat with UPD to receive or send data on one of the simulated nodes
//
//  * When server: nc -u 10.1.1.2 9
//  * When client: nc -u -v -l 10.1.1.1 9
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

    LogComponentEnable ("TapUdpExample", LOG_LEVEL_ALL);
    // std::string mode = "ConfigureLocal";
    std::string mode = "UseBridge";
    // std::string tapName = "thetap";
    std::string tapName = "mytap";

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
    // csma.SetChannelAttribute("DataRate", DataRateValue(5000000));
    csma.SetChannelAttribute("DataRate", DataRateValue(1500));
    csma.SetChannelAttribute("Delay", TimeValue(MilliSeconds(2)));

    NetDeviceContainer devices = csma.Install(nodes);

    InternetStackHelper stack;
    stack.Install(nodes);

    Ipv4AddressHelper addresses;
    // addresses.SetBase("192.168.56.0", "255.255.255.0");
    addresses.SetBase("10.1.1.0", "255.255.255.0");

    // addresses.NewAddress(); // burn the 192.168.56.1 address so that 192.168.56.2 is next
    
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
        // UdpEchoServerHelper server(Ipv4Address("192.168.56.3"), 9);
        apps = server.Install(nodes.Get(1));
        apps.Start(Seconds(1.0));
        apps.Stop(Seconds(60));

        std::pair<ns3::Ptr<ns3::Ipv4>, unsigned int> ipv4 = interfaces.Get(1);
        Ipv4Address iaddr = interfaces.GetAddress (1,0);
        NS_LOG_INFO ("IP Addresses of server");
        NS_LOG_INFO (iaddr);
    }
    // or client
    else if (clientMode)
    {
        // UdpEchoClientHelper client(Ipv4Address("192.168.56.2"), 9);
        UdpEchoClientHelper client(Ipv4Address("10.1.1.1"), 9);
        // client.SetAttribute("MaxPackets", UintegerValue(maxPacketCount));
        // client.SetAttribute("Interval", TimeValue(interPacketInterval));
        // client.SetAttribute("PacketSize", UintegerValue(packetSize));
        apps = client.Install(nodes.Get(1));
        apps.Start(Seconds(5.0));
        apps.Stop(Seconds(60));
        std::string message = "Hello\n";
        client.SetFill(apps.Get(0), message);
    }


    csma.EnablePcapAll("tap-UDP", false);
    Ipv4GlobalRoutingHelper::PopulateRoutingTables();

    Simulator::Stop(Seconds(62));
    Simulator::Run();
    Simulator::Destroy();
}
