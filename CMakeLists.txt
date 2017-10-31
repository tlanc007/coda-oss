cmake_minimum_required(VERSION 3.0)

project (coda-oss C CXX)

## sys_config.
find_package (Threads)
set(HAVE_PTHREAD_H ${CMAKE_HAVE_PTHREAD_H})

find_package (Backtrace)
if (DEFINED Backtrace_HEADER)
  set(HAVE_EXECINFO_H 1)
endif ()
#set(HAVE_EXECINFO_H DEFINED Backtrace_HEADER is TRUE)

# eventually move to sys_config.h?
CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/sys_config.h.in ${CMAKE_CURRENT_BINARY_DIR}/sys_config.h)

set (CMAKE_CXX_FLAGS -std=c++14)

##hacky set up defines for now
## this is to replace the sys/sys_config.h file that is generate
## by waf.
##add_definitions(-DHAVE_PTHREAD_H=1)
##add_definitions(-DHAVE_EXECINFO_H=1)
##add_definitions(-DHAVE_CLOCK_GETTIME=1)
##add_definitions(-DHAVE_SYS_TIME_H=1)
##add_definitions(-DHAVE_LOCALTIME_R=1)
##add_definitions(-DHAVE_GMTIME_R=1)
##add_definitions(-DHAVE_SETENV=1)
##add_definitions(-DHAVE_POSIX_MEMALIGN=1)
##add_definitions(-DBIGENDIAN=0)
##add_definitions(-DSIZEOF_SIZE_T=8)
##add_definitions(-D__CODA_CPP11=1)

enable_testing ()

include_directories (${CMAKE_CURRENT_BINARY_DIR})

add_subdirectory (modules)

