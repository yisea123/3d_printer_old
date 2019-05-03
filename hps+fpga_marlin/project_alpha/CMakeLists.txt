cmake_minimum_required(VERSION 3.12)
project(3d_printer_old)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED on)

add_executable(3d_printer_old
        addresses.cpp
        addresses.h

        configuration.h
        hps_0.h
        temp_11.h

        gcode.cpp
        gcode.h

        position.cpp
        position.h

        main.cpp
        )
