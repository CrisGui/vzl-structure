project "Set"
kind "StaticLib"
location "%{wks.location}/source/set"
targetname "set"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/set/**.c",
}
includedirs {
  "%{wks.location}/source/set/**.h",
}
