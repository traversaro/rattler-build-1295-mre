cmake_minimum_required(VERSION 3.14)
project(nonrelocatable VERSION 0.0.1 LANGUAGES NONE)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

file(TO_NATIVE_PATH "${CMAKE_INSTALL_PREFIX}" CMAKE_INSTALL_PREFIX_NATIVE)

configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/nonrelocatableConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/nonrelocatableConfig.cmake
    INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/nonrelocatable
)

configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/nonrelocatableRegularFile.txt.in
    ${CMAKE_CURRENT_BINARY_DIR}/nonrelocatableRegularFile.txt
)

install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/nonrelocatableConfig.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/nonrelocatableRegularFile.txt
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/nonrelocatable
)
