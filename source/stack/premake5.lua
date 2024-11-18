project "Stack"
kind "StaticLib"
location "%{wks.location}/source/stack"
targetname "stack"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/stack/**.c",
}
includedirs {
  "%{wks.location}/source/stack/**.h",
}
