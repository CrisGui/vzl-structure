project "TestStack"
kind "ConsoleApp"
location "%{wks.location}/test/stack"
targetname "test_stack"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/stack/**.c",
}
includedirs {
  "%{wks.location}/test/stack/**.h",
}
links { "Stack" }
