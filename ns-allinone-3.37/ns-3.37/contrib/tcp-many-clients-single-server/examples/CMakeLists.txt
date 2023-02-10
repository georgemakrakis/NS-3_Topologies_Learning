build_lib_example(
    NAME tcp-many-clients-single-server-example
    SOURCE_FILES tcp-many-clients-single-server-example.cc
    LIBRARIES_TO_LINK ${libtcp-many-clients-single-server}
)

