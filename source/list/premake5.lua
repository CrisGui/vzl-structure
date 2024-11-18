project "List"
kind "StaticLib"
location "%{wks.location}/source/list"
targetname "list"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/list/**.c",
}
includedirs {
  "%{wks.location}/source/list/**.h",
}
