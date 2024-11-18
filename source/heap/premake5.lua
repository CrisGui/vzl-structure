project "Heap"
kind "StaticLib"
location "%{wks.location}/source/heap"
targetname "heap"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/heap/**.c",
}
includedirs {
  "%{wks.location}/source/heap/**.h",
}
