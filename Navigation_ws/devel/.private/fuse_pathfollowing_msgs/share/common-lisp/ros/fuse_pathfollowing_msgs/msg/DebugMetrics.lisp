; Auto-generated. Do not edit!


(cl:in-package fuse_pathfollowing_msgs-msg)


;//! \htmlinclude DebugMetrics.msg.html

(cl:defclass <DebugMetrics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_navodom
    :reader vehicle_navodom
    :initarg :vehicle_navodom
    :type nav_msgs-msg:Odometry
    :initform (cl:make-instance 'nav_msgs-msg:Odometry))
   (vehicle_heading
    :reader vehicle_heading
    :initarg :vehicle_heading
    :type cl:float
    :initform 0.0)
   (vehicle_linear_speed
    :reader vehicle_linear_speed
    :initarg :vehicle_linear_speed
    :type cl:float
    :initform 0.0)
   (vehicle_body_vel
    :reader vehicle_body_vel
    :initarg :vehicle_body_vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (path_position
    :reader path_position
    :initarg :path_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (distance_along_path
    :reader distance_along_path
    :initarg :distance_along_path
    :type cl:float
    :initform 0.0)
   (desired_speed
    :reader desired_speed
    :initarg :desired_speed
    :type cl:float
    :initform 0.0)
   (safe_speed
    :reader safe_speed
    :initarg :safe_speed
    :type cl:float
    :initform 0.0)
   (current_speed
    :reader current_speed
    :initarg :current_speed
    :type cl:float
    :initform 0.0)
   (terminal_speed
    :reader terminal_speed
    :initarg :terminal_speed
    :type cl:float
    :initform 0.0)
   (path_heading
    :reader path_heading
    :initarg :path_heading
    :type cl:float
    :initform 0.0)
   (desired_heading
    :reader desired_heading
    :initarg :desired_heading
    :type cl:float
    :initform 0.0)
   (feed_forward_yawrate
    :reader feed_forward_yawrate
    :initarg :feed_forward_yawrate
    :type cl:float
    :initform 0.0)
   (alpha_nominal_heading
    :reader alpha_nominal_heading
    :initarg :alpha_nominal_heading
    :type cl:float
    :initform 0.0)
   (alpha_path_error
    :reader alpha_path_error
    :initarg :alpha_path_error
    :type cl:float
    :initform 0.0)
   (path_velocity
    :reader path_velocity
    :initarg :path_velocity
    :type cl:float
    :initform 0.0)
   (correction_velocity
    :reader correction_velocity
    :initarg :correction_velocity
    :type cl:float
    :initform 0.0)
   (nominal_speed
    :reader nominal_speed
    :initarg :nominal_speed
    :type cl:float
    :initform 0.0)
   (path_error
    :reader path_error
    :initarg :path_error
    :type cl:float
    :initform 0.0)
   (path_heading_error
    :reader path_heading_error
    :initarg :path_heading_error
    :type cl:float
    :initform 0.0)
   (desired_heading_error
    :reader desired_heading_error
    :initarg :desired_heading_error
    :type cl:float
    :initform 0.0)
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (cmd_vel
    :reader cmd_vel
    :initarg :cmd_vel
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (yaw_pid
    :reader yaw_pid
    :initarg :yaw_pid
    :type fuse_pathfollowing_msgs-msg:PIDMetrics
    :initform (cl:make-instance 'fuse_pathfollowing_msgs-msg:PIDMetrics))
   (terminal_vel_pid
    :reader terminal_vel_pid
    :initarg :terminal_vel_pid
    :type fuse_pathfollowing_msgs-msg:PIDMetrics
    :initform (cl:make-instance 'fuse_pathfollowing_msgs-msg:PIDMetrics))
   (correction_vel_pid
    :reader correction_vel_pid
    :initarg :correction_vel_pid
    :type fuse_pathfollowing_msgs-msg:PIDMetrics
    :initform (cl:make-instance 'fuse_pathfollowing_msgs-msg:PIDMetrics)))
)

(cl:defclass DebugMetrics (<DebugMetrics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugMetrics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugMetrics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fuse_pathfollowing_msgs-msg:<DebugMetrics> is deprecated: use fuse_pathfollowing_msgs-msg:DebugMetrics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:header-val is deprecated.  Use fuse_pathfollowing_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_navodom-val :lambda-list '(m))
(cl:defmethod vehicle_navodom-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:vehicle_navodom-val is deprecated.  Use fuse_pathfollowing_msgs-msg:vehicle_navodom instead.")
  (vehicle_navodom m))

(cl:ensure-generic-function 'vehicle_heading-val :lambda-list '(m))
(cl:defmethod vehicle_heading-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:vehicle_heading-val is deprecated.  Use fuse_pathfollowing_msgs-msg:vehicle_heading instead.")
  (vehicle_heading m))

(cl:ensure-generic-function 'vehicle_linear_speed-val :lambda-list '(m))
(cl:defmethod vehicle_linear_speed-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:vehicle_linear_speed-val is deprecated.  Use fuse_pathfollowing_msgs-msg:vehicle_linear_speed instead.")
  (vehicle_linear_speed m))

(cl:ensure-generic-function 'vehicle_body_vel-val :lambda-list '(m))
(cl:defmethod vehicle_body_vel-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:vehicle_body_vel-val is deprecated.  Use fuse_pathfollowing_msgs-msg:vehicle_body_vel instead.")
  (vehicle_body_vel m))

(cl:ensure-generic-function 'path_position-val :lambda-list '(m))
(cl:defmethod path_position-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:path_position-val is deprecated.  Use fuse_pathfollowing_msgs-msg:path_position instead.")
  (path_position m))

(cl:ensure-generic-function 'distance_along_path-val :lambda-list '(m))
(cl:defmethod distance_along_path-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:distance_along_path-val is deprecated.  Use fuse_pathfollowing_msgs-msg:distance_along_path instead.")
  (distance_along_path m))

(cl:ensure-generic-function 'desired_speed-val :lambda-list '(m))
(cl:defmethod desired_speed-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:desired_speed-val is deprecated.  Use fuse_pathfollowing_msgs-msg:desired_speed instead.")
  (desired_speed m))

(cl:ensure-generic-function 'safe_speed-val :lambda-list '(m))
(cl:defmethod safe_speed-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:safe_speed-val is deprecated.  Use fuse_pathfollowing_msgs-msg:safe_speed instead.")
  (safe_speed m))

(cl:ensure-generic-function 'current_speed-val :lambda-list '(m))
(cl:defmethod current_speed-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:current_speed-val is deprecated.  Use fuse_pathfollowing_msgs-msg:current_speed instead.")
  (current_speed m))

(cl:ensure-generic-function 'terminal_speed-val :lambda-list '(m))
(cl:defmethod terminal_speed-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:terminal_speed-val is deprecated.  Use fuse_pathfollowing_msgs-msg:terminal_speed instead.")
  (terminal_speed m))

(cl:ensure-generic-function 'path_heading-val :lambda-list '(m))
(cl:defmethod path_heading-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:path_heading-val is deprecated.  Use fuse_pathfollowing_msgs-msg:path_heading instead.")
  (path_heading m))

(cl:ensure-generic-function 'desired_heading-val :lambda-list '(m))
(cl:defmethod desired_heading-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:desired_heading-val is deprecated.  Use fuse_pathfollowing_msgs-msg:desired_heading instead.")
  (desired_heading m))

(cl:ensure-generic-function 'feed_forward_yawrate-val :lambda-list '(m))
(cl:defmethod feed_forward_yawrate-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:feed_forward_yawrate-val is deprecated.  Use fuse_pathfollowing_msgs-msg:feed_forward_yawrate instead.")
  (feed_forward_yawrate m))

(cl:ensure-generic-function 'alpha_nominal_heading-val :lambda-list '(m))
(cl:defmethod alpha_nominal_heading-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:alpha_nominal_heading-val is deprecated.  Use fuse_pathfollowing_msgs-msg:alpha_nominal_heading instead.")
  (alpha_nominal_heading m))

(cl:ensure-generic-function 'alpha_path_error-val :lambda-list '(m))
(cl:defmethod alpha_path_error-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:alpha_path_error-val is deprecated.  Use fuse_pathfollowing_msgs-msg:alpha_path_error instead.")
  (alpha_path_error m))

(cl:ensure-generic-function 'path_velocity-val :lambda-list '(m))
(cl:defmethod path_velocity-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:path_velocity-val is deprecated.  Use fuse_pathfollowing_msgs-msg:path_velocity instead.")
  (path_velocity m))

(cl:ensure-generic-function 'correction_velocity-val :lambda-list '(m))
(cl:defmethod correction_velocity-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:correction_velocity-val is deprecated.  Use fuse_pathfollowing_msgs-msg:correction_velocity instead.")
  (correction_velocity m))

(cl:ensure-generic-function 'nominal_speed-val :lambda-list '(m))
(cl:defmethod nominal_speed-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:nominal_speed-val is deprecated.  Use fuse_pathfollowing_msgs-msg:nominal_speed instead.")
  (nominal_speed m))

(cl:ensure-generic-function 'path_error-val :lambda-list '(m))
(cl:defmethod path_error-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:path_error-val is deprecated.  Use fuse_pathfollowing_msgs-msg:path_error instead.")
  (path_error m))

(cl:ensure-generic-function 'path_heading_error-val :lambda-list '(m))
(cl:defmethod path_heading_error-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:path_heading_error-val is deprecated.  Use fuse_pathfollowing_msgs-msg:path_heading_error instead.")
  (path_heading_error m))

(cl:ensure-generic-function 'desired_heading_error-val :lambda-list '(m))
(cl:defmethod desired_heading_error-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:desired_heading_error-val is deprecated.  Use fuse_pathfollowing_msgs-msg:desired_heading_error instead.")
  (desired_heading_error m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:dt-val is deprecated.  Use fuse_pathfollowing_msgs-msg:dt instead.")
  (dt m))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:cmd_vel-val is deprecated.  Use fuse_pathfollowing_msgs-msg:cmd_vel instead.")
  (cmd_vel m))

(cl:ensure-generic-function 'yaw_pid-val :lambda-list '(m))
(cl:defmethod yaw_pid-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:yaw_pid-val is deprecated.  Use fuse_pathfollowing_msgs-msg:yaw_pid instead.")
  (yaw_pid m))

(cl:ensure-generic-function 'terminal_vel_pid-val :lambda-list '(m))
(cl:defmethod terminal_vel_pid-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:terminal_vel_pid-val is deprecated.  Use fuse_pathfollowing_msgs-msg:terminal_vel_pid instead.")
  (terminal_vel_pid m))

(cl:ensure-generic-function 'correction_vel_pid-val :lambda-list '(m))
(cl:defmethod correction_vel_pid-val ((m <DebugMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:correction_vel_pid-val is deprecated.  Use fuse_pathfollowing_msgs-msg:correction_vel_pid instead.")
  (correction_vel_pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugMetrics>) ostream)
  "Serializes a message object of type '<DebugMetrics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_navodom) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vehicle_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vehicle_linear_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_body_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_along_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'desired_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'safe_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'terminal_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'path_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'desired_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'feed_forward_yawrate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'alpha_nominal_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'alpha_path_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'path_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'correction_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'nominal_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'path_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'path_heading_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'desired_heading_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'yaw_pid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'terminal_vel_pid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'correction_vel_pid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugMetrics>) istream)
  "Deserializes a message object of type '<DebugMetrics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_navodom) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_linear_speed) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_body_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_along_path) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'safe_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'terminal_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'path_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'feed_forward_yawrate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alpha_nominal_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alpha_path_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'path_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'correction_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nominal_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'path_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'path_heading_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_heading_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'yaw_pid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'terminal_vel_pid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'correction_vel_pid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugMetrics>)))
  "Returns string type for a message object of type '<DebugMetrics>"
  "fuse_pathfollowing_msgs/DebugMetrics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugMetrics)))
  "Returns string type for a message object of type 'DebugMetrics"
  "fuse_pathfollowing_msgs/DebugMetrics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugMetrics>)))
  "Returns md5sum for a message object of type '<DebugMetrics>"
  "e7936a8e5a90f165bce29007c47f74eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugMetrics)))
  "Returns md5sum for a message object of type 'DebugMetrics"
  "e7936a8e5a90f165bce29007c47f74eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugMetrics>)))
  "Returns full string definition for message of type '<DebugMetrics>"
  (cl:format cl:nil "Header header~%# Robot state~%nav_msgs/Odometry vehicle_navodom # Includes position, velocity, orientation, and angular velocity~%float64 vehicle_heading # Heading in radians - Useful so we don't have to extract from quaternion~%float64 vehicle_linear_speed # Linear speed in meters - Useful so we don't have to take the norm of the linear velocity vector~%geometry_msgs/Vector3 vehicle_body_vel # Linear velocity in body frame - useful so we don't have to transform from a global frame~%# Path info~%geometry_msgs/Point path_position # XYZ position of the ~%float64 distance_along_path # Distance traveled along the path~%float64 desired_speed ~%float64 safe_speed~%float64 current_speed~%float64 terminal_speed~%float64 path_heading~%float64 desired_heading~%float64 feed_forward_yawrate~%# Alpha velocity method~%float64 alpha_nominal_heading~%float64 alpha_path_error~%float64 path_velocity~%float64 correction_velocity~%float64 nominal_speed~%~%# Path error~%float64 path_error~%float64 path_heading_error~%float64 desired_heading_error~%# Control info~%float64 dt~%geometry_msgs/Twist cmd_vel~%PIDMetrics yaw_pid~%PIDMetrics terminal_vel_pid~%PIDMetrics correction_vel_pid~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: fuse_pathfollowing_msgs/PIDMetrics~%float64 p_effort~%float64 i_effort~%float64 d_effort~%float64 total_effort~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugMetrics)))
  "Returns full string definition for message of type 'DebugMetrics"
  (cl:format cl:nil "Header header~%# Robot state~%nav_msgs/Odometry vehicle_navodom # Includes position, velocity, orientation, and angular velocity~%float64 vehicle_heading # Heading in radians - Useful so we don't have to extract from quaternion~%float64 vehicle_linear_speed # Linear speed in meters - Useful so we don't have to take the norm of the linear velocity vector~%geometry_msgs/Vector3 vehicle_body_vel # Linear velocity in body frame - useful so we don't have to transform from a global frame~%# Path info~%geometry_msgs/Point path_position # XYZ position of the ~%float64 distance_along_path # Distance traveled along the path~%float64 desired_speed ~%float64 safe_speed~%float64 current_speed~%float64 terminal_speed~%float64 path_heading~%float64 desired_heading~%float64 feed_forward_yawrate~%# Alpha velocity method~%float64 alpha_nominal_heading~%float64 alpha_path_error~%float64 path_velocity~%float64 correction_velocity~%float64 nominal_speed~%~%# Path error~%float64 path_error~%float64 path_heading_error~%float64 desired_heading_error~%# Control info~%float64 dt~%geometry_msgs/Twist cmd_vel~%PIDMetrics yaw_pid~%PIDMetrics terminal_vel_pid~%PIDMetrics correction_vel_pid~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/Odometry~%# This represents an estimate of a position and velocity in free space.  ~%# The pose in this message should be specified in the coordinate frame given by header.frame_id.~%# The twist in this message should be specified in the coordinate frame given by the child_frame_id~%Header header~%string child_frame_id~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: fuse_pathfollowing_msgs/PIDMetrics~%float64 p_effort~%float64 i_effort~%float64 d_effort~%float64 total_effort~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugMetrics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_navodom))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_body_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_position))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'yaw_pid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'terminal_vel_pid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'correction_vel_pid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugMetrics>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugMetrics
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_navodom (vehicle_navodom msg))
    (cl:cons ':vehicle_heading (vehicle_heading msg))
    (cl:cons ':vehicle_linear_speed (vehicle_linear_speed msg))
    (cl:cons ':vehicle_body_vel (vehicle_body_vel msg))
    (cl:cons ':path_position (path_position msg))
    (cl:cons ':distance_along_path (distance_along_path msg))
    (cl:cons ':desired_speed (desired_speed msg))
    (cl:cons ':safe_speed (safe_speed msg))
    (cl:cons ':current_speed (current_speed msg))
    (cl:cons ':terminal_speed (terminal_speed msg))
    (cl:cons ':path_heading (path_heading msg))
    (cl:cons ':desired_heading (desired_heading msg))
    (cl:cons ':feed_forward_yawrate (feed_forward_yawrate msg))
    (cl:cons ':alpha_nominal_heading (alpha_nominal_heading msg))
    (cl:cons ':alpha_path_error (alpha_path_error msg))
    (cl:cons ':path_velocity (path_velocity msg))
    (cl:cons ':correction_velocity (correction_velocity msg))
    (cl:cons ':nominal_speed (nominal_speed msg))
    (cl:cons ':path_error (path_error msg))
    (cl:cons ':path_heading_error (path_heading_error msg))
    (cl:cons ':desired_heading_error (desired_heading_error msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':cmd_vel (cmd_vel msg))
    (cl:cons ':yaw_pid (yaw_pid msg))
    (cl:cons ':terminal_vel_pid (terminal_vel_pid msg))
    (cl:cons ':correction_vel_pid (correction_vel_pid msg))
))
