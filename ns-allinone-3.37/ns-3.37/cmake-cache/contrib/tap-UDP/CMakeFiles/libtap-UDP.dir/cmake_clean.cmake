file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-tap-UDP-default.pdb"
  "../../../build/lib/libns3.37-tap-UDP-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libtap-UDP.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
