check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/test_MQTT_client-examples-test-suite.cc
        )
endif()

set(source_files
    model/test_MQTT_client.cc
    #model/mqtt.c
    helper/test_MQTT_client-helper.cc
)

set(header_files
    model/test_MQTT_client.h
    model/mqtt.h
    helper/test_MQTT_client-helper.h
)

set(mqtt_lib
    #model/mqtt.c.o
    /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/test_MQTT_client/model/mqtt_pal.c.o
    /home/george/workspace/ns-allinone-3.37/ns-3.37/contrib/test_MQTT_client/model/mqtt.c.o
)

build_lib(
    LIBNAME test_MQTT_client
    SOURCE_FILES ${source_files}
    HEADER_FILES ${header_files}
    LIBRARIES_TO_LINK 
                 ${libcore}
                 ${mqtt_lib}
    TEST_SOURCES test/test_MQTT_client-test-suite.cc
                 ${examples_as_tests_sources}
)

