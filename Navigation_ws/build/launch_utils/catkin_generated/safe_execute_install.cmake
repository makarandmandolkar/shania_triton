execute_process(COMMAND "/home/makarand/Documents/Navigation_ws/build/launch_utils/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/makarand/Documents/Navigation_ws/build/launch_utils/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
