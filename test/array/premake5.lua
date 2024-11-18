project "TestArray"
kind "ConsoleApp"
location "%{wks.location}/test/array"
targetname "test_array"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/array/**.c",
}
includedirs {
  "%{wks.location}/test/array/**.h",
}
links { "Array" }
