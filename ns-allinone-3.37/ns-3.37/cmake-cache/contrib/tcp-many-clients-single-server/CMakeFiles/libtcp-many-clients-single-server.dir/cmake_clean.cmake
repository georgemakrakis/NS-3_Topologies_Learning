file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-tcp-many-clients-single-server-default.pdb"
  "../../../build/lib/libns3.37-tcp-many-clients-single-server-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libtcp-many-clients-single-server.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
