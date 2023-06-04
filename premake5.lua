workspace "hylsocket"
	architecture "x64"
	configurations { "Debug", "Release" }
	location "project-files"
	startproject "hello_server"
	
	outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

	filter "configurations:Debug"
		symbols "On"
		runtime "Debug"
		
	filter "configurations:Release"
		symbols "Off"
		runtime "Release"
		optimize "On"


include "hello_server"
include "hello_client"
