cmake_minimum_required (VERSION 2.8.11)
project(PokeDiamond)
set(CMAKE_CXX_STANDARD 17)

# TODO: Add commands

enable_language(ASM)

if(APPLE)
    include_directories(/usr/local/include)
endif(APPLE)

add_compile_options(-fms-extensions)

file(GLOB_RECURSE SOURCES RELATIVE ${CMAKE_SOURCE_DIR} "*.c" "*.cpp")

add_executable(PokeDiamond ${SOURCES})
target_include_directories(PokeDiamond PRIVATE include include-mw arm9/lib/include arm7/lib/include)

add_executable(calcrom .travis/calcrom/calcrom.cpp)
target_include_directories(calcrom PRIVATE /usr/local/include)

add_executable(knarc tools/knarc/Source.cpp tools/knarc/Narc.cpp)

add_executable(jsonproc tools/jsonproc/jsonproc.cpp)
target_include_directories(jsonproc PRIVATE SYSTEM tools/jsonproc)

add_executable(o2narc tools/o2narc/o2narc.cpp)
