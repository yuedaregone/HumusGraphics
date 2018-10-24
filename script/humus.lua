PROJ_DIR = path.getabsolute("..")
project "humus"
	kind "WindowedApp" --kind "StaticLib" "WindowedApp" "ConsoleApp"

	debugdir (path.join(PROJ_DIR, "humus"))	

	
	includedirs {
		--path.join(PROJ_DIR, "humus"),
		--path.join(PROJ_DIR, "humus/Util"),
		--path.join(PROJ_DIR, "humus/OpenGL"),
		path.join(PROJ_DIR, "humus/Math"),
		path.join(PROJ_DIR, "humus/Imaging"),		
		path.join(PROJ_DIR, "humus/GUI"),
		path.join(PROJ_DIR, "humus/Audio"),
	}

	files {
		path.join(PROJ_DIR, "humus/**.h"),
		path.join(PROJ_DIR, "humus/**.cpp"),
	--[[
		path.join(PROJ_DIR, "humus/Util/**.h"),
		path.join(PROJ_DIR, "humus/OpenGL/**.h"),
		path.join(PROJ_DIR, "humus/Math/**.h"),
		path.join(PROJ_DIR, "humus/Imaging/**.h"),
		path.join(PROJ_DIR, "humus/GUI/**.h"),
		path.join(PROJ_DIR, "humus/Audio/**.h"),
		path.join(PROJ_DIR, "humus/Util/**.cpp"),
		path.join(PROJ_DIR, "humus/OpenGL/**.cpp"),
		path.join(PROJ_DIR, "humus/Math/**.cpp"),
		path.join(PROJ_DIR, "humus/Imaging/**.cpp"),
		path.join(PROJ_DIR, "humus/GUI/**.cpp"),
		path.join(PROJ_DIR, "humus/Audio/**.cpp"),
		path.join(PROJ_DIR, "humus/Windows/WindowsBase.cpp"),
		path.join(PROJ_DIR, "humus/Windows/Resource.h"),
		path.join(PROJ_DIR, "humus/BaseApp.h"),
		path.join(PROJ_DIR, "humus/BaseApp.cpp"),
		path.join(PROJ_DIR, "humus/Config.h"),
		path.join(PROJ_DIR, "humus/Config.cpp"),
		path.join(PROJ_DIR, "humus/CPU.h"),
		path.join(PROJ_DIR, "humus/CPU.cpp"),
		path.join(PROJ_DIR, "humus/Platform.h"),
		path.join(PROJ_DIR, "humus/Platform.cpp"),
		path.join(PROJ_DIR, "humus/Renderer.h"),
		path.join(PROJ_DIR, "humus/Renderer.cpp"),	
		path.join(PROJ_DIR, "humus/App.h"),
		path.join(PROJ_DIR, "humus/App.cpp"),	
]]		
	}
	excludes {
		path.join(PROJ_DIR, "humus/Libs/*.*"),
	}
	
--[[
	links {
		"bx",
	}]]

	configuration { "Debug" }
		defines {
			"_Debug",
		}
	
	configuration { "vs* or mingw*" }
		excludes {
			path.join(PROJ_DIR, "humus/Direct3D/**.h"),
			path.join(PROJ_DIR, "humus/Direct3D/**.cpp"),
			path.join(PROJ_DIR, "humus/Direct3D10/**.h"),
			path.join(PROJ_DIR, "humus/Direct3D10/**.cpp"),
			path.join(PROJ_DIR, "humus/OpenGL/**.h"),
			path.join(PROJ_DIR, "humus/OpenGL/**.cpp"),
			path.join(PROJ_DIR, "humus/Linux/**.h"),
			path.join(PROJ_DIR, "humus/Linux/**.cpp"),
			path.join(PROJ_DIR, "humus/Mac/**.h"),
			path.join(PROJ_DIR, "humus/Mac/**.cpp"),
		}
		links {
			"ALut",
			"zlib",
			"libjpeg",
			"libpng",
			"ogg_static",
			"OpenAL32",
			"vorbis_static",
			"vorbisfile_static",
		}
		buildoptions {
			"/wd4244",
		}	
		libdirs {
			path.join(PROJ_DIR, "humus/Libs"),
		}		

	configuration { "linux-*" }
		links {
			"pthread",
		}

	configuration { "osx" }
		links {
			"Cocoa.framework",
		}

	configuration {}

	--strip()
