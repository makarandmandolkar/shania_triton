# CMake generated Testfile for 
# Source directory: /home/makarand/Documents/shania_triton_ws/src/shania/shania_driver/omron/omron_os32c_driver
# Build directory: /home/makarand/Documents/shania_triton_ws/build/omron_os32c_driver
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_omron_os32c_driver_roslaunch-check_launch_os32c.launch "/home/makarand/Documents/shania_triton_ws/build/omron_os32c_driver/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/makarand/Documents/shania_triton_ws/build/omron_os32c_driver/test_results/omron_os32c_driver/roslaunch-check_launch_os32c.launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/makarand/Documents/shania_triton_ws/build/omron_os32c_driver/test_results/omron_os32c_driver" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/makarand/Documents/shania_triton_ws/build/omron_os32c_driver/test_results/omron_os32c_driver/roslaunch-check_launch_os32c.launch.xml\" \"/home/makarand/Documents/shania_triton_ws/src/shania/shania_driver/omron/omron_os32c_driver/launch/os32c.launch\" ")
add_test(_ctest_omron_os32c_driver_gtest_omron_os32c_driver-test "/home/makarand/Documents/shania_triton_ws/build/omron_os32c_driver/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/makarand/Documents/shania_triton_ws/build/omron_os32c_driver/test_results/omron_os32c_driver/gtest-omron_os32c_driver-test.xml" "--return-code" "/home/makarand/Documents/shania_triton_ws/devel/.private/omron_os32c_driver/lib/omron_os32c_driver/omron_os32c_driver-test --gtest_output=xml:/home/makarand/Documents/shania_triton_ws/build/omron_os32c_driver/test_results/omron_os32c_driver/gtest-omron_os32c_driver-test.xml")
subdirs("gtest")
