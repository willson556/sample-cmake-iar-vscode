if (NOT DEFINED ENV{IAR_ARM})
    message(FATAL_ERROR "IAR_ARM variable is not defined!")
endif()

set(IAR_INSTALL $ENV{IAR_ARM})

find_program(CMAKE_ASM_COMPILER iasmarm.exe PATHS "${IAR_INSTALL}/bin" NO_DEFAULT_PATH)
find_program(CMAKE_C_COMPILER iccarm.exe PATHS "${IAR_INSTALL}/bin" NO_DEFAULT_PATH)
find_program(CMAKE_CXX_COMPILER iccarm.exe PATHS "${IAR_INSTALL}/bin" NO_DEFAULT_PATH)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
