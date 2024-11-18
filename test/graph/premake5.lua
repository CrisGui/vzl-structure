project "TestGraph"
kind "ConsoleApp"
location "%{wks.location}/test/graph"
targetname "test_graph"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/graph/**.c",
}
includedirs {
  "%{wks.location}/test/graph/**.h",
}
links { "Graph" }
