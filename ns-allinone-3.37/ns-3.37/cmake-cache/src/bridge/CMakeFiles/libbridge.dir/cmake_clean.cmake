file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-bridge-default.pdb"
  "../../../build/lib/libns3.37-bridge-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libbridge.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
