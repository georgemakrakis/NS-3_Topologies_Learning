check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/tap-UDP-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME tap-UDP
    SOURCE_FILES model/tap-UDP.cc
                 helper/tap-UDP-helper.cc
    HEADER_FILES model/tap-UDP.h
                 helper/tap-UDP-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/tap-UDP-test-suite.cc
                 ${examples_as_tests_sources}
)

