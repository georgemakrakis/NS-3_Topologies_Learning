check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/EmulatedUdpEchoExample_Copy-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME EmulatedUdpEchoExample_Copy
    SOURCE_FILES model/EmulatedUdpEchoExample_Copy.cc
                 helper/EmulatedUdpEchoExample_Copy-helper.cc
    HEADER_FILES model/EmulatedUdpEchoExample_Copy.h
                 helper/EmulatedUdpEchoExample_Copy-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/EmulatedUdpEchoExample_Copy-test-suite.cc
                 ${examples_as_tests_sources}
)

