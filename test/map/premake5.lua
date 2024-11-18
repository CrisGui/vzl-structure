project "TestMap"
kind "ConsoleApp"
location "%{wks.location}/test/map"
targetname "test_map"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/map/**.c",
}
includedirs {
  "%{wks.location}/test/map/**.h",
}
links { "Map" }
