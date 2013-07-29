# Install script for directory: /Users/loic/Desktop/dolphin-emu

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/Users/loic/Desktop/dolphin-emu/install-dummy")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Externals/Bochs_disasm/cmake_install.cmake")
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Externals/LZO/cmake_install.cmake")
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Externals/soundtouch/cmake_install.cmake")
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Externals/SDL/cmake_install.cmake")
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Externals/SFML/cmake_install.cmake")
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Externals/miniupnpc/cmake_install.cmake")
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Externals/SOIL/cmake_install.cmake")
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Externals/GLew/cmake_install.cmake")
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Externals/wxWidgets3/cmake_install.cmake")
  INCLUDE("/Users/loic/Desktop/dolphin-emu/Source/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/Users/loic/Desktop/dolphin-emu/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/Users/loic/Desktop/dolphin-emu/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
