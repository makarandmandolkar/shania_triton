# - Config file for the accerionsensorapi package
# It defines the following variables
#  AccerionSensorAPI_INCLUDE_DIRS - include directories for FooBar
#  AccerionSensorAPI_LIBRARIES    - libraries to link against
#  AccerionSensorAPI_EXECUTABLE   - the bar executable

set(AccerionSensorAPI_INCLUDE_DIRS "")

# Our library dependencies (contains definitions for IMPORTED targets)
include("${AccerionSensorAPI_DIR}/export_AccerionSensorAPI.cmake")

# These are IMPORTED targets created by AccerionSensorAPITargets.cmake
set(AccerionSensorAPI_LIBRARIES AccerionSensorAPI)


