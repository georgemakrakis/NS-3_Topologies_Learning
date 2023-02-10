check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/tcp-single-client-server-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME tcp-single-client-server
    SOURCE_FILES model/tcp-single-client-server.cc
                 helper/tcp-single-client-server-helper.cc
    HEADER_FILES model/tcp-single-client-server.h
                 helper/tcp-single-client-server-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/tcp-single-client-server-test-suite.cc
                 ${examples_as_tests_sources}
)

