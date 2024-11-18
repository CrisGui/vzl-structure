project "TestMatrix"
kind "ConsoleApp"
location "%{wks.location}/test/matrix"
targetname "test_matrix"
targetdir "%{wks.location}/binary/test/%{cfg.buildcfg}"
objdir "%{wks.location}/build/test/%{cfg.buildcfg}"
files {
  "%{wks.location}/test/matrix/**.c",
}
includedirs {
  "%{wks.location}/test/matrix/**.h",
}
links { "Matrix" }
