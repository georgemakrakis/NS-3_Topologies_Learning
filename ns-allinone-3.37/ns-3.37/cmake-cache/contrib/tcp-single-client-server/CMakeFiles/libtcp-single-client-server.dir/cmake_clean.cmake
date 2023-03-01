file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-tcp-single-client-server-default.pdb"
  "../../../build/lib/libns3.37-tcp-single-client-server-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libtcp-single-client-server.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
