#ifdef NS3_MODULE_COMPILATION 
    error "Do not include ns3 module aggregator headers from other modules these are meant only for end user scripts." 
#endif 
#ifndef NS3_MODULE_TCP_SINGLE_CLIENT_SERVER
    // Module headers: 
    #include <ns3/tcp-single-client-server.h>
    #include <ns3/tcp-single-client-server-helper.h>
#endif 