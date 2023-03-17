check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/tap-TCP-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME tap-TCP
    SOURCE_FILES model/tap-TCP.cc
                 helper/tap-TCP-helper.cc
    HEADER_FILES model/tap-TCP.h
                 helper/tap-TCP-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/tap-TCP-test-suite.cc
                 ${examples_as_tests_sources}
)

