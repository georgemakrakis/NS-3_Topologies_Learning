build_lib_example(
    NAME tcp-single-client-server-example
    SOURCE_FILES tcp-single-client-server-example.cc
    LIBRARIES_TO_LINK ${libtcp-single-client-server}
)

