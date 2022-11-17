project "ImGuizmo"	
	kind "StaticLib"	
	language "C++"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"ImGuizmo.h",
		"ImGuizmo.cpp",

		"ImCurveEdit.h",
		"ImCurveEdit.cpp",

		"ImSequencer.h",
		"ImSequencer.cpp",
	}
	includedirs
	{
		"%{IncludeDir.ImGui}"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "Off"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "Off"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
