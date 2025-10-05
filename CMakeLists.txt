cmake_minimum_required(VERSION 4.0)
find_package(Boost REQUIRED)

project(Sample)

include_directories($ENV{Boost_INCLUDE_DIR})

set(CMAKE_CXX_STANDARD 20)
set(Boost_NO_BOOST_CMAKE ON)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_STATIC_RUNTIME OFF)
set(Boost_DEBUG ON)
set(CMAKE_BUILD_TYPE Debug)

#add_executable(new_target boost_vesion.cpp
#        all.h)

add_executable(new_target main.cpp
        all.h)
