cmake_minimum_required(VERSION 3.8)
project(example-guile-program)

find_package(PkgConfig REQUIRED)
pkg_search_module(Guile REQUIRED IMPORTED_TARGET guile-3.0 guile-2.2 guile-2.0)

add_executable(example-guile-program simple-guile.c)
target_link_libraries(example-guile-program PkgConfig::Guile)
install(TARGETS example-guile-program DESTINATION bin)
