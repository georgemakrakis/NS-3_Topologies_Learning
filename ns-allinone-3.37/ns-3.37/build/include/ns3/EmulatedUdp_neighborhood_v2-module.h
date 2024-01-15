#ifdef NS3_MODULE_COMPILATION 
    error "Do not include ns3 module aggregator headers from other modules these are meant only for end user scripts." 
#endif 
#ifndef NS3_MODULE_EMULATEDUDP_NEIGHBORHOOD_V2
    // Module headers: 
    #include <ns3/EmulatedUdp_neighborhood_v2.h>
    #include <ns3/EmulatedUdp_neighborhood_v2-helper.h>
#endif 