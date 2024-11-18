project "TestList"
kind "ConsoleApp"
location "%{wks.location}/test/list"
targetname "test_array"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/list/**.c",
}
includedirs {
  "%{wks.location}/test/list/**.h",
}
links { "List" }
