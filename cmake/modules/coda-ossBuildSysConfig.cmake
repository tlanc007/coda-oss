## sys_config.
find_package (Threads)
set(HAVE_PTHREAD_H ${CMAKE_HAVE_PTHREAD_H})

find_package (Backtrace)
if (DEFINED Backtrace_HEADER)
  set(HAVE_EXECINFO_H 1)
endif ()

include(CheckLibraryExists)
check_library_exists (c clock_gettime "" HAVE_CLOCK_GETTIME)
check_library_exists (c gettimeofday "" HAVE_SYS_TIME_H)
check_library_exists (c localtime_r "" HAVE_LOCALTIME_R)
check_library_exists (c gmtime_r "" HAVE_GMTIME_R)
check_library_exists (c setenv "" HAVE_SETENV)
check_library_exists (c posix_memalign "" HAVE_POSIX_MEMALIGN)

include (CMakeBackwardCompatibilityCXX)
include (CMakeBackwardCompatibilityC)
set(BIGENDIAN  ${CMAKE_WORDS_BIGENDIAN})
set(SIZEOF_SIZE_T ${CMAKE_SIZEOF_VOID_P})
# eventually move to sys_config.h?
CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/sys_config.h.in ${CMAKE_CURRENT_BINARY_DIR}/sys/sys_config.h)

