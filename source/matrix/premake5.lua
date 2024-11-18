project "Matrix"
kind "StaticLib"
location "%{wks.location}/source/matrix"
targetname "matrix"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/matrix/**.c",
}
includedirs {
  "%{wks.location}/source/matrix/**.h",
}
