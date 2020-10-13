project "Lua"
    kind "StaticLib"
    language "C"
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    defines {
        "_CRT_SECURE_NO_WARNINGS"
    }

    files {
        "lapi.c",
        "lapi.h",
        "luaxlib.c",
        "lauxlib.h",
        "lbaselib.c",
        "lcode.c",
        "lcode.h",
        "lcorolib.c",
        "lctype.c",
        "lctype.h",
        "ldblib.c",
        "ldebug.c",
        "ldebug.h",
        "ldo.c",
        "ldo.h",
        "ldump.c",
        "lfunc.c",
        "lfunc.h",
        "lgc.c",
        "lgc.h",
        "linit.c",
        "liolib.c",
        "ljumptab.h",
        "llex.c",
        "llex.h",
        "llimits.h",
        "lmathlib.c",
        "lmem.c",
        "lmem.h",
        "loadlib.c",
        "lobject.c",
        "lobject.h",
        "lopcodes.c",
        "lopcodes.h",
        "lopnames.h",
        "loslib.c",
        "lparser.c",
        "lparser.h",
        "lprefix.h",
        "lstate.c",
        "lstring.c",
        "lstring.h",
        "lstrlib.c",
        "ltable.c",
        "ltable.h",
        "ltablib.c",
        "ltests.c",
        "ltests.h",
        "ltm.c",
        "ltm.h",
        "luaconf.h",
        "lualib.h",
        "lundump.c",
        "lundump.h",
        "lutf8lib.c",
        "lvm.c",
        "lvm.h",
        "lzio.c",
        "lzio.h",
        "onelua.c"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
