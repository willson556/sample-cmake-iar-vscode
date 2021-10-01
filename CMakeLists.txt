cmake_minimum_required(VERSION 3.19.6)
cmake_policy(VERSION 3.19.6)

enable_language(CXX ASM)
project (Sample)

include(cmake/flags.cmake)

add_subdirectory(src)

