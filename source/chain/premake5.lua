project "Chain"
kind "StaticLib"
location "%{wks.location}/source/chain"
targetname "chain"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/chain/**.c",
}
includedirs {
  "%{wks.location}/source/chain/**.h",
}
