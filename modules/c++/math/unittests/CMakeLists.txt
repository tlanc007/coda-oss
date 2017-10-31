
set (source
    test_n_choose_k.cpp
)

add_executable (Test ${source}
add_target_link_libraries (Test math)
add_test (NAME test_n_choose_k COMMAND Test)

#test_bessel_functions.cpp    test_round.cpp
#test_convex_hull.cpp        test_sign.cpp
#test_is_nan.cpp
