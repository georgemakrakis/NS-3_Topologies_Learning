#ifdef NS3_MODULE_COMPILATION 
    error "Do not include ns3 module aggregator headers from other modules these are meant only for end user scripts." 
#endif 
#ifndef NS3_MODULE_TWO_LANS
    // Module headers: 
    #include <ns3/two-LANs.h>
    #include <ns3/two-LANs-helper.h>
#endif 