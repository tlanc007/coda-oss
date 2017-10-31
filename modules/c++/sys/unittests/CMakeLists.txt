
set(name test_NaN_testing)
set (source
    ${name}.cpp
)
add_executable (${name} ${source})
target_link_libraries (${name} sys)
add_test (NAME ${name} COMMAND ${name})

set(name test_atomic_counter)
set (source
    ${name}.cpp
)
add_executable (${name} ${source})
target_link_libraries (${name} sys)
add_test (NAME ${name} COMMAND ${name})

set(name test_conditionvar)
set (source
    ${name}.cpp
)
add_executable (${name} ${source})
target_link_libraries (${name} sys)
add_test (NAME ${name} COMMAND ${name})

set(name test_datetime)
set (source
    ${name}.cpp
)
add_executable (${name} ${source})
target_link_libraries (${name} sys)
add_test (NAME ${name} COMMAND ${name})

set(name test_os)
set (source
    ${name}.cpp
)
add_executable (${name} ${source})
target_link_libraries (${name} sys)
add_test (NAME ${name} COMMAND ${name})

set(name test_symlink)
set (source
    ${name}.cpp
)
add_executable (${name} ${source})
target_link_libraries (${name} sys)
add_test (NAME ${name} COMMAND ${name})

