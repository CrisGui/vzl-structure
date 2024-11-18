project "Map"
kind "StaticLib"
location "%{wks.location}/source/map"
targetname "map"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/map/**.c",
}
includedirs {
  "%{wks.location}/source/map/**.h",
}
