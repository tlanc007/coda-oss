cmake_minimum_required(VERSION 3.0)

project (coda-oss C CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake/modules")

# 1. must come first
## set CXX version
set(PRECXX11 OFF CACHE BOOL "Use pre-c++11 compiler")

#2. must come before BuildSysConfig
include (coda-ossSetCXXSTD)

include (coda-ossBuildSysConfig)

enable_testing ()

include_directories (${CMAKE_CURRENT_BINARY_DIR})

add_subdirectory (modules)

