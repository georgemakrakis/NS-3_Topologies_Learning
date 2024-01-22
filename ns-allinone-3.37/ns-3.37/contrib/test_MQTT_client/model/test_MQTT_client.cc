// #include "test_MQTT_client.h"

#include "ns3/core-module.h"
#include "ns3/node.h"
#include "ns3/network-module.h"
#include "ns3/applications-module.h"
#include "ns3/packet-socket-helper.h"
#include "ns3/packet-socket-address.h"
#include "ns3/internet-module.h"

#include "ns3/point-to-point-module.h"
#include "ns3/csma-module.h"
#include "ns3/packet.h"
#include "ns3/header.h"

#include "ns3/mqtt.h"

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>


using namespace ns3;

NS_LOG_COMPONENT_DEFINE("test_MQTT_client");

/**
 * @brief The function that would be called whenever a PUBLISH is received.
 *
 * @note This function is not used in this example.
 */
void publish_callback(void** unused, struct mqtt_response_publish *published);

/**
 * @brief The client's refresher. This function triggers back-end routines to
 *        handle ingress/egress traffic to the broker.
 *
 * @note All this function needs to do is call \ref __mqtt_recv and
 *       \ref __mqtt_send every so often. I've picked 100 ms meaning that
 *       client ingress/egress traffic will be handled every 100 ms.
 */
void* client_refresher(void* client);

/**
 * @brief Safelty closes the \p sockfd and cancels the \p client_daemon before \c exit.
 */
void exit_example(int status, int sockfd, pthread_t *client_daemon);

int main() {

    LogComponentEnable("test_MQTT_client", LOG_LEVEL_ALL);

    const char* addr;
    // const char* port;
    const char* topic;

    addr = "192.168.1.1";
    // port = "1883";
    int port = 1883;
      
    topic = "datetime";

    // This is the original version from the examples of MQTT-C,
    // can we substitute it with the NS-3 socket?
    /* open the non-blocking TCP socket (connecting to the broker) */
    // int sockfd = open_nb_socket(addr, port);

    NodeContainer nodes;
    nodes.Create(2);

    CsmaHelper csma;
    csma.SetChannelAttribute("DataRate", StringValue("100Mbps"));
    csma.SetChannelAttribute("Delay", TimeValue(NanoSeconds(6560)));

    NetDeviceContainer devices;
    // devices = pointToPoint.Install(nodes);
    devices = csma.Install(nodes);

    // Install the internet stack on the nodes
    InternetStackHelper stack;
    stack.Install(nodes);

    // Assign IP addresses
    Ipv4AddressHelper address;
    address.SetBase("192.168.1.0", "255.255.255.0");
    Ipv4InterfaceContainer interfaces = address.Assign(devices);

    TypeId tid_client = TypeId::LookupByName("ns3::TcpSocketFactory");
    Ptr<Socket> clientSocket = Socket::CreateSocket(nodes.Get(1), tid_client);
    InetSocketAddress remote = InetSocketAddress(addr, port);

    // TODO: we cannot get a file descriptor from the NS-3 environment, so the following
    // is invalid.
    int sockfd = 0;

    if (sockfd == -1) {
        perror("Failed to open socket: ");
        exit_example(EXIT_FAILURE, sockfd, NULL);
    }

    /* setup a client */
    struct mqtt_client client;
    uint8_t sendbuf[2048]; /* sendbuf should be large enough to hold multiple whole mqtt messages */
    uint8_t recvbuf[1024]; /* recvbuf should be large enough any whole mqtt message expected to be received */
    mqtt_init(&client, sockfd, sendbuf, sizeof(sendbuf), recvbuf, sizeof(recvbuf), publish_callback);

    // Run simulation
    NS_LOG_INFO("Run Simulation.");
    Simulator::Stop(Seconds(10));
    Simulator::Run();
    Simulator::Destroy();
    NS_LOG_INFO("Done.");

    return 0;
}

void exit_example(int status, int sockfd, pthread_t *client_daemon)
{
    if (sockfd != -1) close(sockfd);
    if (client_daemon != NULL) pthread_cancel(*client_daemon);
    exit(status);
}



void publish_callback(void** unused, struct mqtt_response_publish *published)
{
    /* not used in this example */
}

void* client_refresher(void* client)
{
    // while(1)
    // {
    //     mqtt_sync((struct mqtt_client*) client);
    //     usleep(100000U);
    // }
    return NULL;
}
