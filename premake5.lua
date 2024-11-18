workspace "vzl-structure"
filename "vzl-structure"
location "./"
configurations {
  "Debug",
  "Release",
  "Distro",
}
flags {
  "MultiProcessorCompile",
}

-- local dirBin = "%{wks.location}/binary"
-- local dirBld = "%{wks.location}/build"
-- local dirSrc = "%{wks.location}/source"
-- local dirLib = "%{wks.location}/library"
-- local dirDoc = "%{wks.location}/documentation"
-- local dirTes = "%{wks.location}/test"
-- local dirVdr = "%{wks.location}/vendor"

group "Core"
include "source/array"
include "source/chain"
include "source/graph"
include "source/list"
include "source/map"
include "source/matrix"
include "source/queue"
include "source/set"
include "source/stack"
group ""

group "Test"
include "test/array"
include "test/chain"
include "test/graph"
include "test/list"
include "test/map"
include "test/matrix"
include "test/queue"
include "test/set"
include "test/stack"
group ""

-- group "Dependency"
-- include "dependency/development"
-- include "dependency/production"
-- group ""

group "Extra"
include "documentation"
group ""

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
defines { "DEBUG", "_DEBUG", "VZL_STRUCTURE_DEBUG" }
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
defines { "DEBUG", "_DEBUG", "VZL_STRUCTURE_RELEASE" }
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
  "-feliminate-unused-debug-symbols",
  -- "-fvar-tracking-assignments",
  "-ggnu-pubnames",
  "-ginline-points",
  "-gstatement-frontiers",
  "-feliminate-unused-debug-types",
  "-pedantic",
  "-pedantic-errors",
  "-Wdeprecated",
  "-Werror=missing-declarations",
  "-Werror=redundant-decls",
  -- "-fsanitize=address,undefined",
  "-fno-omit-frame-pointer",
  "-fvisibility=hidden",
  "-foptimize-sibling-calls",
  "-fstrict-aliasing",
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
defines { "NDEBUG", "_NDEBUG", "VZL_STRUCTURE_DISTRO" }
symbols "Off"
optimize "Full"
filter {}
