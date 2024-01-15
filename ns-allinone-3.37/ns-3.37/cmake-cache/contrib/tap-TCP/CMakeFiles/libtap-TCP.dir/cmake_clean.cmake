file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-tap-TCP-default.pdb"
  "../../../build/lib/libns3.37-tap-TCP-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libtap-TCP.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
