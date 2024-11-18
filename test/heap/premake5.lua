project "TestHeap"
kind "ConsoleApp"
location "%{wks.location}/test/heap"
targetname "test_heap"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/heap/**.c",
}
includedirs {
  "%{wks.location}/test/heap/**.h",
}
links { "Heap" }
