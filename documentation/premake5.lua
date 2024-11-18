project "Documentation"
kind "None"
location "%{wks.location}/documentation"
targetname "documentation"
targetdir "%{wks.location}/build/%{cfg.buildcfg}"
files { "%{wks.location}/documentation/**" }
