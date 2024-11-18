project "TestChain"
kind "ConsoleApp"
location "%{wks.location}/test/chain"
targetname "test_array"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/chain/**.c",
}
includedirs {
  "%{wks.location}/test/chain/**.h",
}
links { "Chain" }
