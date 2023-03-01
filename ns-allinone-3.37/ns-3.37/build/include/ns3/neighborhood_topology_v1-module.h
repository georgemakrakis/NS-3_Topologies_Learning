#ifdef NS3_MODULE_COMPILATION 
    error "Do not include ns3 module aggregator headers from other modules these are meant only for end user scripts." 
#endif 
#ifndef NS3_MODULE_NEIGHBORHOOD_TOPOLOGY_V1
    // Module headers: 
    #include <ns3/neighborhood_topology_v1.h>
    #include <ns3/neighborhood_topology_v1-helper.h>
#endif 