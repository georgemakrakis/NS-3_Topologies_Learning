check_include_file_cxx(stdint.h HAVE_STDINT_H)
if(HAVE_STDINT_H)
    add_definitions(-DHAVE_STDINT_H)
endif()

set(examples_as_tests_sources)
if(${ENABLE_EXAMPLES})
    set(examples_as_tests_sources
        #test/EmulatedTCP_neighborhood-examples-test-suite.cc
        )
endif()

build_lib(
    LIBNAME EmulatedTCP_neighborhood
    SOURCE_FILES model/EmulatedTCP_neighborhood.cc
                 helper/EmulatedTCP_neighborhood-helper.cc
    HEADER_FILES model/EmulatedTCP_neighborhood.h
                 helper/EmulatedTCP_neighborhood-helper.h
    LIBRARIES_TO_LINK ${libcore}
    TEST_SOURCES test/EmulatedTCP_neighborhood-test-suite.cc
                 ${examples_as_tests_sources}
)

