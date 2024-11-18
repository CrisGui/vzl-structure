project "TestQueue"
kind "ConsoleApp"
location "%{wks.location}/test/queue"
targetname "test_queue"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/queue/**.c",
}
includedirs {
  "%{wks.location}/test/queue/**.h",
}
links { "Queue" }
