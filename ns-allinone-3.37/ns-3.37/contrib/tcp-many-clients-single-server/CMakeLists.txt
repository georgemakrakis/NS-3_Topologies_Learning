check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/tcp-many-clients-single-server-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME tcp-many-clients-single-server
    SOURCE_FILES model/tcp-many-clients-single-server.cc
                 helper/tcp-many-clients-single-server-helper.cc
    HEADER_FILES model/tcp-many-clients-single-server.h
                 helper/tcp-many-clients-single-server-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/tcp-many-clients-single-server-test-suite.cc
                 ${examples_as_tests_sources}
)

