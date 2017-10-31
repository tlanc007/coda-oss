
set(name GenZTest)

set (source
    Gen2Test.cpp
)

add_executable (${name} ${source})
target_link_libraries (${name} except)
