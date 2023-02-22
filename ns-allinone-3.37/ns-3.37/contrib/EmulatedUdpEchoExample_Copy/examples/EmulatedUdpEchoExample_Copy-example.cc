#include "ns3/core-module.h"
#include "ns3/EmulatedUdpEchoExample_Copy-helper.h"

using namespace ns3;

int
main(int argc, char* argv[])
{
    bool verbose = true;

    CommandLine cmd(__FILE__);
    cmd.AddValue("verbose", "Tell application to log if true", verbose);

    cmd.Parse(argc, argv);

    /* ... */

    Simulator::Run();
    Simulator::Destroy();
    return 0;
}
