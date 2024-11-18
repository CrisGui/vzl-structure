project "Graph"
kind "StaticLib"
location "%{wks.location}/source/graph"
targetname "graph"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/graph/**.c",
}
includedirs {
  "%{wks.location}/source/graph/**.h",
}
