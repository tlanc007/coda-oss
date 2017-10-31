
set (source
    Bessel.cpp    
    Constants.cpp
    Utilities.cpp
)

# include_directories (include)

add_library (math ${source})
target_link_libraries (math)

