check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/neighborhood_topology_v2-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME neighborhood_topology_v2
    SOURCE_FILES model/neighborhood_topology_v2.cc
                 helper/neighborhood_topology_v2-helper.cc
    HEADER_FILES model/neighborhood_topology_v2.h
                 helper/neighborhood_topology_v2-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/neighborhood_topology_v2-test-suite.cc
                 ${examples_as_tests_sources}
)

