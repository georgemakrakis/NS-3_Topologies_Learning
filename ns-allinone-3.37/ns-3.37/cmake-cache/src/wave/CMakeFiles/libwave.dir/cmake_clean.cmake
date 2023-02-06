file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-wave-default.pdb"
  "../../../build/lib/libns3.37-wave-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libwave.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
