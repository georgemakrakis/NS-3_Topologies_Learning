file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-visualizer-default.pdb"
  "../../../build/lib/libns3.37-visualizer-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libvisualizer.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
