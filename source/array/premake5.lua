project "Array"
kind "StaticLib"
location "%{wks.location}/source/array"
targetname "array"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/array/**.c",
}
includedirs {
  "%{wks.location}/source/array/**.h",
}
