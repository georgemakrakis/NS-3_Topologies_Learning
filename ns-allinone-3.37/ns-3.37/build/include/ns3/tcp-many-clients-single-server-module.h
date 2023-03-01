#ifdef NS3_MODULE_COMPILATION 
    error "Do not include ns3 module aggregator headers from other modules these are meant only for end user scripts." 
#endif 
#ifndef NS3_MODULE_TCP_MANY_CLIENTS_SINGLE_SERVER
    // Module headers: 
    #include <ns3/tcp-many-clients-single-server.h>
    #include <ns3/tcp-many-clients-single-server-helper.h>
#endif 