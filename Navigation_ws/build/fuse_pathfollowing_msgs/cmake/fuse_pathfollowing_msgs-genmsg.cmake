# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fuse_pathfollowing_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Ifuse_pathfollowing_msgs:/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg;-Ifuse_pathfollowing_msgs:/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fuse_pathfollowing_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg" "fuse_pathfollowing_msgs/Segment:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg" "fuse_pathfollowing_msgs/Path:actionlib_msgs/GoalID:fuse_pathfollowing_msgs/Segment:fuse_pathfollowing_msgs/UpdatePathResult:actionlib_msgs/GoalStatus:fuse_pathfollowing_msgs/UpdatePathGoal:fuse_pathfollowing_msgs/UpdatePathActionFeedback:geometry_msgs/Vector3:fuse_pathfollowing_msgs/UpdatePathFeedback:std_msgs/Header:fuse_pathfollowing_msgs/UpdatePathActionGoal:fuse_pathfollowing_msgs/UpdatePathActionResult"
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg" ""
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg" "fuse_pathfollowing_msgs/Path:fuse_pathfollowing_msgs/Segment:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg" ""
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:fuse_pathfollowing_msgs/UpdatePathFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg" "std_msgs/Header:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:fuse_pathfollowing_msgs/PIDMetrics:nav_msgs/Odometry:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:fuse_pathfollowing_msgs/UpdatePathResult:std_msgs/Header"
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg" ""
)

get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg" NAME_WE)
add_custom_target(_fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fuse_pathfollowing_msgs" "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg" "fuse_pathfollowing_msgs/Path:actionlib_msgs/GoalID:fuse_pathfollowing_msgs/Segment:fuse_pathfollowing_msgs/UpdatePathGoal:geometry_msgs/Vector3:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_cpp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(fuse_pathfollowing_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fuse_pathfollowing_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fuse_pathfollowing_msgs_generate_messages fuse_pathfollowing_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fuse_pathfollowing_msgs_gencpp)
add_dependencies(fuse_pathfollowing_msgs_gencpp fuse_pathfollowing_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fuse_pathfollowing_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_eus(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(fuse_pathfollowing_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fuse_pathfollowing_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fuse_pathfollowing_msgs_generate_messages fuse_pathfollowing_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fuse_pathfollowing_msgs_geneus)
add_dependencies(fuse_pathfollowing_msgs_geneus fuse_pathfollowing_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fuse_pathfollowing_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_lisp(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(fuse_pathfollowing_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fuse_pathfollowing_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fuse_pathfollowing_msgs_generate_messages fuse_pathfollowing_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fuse_pathfollowing_msgs_genlisp)
add_dependencies(fuse_pathfollowing_msgs_genlisp fuse_pathfollowing_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fuse_pathfollowing_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_nodejs(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(fuse_pathfollowing_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fuse_pathfollowing_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fuse_pathfollowing_msgs_generate_messages fuse_pathfollowing_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fuse_pathfollowing_msgs_gennodejs)
add_dependencies(fuse_pathfollowing_msgs_gennodejs fuse_pathfollowing_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fuse_pathfollowing_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)
_generate_msg_py(fuse_pathfollowing_msgs
  "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg;/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(fuse_pathfollowing_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fuse_pathfollowing_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fuse_pathfollowing_msgs_generate_messages fuse_pathfollowing_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Path.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathAction.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/Segment.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/PIDMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/src/fuse_pathfollowing/fuse_pathfollowing_msgs/msg/DebugMetrics.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionResult.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathFeedback.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/makarand/Documents/Navigation_ws/devel/.private/fuse_pathfollowing_msgs/share/fuse_pathfollowing_msgs/msg/UpdatePathActionGoal.msg" NAME_WE)
add_dependencies(fuse_pathfollowing_msgs_generate_messages_py _fuse_pathfollowing_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fuse_pathfollowing_msgs_genpy)
add_dependencies(fuse_pathfollowing_msgs_genpy fuse_pathfollowing_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fuse_pathfollowing_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fuse_pathfollowing_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fuse_pathfollowing_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fuse_pathfollowing_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fuse_pathfollowing_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fuse_pathfollowing_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(fuse_pathfollowing_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
