check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/two-LANs-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME two-LANs
    SOURCE_FILES model/two-LANs.cc
                 helper/two-LANs-helper.cc
    HEADER_FILES model/two-LANs.h
                 helper/two-LANs-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/two-LANs-test-suite.cc
                 ${examples_as_tests_sources}
)

