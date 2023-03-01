file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-internet-apps-default.pdb"
  "../../../build/lib/libns3.37-internet-apps-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libinternet-apps.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
