project "Queue"
kind "StaticLib"
location "%{wks.location}/source/queue"
targetname "queue"
targetdir "%{wks.location}/binary/%{cfg.buildcfg}"
objdir "%{wks.location}/build/%{cfg.buildcfg}"
files {
  "%{wks.location}/source/queue/**.c",
}
includedirs {
  "%{wks.location}/source/queue/**.h",
}
