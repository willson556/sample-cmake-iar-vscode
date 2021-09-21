function (add_flags ARG_TARGET_NAME)

if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "IAR")
    target_compile_options(${ARG_TARGET_NAME} PRIVATE
        "--cpu" "Cortex-M4"
        "--dlib_config" "normal"
    )
    target_link_options(${ARG_TARGET_NAME} PRIVATE
        "--config" "${CMAKE_SOURCE_DIR}/stm32f407xg.icf"
    )
else()
    message(FATAL_ERROR "Compiler & linker flags not defined for ${CMAKE_CXX_COMPILER_ID}!")
endif()

endfunction()