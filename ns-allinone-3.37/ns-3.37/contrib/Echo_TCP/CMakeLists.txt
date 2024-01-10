check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/Echo_TCP-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME Echo_TCP
    SOURCE_FILES model/Echo_TCP.cc
                 helper/Echo_TCP-helper.cc
    HEADER_FILES model/Echo_TCP.h
                 helper/Echo_TCP-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/Echo_TCP-test-suite.cc
                 ${examples_as_tests_sources}
)

