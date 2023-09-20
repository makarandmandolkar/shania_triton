# Install script for directory: /home/makarand/Documents/shania_triton_ws/src/accerion-ros-node/accerion_driver/accerionsensorapi

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/makarand/Documents/shania_triton_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/makarand/Documents/shania_triton_ws/src/accerion-ros-node/accerion_driver/accerionsensorapi/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/makarand/Documents/shania_triton_ws/build/accerion_driver/accerionsensorapi/libAccerionSensorAPI.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/makarand/Documents/shania_triton_ws/src/accerion-ros-node/accerion_driver/accerionsensorapi/3rdparty/msgpack-c/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/AccerionSensorAPI/cmake" TYPE FILE FILES
    "/home/makarand/Documents/shania_triton_ws/build/accerion_driver/accerionsensorapi//CMakeFiles/AccerionSensorAPIConfig.cmake"
    "/home/makarand/Documents/shania_triton_ws/build/accerion_driver/accerionsensorapi/AccerionSensorAPIConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/AccerionSensorAPI/cmake/export_AccerionSensorAPI.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/AccerionSensorAPI/cmake/export_AccerionSensorAPI.cmake"
         "/home/makarand/Documents/shania_triton_ws/build/accerion_driver/accerionsensorapi/CMakeFiles/Export/share/AccerionSensorAPI/cmake/export_AccerionSensorAPI.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/AccerionSensorAPI/cmake/export_AccerionSensorAPI-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/AccerionSensorAPI/cmake/export_AccerionSensorAPI.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/AccerionSensorAPI/cmake" TYPE FILE FILES "/home/makarand/Documents/shania_triton_ws/build/accerion_driver/accerionsensorapi/CMakeFiles/Export/share/AccerionSensorAPI/cmake/export_AccerionSensorAPI.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/AccerionSensorAPI/cmake" TYPE FILE FILES "/home/makarand/Documents/shania_triton_ws/build/accerion_driver/accerionsensorapi/CMakeFiles/Export/share/AccerionSensorAPI/cmake/export_AccerionSensorAPI-noconfig.cmake")
  endif()
endif()

