project "hello_server"
	kind "ConsoleApp"
	language "C"
	cdialect "C11"
	staticruntime "On"
	
	targetdir ("../bin/%{outputdir}/%{prj.name}")
	objdir ("../bin-int/%{outputdir}/%{prj.name}")

	files { 
		"src/**.h",
		"src/**.c",
		"premake5.lua",
		"../premake5.lua"
	}

	includedirs { 
		"src",
	}

	libdirs { 
	}

	links {
	}

	postbuildcommands
	{
		--("{COPY} %{pythondir}/python39.dll %{cfg.targetdir}"),
	}
	
	filter "system:windows"
		systemversion "latest"
		links {
			"ws2_32.lib"
		}
