cmake_minimum_required(VERSION 3.0)

project (coda-oss C CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake/modules")

# 1. must come first
## set CXX version
set(PRECXX11 OFF CACHE BOOL "Use pre-c++11 compiler" FORCE)

#2. must come before BuildSysConfig
include (coda-ossSetCXXSTD)

include (coda-ossBuildSysConfig)

##hacky set up defines for now
## this is to replace the sys/sys_config.h file that is generate
##add_definitions(-D__CODA_CPP11=1)

enable_testing ()

include_directories (${CMAKE_CURRENT_BINARY_DIR})

add_subdirectory (modules)

