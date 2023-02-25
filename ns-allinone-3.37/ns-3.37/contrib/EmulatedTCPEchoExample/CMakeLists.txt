check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/EmulatedTCPEchoExample-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME EmulatedTCPEchoExample
    SOURCE_FILES model/EmulatedTCPEchoExample.cc
                 helper/EmulatedTCPEchoExample-helper.cc
    HEADER_FILES model/EmulatedTCPEchoExample.h
                 helper/EmulatedTCPEchoExample-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/EmulatedTCPEchoExample-test-suite.cc
                 ${examples_as_tests_sources}
)

