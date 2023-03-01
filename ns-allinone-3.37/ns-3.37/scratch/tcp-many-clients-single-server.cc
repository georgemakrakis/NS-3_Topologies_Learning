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
 *
 */
// Changed the default topology to have a single server and many clients but in one subnet
//     n1--- n0---n2            .
//           |                  .
//           |                  .
//           n3                 .
// - Traffic goes from the n1, n2 and n3 to n0
// - Tracing of queues and packet receptions to file
//   "tcp-many-clients-single-server"
// - pcap traces also generated in the following files
//   "tcp-many-clients-single-server-$n-$i.pcap" where n and i represent node and interface
//   numbers respectively
// http://www.nsnam.org/tutorials.html

//#include "tcp-many-clients-single-server.h"

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

NS_LOG_COMPONENT_DEFINE("tcp-many-clients-single-server");

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

    NodeContainer csmaNodes;
    //csmaNodes.Add(p2pNodes.Get(1));
    csmaNodes.Create(nCsma);

    CsmaHelper csma;
    csma.SetChannelAttribute("DataRate", StringValue("100Mbps"));
    csma.SetChannelAttribute("Delay", TimeValue(NanoSeconds(6560)));

    NetDeviceContainer csmaDevices;
    csmaDevices = csma.Install(csmaNodes);

    InternetStackHelper stack;
    stack.Install(csmaNodes);

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
    // Create a PacketSinkApplication and install it on node 0
    //
    PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(csmaInterfaces.GetAddress(0), port));
    //PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(Ipv4Address::GetAny(), port));
    //PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(interfaces[0].GetAddress(0), port));
    ApplicationContainer sinkApps = sink.Install(csmaNodes.Get(0));
    sinkApps.Start(Seconds(0.0));
    sinkApps.Stop(Seconds(10.0));

    
    // configure tracing
    AsciiTraceHelper ascii;
    csma.EnableAsciiAll(ascii.CreateFileStream("tcp-many-clients-single-server.tr"));
    //csma.EnablePcapAll("tcp-many-clients-single-server");

    // Check those PCAPs for conversations to see if they have the correct number of hosts based on the "nCsma" number
    csma.EnablePcap("tcp-many-clients-single-server-first", csmaDevices.Get(0), true);
    csma.EnablePcap("tcp-many-clients-single-server-second", csmaDevices.Get(1), true);

    NS_LOG_INFO("Run Simulation.");
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");

    return 0;
}
