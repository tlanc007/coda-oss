#Determine C++ standard to build with


if (NOT PRECXX11)
    message("Post C++11 or greater")
    set (__CODA_CPP11 1)
    #set(needed_features cxx_constexpr)

    include(CheckCXXCompilerFlag)
    CHECK_CXX_COMPILER_FLAG("-std=c++14" COMPILER_SUPPORTS_CXX14)
    CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
    if (COMPILER_SUPPORTS_CXX14)
        set (CMAKE_CXX_STANDARD 14)
    elseif (COMPILER_SUPPORTS_CXX14)
        set (CMAKE_CXX_STANDARD 11)
    else ()
        message(FATAL_ERROR "C++ compiler doesn't support newer standard and -DPRECXX11 wasn't specified")
    endif ()
else ()
    message ("PRECXX11 is true!")
endif ()

