workspace "vzl-structure"
filename "vzl-structure"
location "./"
language "C"
configurations { "Debug", "Release", "Distro" }

local dirBin = "%{wks.location}/binary"
local dirBld = "%{wks.location}/build"
local dirSrc = "%{wks.location}/source"
local dirLib = "%{wks.location}/library"
local dirDoc = "%{wks.location}/documentation"
local dirTes = "%{wks.location}/test"
local dirVdr = "%{wks.location}/vendor"

filter "configurations:Unix**"
system "linux"
filter {}

filter "configurations:**64"
architecture "x86_64"
filter {}

filter "configurations:Debug*"
buildoptions {
  "-g3",
  "-ggdb3",
  "-Og",
  "-Wall",
  "-Wextra",
  "-Wshadow",
  "-Wdouble-promotion",
  "-Wformat=2",
  "-Wformat-truncation",
  "-Wformat-overflow",
  "-Wundef",
  "-Werror=return-type",
  "-Wno-unused-parameter",
  "-fno-common",
  "-fstack-usage",
  "-Wstack-usage=256",
  "-Wconversion",
  "-ffunction-sections",
  "-fdata-sections",
  "-Wpadded",
  "-fvar-tracking",
  "-fno-eliminate-unused-debug-symbols",
  "-fvar-tracking-assignments",
  "-ggnu-pubnames",
  "-ginline-points",
  "-gstatement-frontiers",
  "-fno-eliminate-unused-debug-types",
  "-Q",
  "-p",
  "-pg",
  "-ftime-report",
  "-fmem-report",
  --   "-fprofile-arcs",
  "-ftest-coverage",
  "-time",
  "-pedantic",
  "-pedantic-errors",
  "-Wdeprecated",
  "-Werror=missing-declarations",
  "-Werror=redundant-decls",
  -- "-fsanitize=address,undefined",
  "-fno-omit-frame-pointer",
  "-fvisibility=hidden",
  "-fno-optimize-sibling-calls",
  "-fno-strict-aliasing",
  "-fwrapv",
  "-Wfloat-equal",
  "-Wpointer-arith",
  "-Wcast-align",
  "-Wstrict-prototypes",
  "-Wmissing-prototypes",
  "-Wstrict-overflow=5",
  "-Wwrite-strings",
  "-Waggregate-return",
  "-Wcast-qual",
  "-Wswitch-default",
  "-Wswitch-enum",
  "-Wunreachable-code",
  "-fverbose-asm",
  --   "--coverage",
  "-finstrument-functions",
  "-Winit-self",
  "-Wuninitialized",
  "--save-temps",
  "-Werror-implicit-function-declaration",
  "-std=c23",
}
defines { "DEBUG", "_DEBUG", "CLOX_DEBUG" }
symbols "Full"
optimize "Off"
filter "configurations:Release*"
buildoptions {
  "-g",
  "-ggdb",
  "-O3",
  "-Wall",
  "-Werror",
  "-Wextra",
  "-Wshadow",
  "-Wdouble-promotion",
  "-Wformat=2",
  "-Wformat-truncation",
  "-Wformat-overflow",
  "-Wundef",
  "-Werror=return-type",
  "-Wno-unused-parameter",
  "-fno-common",
  "-fstack-usage",
  "-Wstack-usage=256",
  "-Wconversion",
  "-ffunction-sections",
  "-fdata-sections",
  "-Wpadded",
  "-fvar-tracking",
  "-fno-eliminate-unused-debug-symbols",
  "-fvar-tracking-assignments",
  "-ggnu-pubnames",
  "-ginline-points",
  "-gstatement-frontiers",
  "-fno-eliminate-unused-debug-types",
  "-pedantic",
  "-pedantic-errors",
  "-Wdeprecated",
  "-Werror=missing-declarations",
  "-Werror=redundant-decls",
  -- "-fsanitize=address,undefined",
  "-fno-omit-frame-pointer",
  "-fvisibility=hidden",
  "-fno-optimize-sibling-calls",
  "-fno-strict-aliasing",
  "-fwrapv",
  "-Wfloat-equal",
  "-Wpointer-arith",
  "-Wcast-align",
  "-Wstrict-prototypes",
  "-Wmissing-prototypes",
  "-Wstrict-overflow=5",
  "-Wwrite-strings",
  "-Waggregate-return",
  "-Wcast-qual",
  "-Wswitch-default",
  "-Wswitch-enum",
  "-Wunreachable-code",
  "-fverbose-asm",
  "-finstrument-functions",
  "-Winit-self",
  "-Wuninitialized",
  "-Werror-implicit-function-declaration",
  "-std=c23",
}
defines { "DEBUG", "_DEBUG", "CLOX_RELEASE" }
symbols "On"
optimize "Debug"
filter "configurations:Distro*"
buildoptions {
  "-O3",
  "-Wall",
  "-Werror",
  "-Wextra",
  "-Wshadow",
  "-Wdouble-promotion",
  "-Wformat=2",
  "-Wformat-truncation",
  "-Wformat-overflow",
  "-Wundef",
  "-Werror=return-type",
  "-Wno-unused-parameter",
  "-fno-common",
  "-fstack-usage",
  "-Wstack-usage=256",
  "-Wconversion",
  "-ffunction-sections",
  "-fdata-sections",
  "-Wpadded",
  -- "-fvar-tracking",
  "-fno-eliminate-unused-debug-symbols",
  "-fvar-tracking-assignments",
  "-ggnu-pubnames",
  "-ginline-points",
  "-gstatement-frontiers",
  "-fno-eliminate-unused-debug-types",
  "-pedantic",
  "-pedantic-errors",
  "-Wdeprecated",
  "-Werror=missing-declarations",
  "-Werror=redundant-decls",
  -- "-fsanitize=address,undefined",
  "-fno-omit-frame-pointer",
  "-fvisibility=hidden",
  "-fno-optimize-sibling-calls",
  "-fno-strict-aliasing",
  "-fwrapv",
  "-Wfloat-equal",
  "-Wpointer-arith",
  "-Wcast-align",
  "-Wstrict-prototypes",
  "-Wmissing-prototypes",
  "-Wstrict-overflow=5",
  "-Wwrite-strings",
  "-Waggregate-return",
  "-Wcast-qual",
  "-Wswitch-default",
  "-Wswitch-enum",
  "-Wunreachable-code",
  "-Winit-self",
  "-Wuninitialized",
  "-Werror-implicit-function-declaration",
  "-std=c23",
}
defines { "NDEBUG", "_NDEBUG", "CLOX_DISTRO" }
symbols "Off"
optimize "Full"
filter {}

project "Array"
kind "StaticLib"
location(dirSrc .. "/array/")
targetname "array"
targetdir(dirBin .. "%/{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/array/**.c" }
includedirs { dirSrc .. "/array/**.h" }

project "Chain"
kind "StaticLib"
location(dirSrc .. "/chain/")
targetname "chain"
targetdir(dirBin .. "/%{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/chain/**.c" }
includedirs { dirSrc .. "/chain/**.h" }

project "Graph"
kind "StaticLib"
location(dirSrc .. "/graph/")
targetname "graph"
targetdir(dirBin .. "/%{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/graph/**.c" }
includedirs { dirSrc .. "/graph/**.h" }

project "Heap"
kind "StaticLib"
location(dirSrc .. "/heap/")
targetname "heap"
targetdir(dirBin .. "/%{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/heap/**.c" }
includedirs { dirSrc .. "/heap/**.h" }

project "List"
kind "StaticLib"
location(dirSrc .. "/list/")
targetname "list"
targetdir(dirBin .. "/%{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/list/**.c" }
includedirs { dirSrc .. "/list/**.h" }

project "Map"
kind "StaticLib"
location(dirSrc .. "/map/")
targetname "map"
targetdir(dirBin .. "/%{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/map/**.c" }
includedirs { dirSrc .. "/map/**.h" }

project "Matrix"
kind "StaticLib"
location(dirSrc .. "/matrix/")
targetname "matrix"
targetdir(dirBin .. "/%{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/matrix/**.c" }
includedirs { dirSrc .. "/matrix/**.h" }

project "Queue"
kind "StaticLib"
location(dirSrc .. "/queue/")
targetname "queue"
targetdir(dirBin .. "/%{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/queue/**.c" }
includedirs { dirSrc .. "/queue/**.h" }

project "Set"
kind "StaticLib"
location(dirSrc .. "/set/")
targetname "set"
targetdir(dirBin .. "/%{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/set/**.c" }
includedirs { dirSrc .. "/set/**.h" }

project "Stack"
kind "StaticLib"
location(dirSrc .. "/stack/")
targetname "stack"
targetdir(dirBin .. "/%{cfg.buildcfg}")
objdir(dirBld .. "/%{cfg.buildcfg}")
files { dirSrc .. "/stack/**.c" }
includedirs { dirSrc .. "/stack/**.h" }
