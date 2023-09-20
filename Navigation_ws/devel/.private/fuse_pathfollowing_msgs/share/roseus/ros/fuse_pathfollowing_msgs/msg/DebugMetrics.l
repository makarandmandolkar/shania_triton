;; Auto-generated. Do not edit!


(when (boundp 'fuse_pathfollowing_msgs::DebugMetrics)
  (if (not (find-package "FUSE_PATHFOLLOWING_MSGS"))
    (make-package "FUSE_PATHFOLLOWING_MSGS"))
  (shadow 'DebugMetrics (find-package "FUSE_PATHFOLLOWING_MSGS")))
(unless (find-package "FUSE_PATHFOLLOWING_MSGS::DEBUGMETRICS")
  (make-package "FUSE_PATHFOLLOWING_MSGS::DEBUGMETRICS"))

(in-package "ROS")
;;//! \htmlinclude DebugMetrics.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fuse_pathfollowing_msgs::DebugMetrics
  :super ros::object
  :slots (_header _vehicle_navodom _vehicle_heading _vehicle_linear_speed _vehicle_body_vel _path_position _distance_along_path _desired_speed _safe_speed _current_speed _terminal_speed _path_heading _desired_heading _feed_forward_yawrate _alpha_nominal_heading _alpha_path_error _path_velocity _correction_velocity _nominal_speed _path_error _path_heading_error _desired_heading_error _dt _cmd_vel _yaw_pid _terminal_vel_pid _correction_vel_pid ))

(defmethod fuse_pathfollowing_msgs::DebugMetrics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_navodom __vehicle_navodom) (instance nav_msgs::Odometry :init))
    ((:vehicle_heading __vehicle_heading) 0.0)
    ((:vehicle_linear_speed __vehicle_linear_speed) 0.0)
    ((:vehicle_body_vel __vehicle_body_vel) (instance geometry_msgs::Vector3 :init))
    ((:path_position __path_position) (instance geometry_msgs::Point :init))
    ((:distance_along_path __distance_along_path) 0.0)
    ((:desired_speed __desired_speed) 0.0)
    ((:safe_speed __safe_speed) 0.0)
    ((:current_speed __current_speed) 0.0)
    ((:terminal_speed __terminal_speed) 0.0)
    ((:path_heading __path_heading) 0.0)
    ((:desired_heading __desired_heading) 0.0)
    ((:feed_forward_yawrate __feed_forward_yawrate) 0.0)
    ((:alpha_nominal_heading __alpha_nominal_heading) 0.0)
    ((:alpha_path_error __alpha_path_error) 0.0)
    ((:path_velocity __path_velocity) 0.0)
    ((:correction_velocity __correction_velocity) 0.0)
    ((:nominal_speed __nominal_speed) 0.0)
    ((:path_error __path_error) 0.0)
    ((:path_heading_error __path_heading_error) 0.0)
    ((:desired_heading_error __desired_heading_error) 0.0)
    ((:dt __dt) 0.0)
    ((:cmd_vel __cmd_vel) (instance geometry_msgs::Twist :init))
    ((:yaw_pid __yaw_pid) (instance fuse_pathfollowing_msgs::PIDMetrics :init))
    ((:terminal_vel_pid __terminal_vel_pid) (instance fuse_pathfollowing_msgs::PIDMetrics :init))
    ((:correction_vel_pid __correction_vel_pid) (instance fuse_pathfollowing_msgs::PIDMetrics :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_navodom __vehicle_navodom)
   (setq _vehicle_heading (float __vehicle_heading))
   (setq _vehicle_linear_speed (float __vehicle_linear_speed))
   (setq _vehicle_body_vel __vehicle_body_vel)
   (setq _path_position __path_position)
   (setq _distance_along_path (float __distance_along_path))
   (setq _desired_speed (float __desired_speed))
   (setq _safe_speed (float __safe_speed))
   (setq _current_speed (float __current_speed))
   (setq _terminal_speed (float __terminal_speed))
   (setq _path_heading (float __path_heading))
   (setq _desired_heading (float __desired_heading))
   (setq _feed_forward_yawrate (float __feed_forward_yawrate))
   (setq _alpha_nominal_heading (float __alpha_nominal_heading))
   (setq _alpha_path_error (float __alpha_path_error))
   (setq _path_velocity (float __path_velocity))
   (setq _correction_velocity (float __correction_velocity))
   (setq _nominal_speed (float __nominal_speed))
   (setq _path_error (float __path_error))
   (setq _path_heading_error (float __path_heading_error))
   (setq _desired_heading_error (float __desired_heading_error))
   (setq _dt (float __dt))
   (setq _cmd_vel __cmd_vel)
   (setq _yaw_pid __yaw_pid)
   (setq _terminal_vel_pid __terminal_vel_pid)
   (setq _correction_vel_pid __correction_vel_pid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicle_navodom
   (&rest __vehicle_navodom)
   (if (keywordp (car __vehicle_navodom))
       (send* _vehicle_navodom __vehicle_navodom)
     (progn
       (if __vehicle_navodom (setq _vehicle_navodom (car __vehicle_navodom)))
       _vehicle_navodom)))
  (:vehicle_heading
   (&optional __vehicle_heading)
   (if __vehicle_heading (setq _vehicle_heading __vehicle_heading)) _vehicle_heading)
  (:vehicle_linear_speed
   (&optional __vehicle_linear_speed)
   (if __vehicle_linear_speed (setq _vehicle_linear_speed __vehicle_linear_speed)) _vehicle_linear_speed)
  (:vehicle_body_vel
   (&rest __vehicle_body_vel)
   (if (keywordp (car __vehicle_body_vel))
       (send* _vehicle_body_vel __vehicle_body_vel)
     (progn
       (if __vehicle_body_vel (setq _vehicle_body_vel (car __vehicle_body_vel)))
       _vehicle_body_vel)))
  (:path_position
   (&rest __path_position)
   (if (keywordp (car __path_position))
       (send* _path_position __path_position)
     (progn
       (if __path_position (setq _path_position (car __path_position)))
       _path_position)))
  (:distance_along_path
   (&optional __distance_along_path)
   (if __distance_along_path (setq _distance_along_path __distance_along_path)) _distance_along_path)
  (:desired_speed
   (&optional __desired_speed)
   (if __desired_speed (setq _desired_speed __desired_speed)) _desired_speed)
  (:safe_speed
   (&optional __safe_speed)
   (if __safe_speed (setq _safe_speed __safe_speed)) _safe_speed)
  (:current_speed
   (&optional __current_speed)
   (if __current_speed (setq _current_speed __current_speed)) _current_speed)
  (:terminal_speed
   (&optional __terminal_speed)
   (if __terminal_speed (setq _terminal_speed __terminal_speed)) _terminal_speed)
  (:path_heading
   (&optional __path_heading)
   (if __path_heading (setq _path_heading __path_heading)) _path_heading)
  (:desired_heading
   (&optional __desired_heading)
   (if __desired_heading (setq _desired_heading __desired_heading)) _desired_heading)
  (:feed_forward_yawrate
   (&optional __feed_forward_yawrate)
   (if __feed_forward_yawrate (setq _feed_forward_yawrate __feed_forward_yawrate)) _feed_forward_yawrate)
  (:alpha_nominal_heading
   (&optional __alpha_nominal_heading)
   (if __alpha_nominal_heading (setq _alpha_nominal_heading __alpha_nominal_heading)) _alpha_nominal_heading)
  (:alpha_path_error
   (&optional __alpha_path_error)
   (if __alpha_path_error (setq _alpha_path_error __alpha_path_error)) _alpha_path_error)
  (:path_velocity
   (&optional __path_velocity)
   (if __path_velocity (setq _path_velocity __path_velocity)) _path_velocity)
  (:correction_velocity
   (&optional __correction_velocity)
   (if __correction_velocity (setq _correction_velocity __correction_velocity)) _correction_velocity)
  (:nominal_speed
   (&optional __nominal_speed)
   (if __nominal_speed (setq _nominal_speed __nominal_speed)) _nominal_speed)
  (:path_error
   (&optional __path_error)
   (if __path_error (setq _path_error __path_error)) _path_error)
  (:path_heading_error
   (&optional __path_heading_error)
   (if __path_heading_error (setq _path_heading_error __path_heading_error)) _path_heading_error)
  (:desired_heading_error
   (&optional __desired_heading_error)
   (if __desired_heading_error (setq _desired_heading_error __desired_heading_error)) _desired_heading_error)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:cmd_vel
   (&rest __cmd_vel)
   (if (keywordp (car __cmd_vel))
       (send* _cmd_vel __cmd_vel)
     (progn
       (if __cmd_vel (setq _cmd_vel (car __cmd_vel)))
       _cmd_vel)))
  (:yaw_pid
   (&rest __yaw_pid)
   (if (keywordp (car __yaw_pid))
       (send* _yaw_pid __yaw_pid)
     (progn
       (if __yaw_pid (setq _yaw_pid (car __yaw_pid)))
       _yaw_pid)))
  (:terminal_vel_pid
   (&rest __terminal_vel_pid)
   (if (keywordp (car __terminal_vel_pid))
       (send* _terminal_vel_pid __terminal_vel_pid)
     (progn
       (if __terminal_vel_pid (setq _terminal_vel_pid (car __terminal_vel_pid)))
       _terminal_vel_pid)))
  (:correction_vel_pid
   (&rest __correction_vel_pid)
   (if (keywordp (car __correction_vel_pid))
       (send* _correction_vel_pid __correction_vel_pid)
     (progn
       (if __correction_vel_pid (setq _correction_vel_pid (car __correction_vel_pid)))
       _correction_vel_pid)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_msgs/Odometry _vehicle_navodom
    (send _vehicle_navodom :serialization-length)
    ;; float64 _vehicle_heading
    8
    ;; float64 _vehicle_linear_speed
    8
    ;; geometry_msgs/Vector3 _vehicle_body_vel
    (send _vehicle_body_vel :serialization-length)
    ;; geometry_msgs/Point _path_position
    (send _path_position :serialization-length)
    ;; float64 _distance_along_path
    8
    ;; float64 _desired_speed
    8
    ;; float64 _safe_speed
    8
    ;; float64 _current_speed
    8
    ;; float64 _terminal_speed
    8
    ;; float64 _path_heading
    8
    ;; float64 _desired_heading
    8
    ;; float64 _feed_forward_yawrate
    8
    ;; float64 _alpha_nominal_heading
    8
    ;; float64 _alpha_path_error
    8
    ;; float64 _path_velocity
    8
    ;; float64 _correction_velocity
    8
    ;; float64 _nominal_speed
    8
    ;; float64 _path_error
    8
    ;; float64 _path_heading_error
    8
    ;; float64 _desired_heading_error
    8
    ;; float64 _dt
    8
    ;; geometry_msgs/Twist _cmd_vel
    (send _cmd_vel :serialization-length)
    ;; fuse_pathfollowing_msgs/PIDMetrics _yaw_pid
    (send _yaw_pid :serialization-length)
    ;; fuse_pathfollowing_msgs/PIDMetrics _terminal_vel_pid
    (send _terminal_vel_pid :serialization-length)
    ;; fuse_pathfollowing_msgs/PIDMetrics _correction_vel_pid
    (send _correction_vel_pid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_msgs/Odometry _vehicle_navodom
       (send _vehicle_navodom :serialize s)
     ;; float64 _vehicle_heading
       (sys::poke _vehicle_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vehicle_linear_speed
       (sys::poke _vehicle_linear_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _vehicle_body_vel
       (send _vehicle_body_vel :serialize s)
     ;; geometry_msgs/Point _path_position
       (send _path_position :serialize s)
     ;; float64 _distance_along_path
       (sys::poke _distance_along_path (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desired_speed
       (sys::poke _desired_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _safe_speed
       (sys::poke _safe_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_speed
       (sys::poke _current_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _terminal_speed
       (sys::poke _terminal_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _path_heading
       (sys::poke _path_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desired_heading
       (sys::poke _desired_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feed_forward_yawrate
       (sys::poke _feed_forward_yawrate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alpha_nominal_heading
       (sys::poke _alpha_nominal_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alpha_path_error
       (sys::poke _alpha_path_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _path_velocity
       (sys::poke _path_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _correction_velocity
       (sys::poke _correction_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _nominal_speed
       (sys::poke _nominal_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _path_error
       (sys::poke _path_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _path_heading_error
       (sys::poke _path_heading_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desired_heading_error
       (sys::poke _desired_heading_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Twist _cmd_vel
       (send _cmd_vel :serialize s)
     ;; fuse_pathfollowing_msgs/PIDMetrics _yaw_pid
       (send _yaw_pid :serialize s)
     ;; fuse_pathfollowing_msgs/PIDMetrics _terminal_vel_pid
       (send _terminal_vel_pid :serialize s)
     ;; fuse_pathfollowing_msgs/PIDMetrics _correction_vel_pid
       (send _correction_vel_pid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_msgs/Odometry _vehicle_navodom
     (send _vehicle_navodom :deserialize buf ptr-) (incf ptr- (send _vehicle_navodom :serialization-length))
   ;; float64 _vehicle_heading
     (setq _vehicle_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vehicle_linear_speed
     (setq _vehicle_linear_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _vehicle_body_vel
     (send _vehicle_body_vel :deserialize buf ptr-) (incf ptr- (send _vehicle_body_vel :serialization-length))
   ;; geometry_msgs/Point _path_position
     (send _path_position :deserialize buf ptr-) (incf ptr- (send _path_position :serialization-length))
   ;; float64 _distance_along_path
     (setq _distance_along_path (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desired_speed
     (setq _desired_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _safe_speed
     (setq _safe_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_speed
     (setq _current_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _terminal_speed
     (setq _terminal_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _path_heading
     (setq _path_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desired_heading
     (setq _desired_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feed_forward_yawrate
     (setq _feed_forward_yawrate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alpha_nominal_heading
     (setq _alpha_nominal_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alpha_path_error
     (setq _alpha_path_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _path_velocity
     (setq _path_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _correction_velocity
     (setq _correction_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _nominal_speed
     (setq _nominal_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _path_error
     (setq _path_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _path_heading_error
     (setq _path_heading_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desired_heading_error
     (setq _desired_heading_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dt
     (setq _dt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Twist _cmd_vel
     (send _cmd_vel :deserialize buf ptr-) (incf ptr- (send _cmd_vel :serialization-length))
   ;; fuse_pathfollowing_msgs/PIDMetrics _yaw_pid
     (send _yaw_pid :deserialize buf ptr-) (incf ptr- (send _yaw_pid :serialization-length))
   ;; fuse_pathfollowing_msgs/PIDMetrics _terminal_vel_pid
     (send _terminal_vel_pid :deserialize buf ptr-) (incf ptr- (send _terminal_vel_pid :serialization-length))
   ;; fuse_pathfollowing_msgs/PIDMetrics _correction_vel_pid
     (send _correction_vel_pid :deserialize buf ptr-) (incf ptr- (send _correction_vel_pid :serialization-length))
   ;;
   self)
  )

(setf (get fuse_pathfollowing_msgs::DebugMetrics :md5sum-) "e7936a8e5a90f165bce29007c47f74eb")
(setf (get fuse_pathfollowing_msgs::DebugMetrics :datatype-) "fuse_pathfollowing_msgs/DebugMetrics")
(setf (get fuse_pathfollowing_msgs::DebugMetrics :definition-)
      "Header header
# Robot state
nav_msgs/Odometry vehicle_navodom # Includes position, velocity, orientation, and angular velocity
float64 vehicle_heading # Heading in radians - Useful so we don't have to extract from quaternion
float64 vehicle_linear_speed # Linear speed in meters - Useful so we don't have to take the norm of the linear velocity vector
geometry_msgs/Vector3 vehicle_body_vel # Linear velocity in body frame - useful so we don't have to transform from a global frame
# Path info
geometry_msgs/Point path_position # XYZ position of the 
float64 distance_along_path # Distance traveled along the path
float64 desired_speed 
float64 safe_speed
float64 current_speed
float64 terminal_speed
float64 path_heading
float64 desired_heading
float64 feed_forward_yawrate
# Alpha velocity method
float64 alpha_nominal_heading
float64 alpha_path_error
float64 path_velocity
float64 correction_velocity
float64 nominal_speed

# Path error
float64 path_error
float64 path_heading_error
float64 desired_heading_error
# Control info
float64 dt
geometry_msgs/Twist cmd_vel
PIDMetrics yaw_pid
PIDMetrics terminal_vel_pid
PIDMetrics correction_vel_pid


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: fuse_pathfollowing_msgs/PIDMetrics
float64 p_effort
float64 i_effort
float64 d_effort
float64 total_effort
")



(provide :fuse_pathfollowing_msgs/DebugMetrics "e7936a8e5a90f165bce29007c47f74eb")


