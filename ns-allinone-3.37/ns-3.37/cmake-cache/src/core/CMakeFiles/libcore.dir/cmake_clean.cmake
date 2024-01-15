file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-core-default.pdb"
  "../../../build/lib/libns3.37-core-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libcore.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
