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
// Changed the default topology to have a single server and client
/*
       n1---n0
*/
// - Traffic goes from the n1 to n0
// - Tracing of queues and packet receptions to file
//   "tcp-single-client-server.tr"
// - pcap traces also generated in the following files
//   "tcp-single-client-server-$n-$i.pcap" where n and i represent node and interface
//   numbers respectively
// http://www.nsnam.org/tutorials.html

//#include "tcp-single-single-server.h"

#include "ns3/applications-module.h"
#include "ns3/core-module.h"
#include "ns3/internet-module.h"
#include "ns3/ipv4-global-routing-helper.h"
#include "ns3/network-module.h"
#include "ns3/point-to-point-module.h"

#include <cassert>
#include <fstream>
#include <iostream>
#include <string>

using namespace ns3;

NS_LOG_COMPONENT_DEFINE("TcpSingleClientServer");

int
main(int argc, char* argv[])
{
    // Users may find it convenient to turn on explicit debugging
    // for selected modules; the below lines suggest how to do this

    // LogComponentEnable ("TcpServer", LOG_LEVEL_INFO);
    // LogComponentEnable ("TcpL4Protocol", LOG_LEVEL_ALL);
    // LogComponentEnable ("TcpSocketImpl", LOG_LEVEL_ALL);
    // LogComponentEnable ("PacketSink", LOG_LEVEL_ALL);

    // Set up some default values for the simulation.
    PointToPointHelper p2p;
    p2p.SetDeviceAttribute ("DataRate", StringValue ("5Kb/s"));
    p2p.SetChannelAttribute ("Delay", StringValue ("5ms"));
    uint32_t N = 1;

    // Commneted out the override of any the defaults and the above
    // Config::SetDefault()s at run-time, via command-line arguments
    //CommandLine cmd(__FILE__);
    //cmd.AddValue("nNodes", "Number of nodes to place in the star", N);
    //cmd.Parse(argc, argv);

    // Here, we will create the nodes.
    //NS_LOG_INFO("Create nodes.");
    NodeContainer serverNode;
    NodeContainer clientNodes;
    serverNode.Create(1);
    clientNodes.Create(N);
    NodeContainer allNodes = NodeContainer(serverNode, clientNodes);

    NetDeviceContainer devices;
    devices = p2p.Install(allNodes);

    //
    // Install the internet stack on the nodes
    //
    InternetStackHelper internet;
    internet.Install(allNodes);

    //
    // We've got the "hardware" in place.  Now we need to add IP addresses.
    //
    NS_LOG_INFO("Assign IP Addresses.");
    Ipv4AddressHelper ipv4;
    ipv4.SetBase("192.168.1.0", "255.255.255.0");
    Ipv4InterfaceContainer i = ipv4.Assign(devices);

    //NS_LOG_INFO("Create Applications.");

    //
    // Create a BulkSendApplication and install it on node 0
    //
    uint16_t port = 8080; // well-known echo port number

    BulkSendHelper source("ns3::TcpSocketFactory", InetSocketAddress(i.GetAddress(1), port));
    // Set the amount of data to send in bytes.  Zero is unlimited.
    source.SetAttribute("MaxBytes", UintegerValue(250));
    ApplicationContainer sourceApps = source.Install(allNodes.Get(0));
    sourceApps.Start(Seconds(0.0));
    sourceApps.Stop(Seconds(10.0));

    //
    // Create a PacketSinkApplication and install it on node 1
    //
    PacketSinkHelper sink("ns3::TcpSocketFactory", InetSocketAddress(Ipv4Address::GetAny(), port));
    ApplicationContainer sinkApps = sink.Install(allNodes.Get(1));
    sinkApps.Start(Seconds(0.0));
    sinkApps.Stop(Seconds(10.0));

    // configure tracing
    AsciiTraceHelper ascii;
    p2p.EnableAsciiAll(ascii.CreateFileStream("tcp-single-client-server.tr"));
    p2p.EnablePcapAll("tcp-single-client-server");

    NS_LOG_INFO("Run Simulation.");
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");

    return 0;
}
