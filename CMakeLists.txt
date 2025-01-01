cmake_minimum_required(VERSION 3.14)
project(nonrelocatable VERSION 0.0.1 LANGUAGES NONE)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/nonrelocatableConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/nonrelocatableConfig.cmake
    INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/nonrelocatable
)

install(FILES
    ${CMAKE_CURRENT_BINARY_DIR}/nonrelocatableConfig.cmake
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/nonrelocatable
)
