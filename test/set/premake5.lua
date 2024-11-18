project "TestSet"
kind "ConsoleApp"
location "%{wks.location}/test/set"
targetname "test_set"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/set/**.c",
}
includedirs {
  "%{wks.location}/test/set/**.h",
}
links { "Set" }
