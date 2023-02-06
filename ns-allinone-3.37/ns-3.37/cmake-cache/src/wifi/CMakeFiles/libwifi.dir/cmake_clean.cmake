file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-wifi-default.pdb"
  "../../../build/lib/libns3.37-wifi-default.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libwifi.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
