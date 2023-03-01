#ifdef NS3_MODULE_COMPILATION 
    error "Do not include ns3 module aggregator headers from other modules these are meant only for end user scripts." 
#endif 
#ifndef NS3_MODULE_EMULATEDTCPECHOEXAMPLE
    // Module headers: 
    #include <ns3/EmulatedTCPEchoExample.h>
    #include <ns3/EmulatedTCPEchoExample-helper.h>
#endif 