#ifdef NS3_MODULE_COMPILATION 
    error "Do not include ns3 module aggregator headers from other modules these are meant only for end user scripts." 
#endif 
#ifndef NS3_MODULE_EMULATEDTCP_NEIGHBORHOOD
    // Module headers: 
    #include <ns3/EmulatedTCP_neighborhood.h>
    #include <ns3/EmulatedTCP_neighborhood-helper.h>
#endif 