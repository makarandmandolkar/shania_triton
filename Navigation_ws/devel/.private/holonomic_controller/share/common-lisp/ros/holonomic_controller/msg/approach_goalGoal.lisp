; Auto-generated. Do not edit!


(cl:in-package holonomic_controller-msg)


;//! \htmlinclude approach_goalGoal.msg.html

(cl:defclass <approach_goalGoal> (roslisp-msg-protocol:ros-message)
  ((goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (vehicle_pose
    :reader vehicle_pose
    :initarg :vehicle_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (min_turn_radius
    :reader min_turn_radius
    :initarg :min_turn_radius
    :type cl:float
    :initform 0.0)
   (approach_enum
    :reader approach_enum
    :initarg :approach_enum
    :type cl:integer
    :initform 0)
   (goal_tolerance
    :reader goal_tolerance
    :initarg :goal_tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass approach_goalGoal (<approach_goalGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <approach_goalGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'approach_goalGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name holonomic_controller-msg:<approach_goalGoal> is deprecated: use holonomic_controller-msg:approach_goalGoal instead.")))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <approach_goalGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:goal_pose-val is deprecated.  Use holonomic_controller-msg:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'vehicle_pose-val :lambda-list '(m))
(cl:defmethod vehicle_pose-val ((m <approach_goalGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:vehicle_pose-val is deprecated.  Use holonomic_controller-msg:vehicle_pose instead.")
  (vehicle_pose m))

(cl:ensure-generic-function 'min_turn_radius-val :lambda-list '(m))
(cl:defmethod min_turn_radius-val ((m <approach_goalGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:min_turn_radius-val is deprecated.  Use holonomic_controller-msg:min_turn_radius instead.")
  (min_turn_radius m))

(cl:ensure-generic-function 'approach_enum-val :lambda-list '(m))
(cl:defmethod approach_enum-val ((m <approach_goalGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:approach_enum-val is deprecated.  Use holonomic_controller-msg:approach_enum instead.")
  (approach_enum m))

(cl:ensure-generic-function 'goal_tolerance-val :lambda-list '(m))
(cl:defmethod goal_tolerance-val ((m <approach_goalGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:goal_tolerance-val is deprecated.  Use holonomic_controller-msg:goal_tolerance instead.")
  (goal_tolerance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<approach_goalGoal>)))
    "Constants for message type '<approach_goalGoal>"
  '((:UNDEFINED . 0)
    (:DRIVE_X . 1)
    (:DRIVE_Y . 2)
    (:ROTATE_Z . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'approach_goalGoal)))
    "Constants for message type 'approach_goalGoal"
  '((:UNDEFINED . 0)
    (:DRIVE_X . 1)
    (:DRIVE_Y . 2)
    (:ROTATE_Z . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <approach_goalGoal>) ostream)
  "Serializes a message object of type '<approach_goalGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_turn_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'approach_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <approach_goalGoal>) istream)
  "Deserializes a message object of type '<approach_goalGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_turn_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'approach_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_tolerance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<approach_goalGoal>)))
  "Returns string type for a message object of type '<approach_goalGoal>"
  "holonomic_controller/approach_goalGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'approach_goalGoal)))
  "Returns string type for a message object of type 'approach_goalGoal"
  "holonomic_controller/approach_goalGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<approach_goalGoal>)))
  "Returns md5sum for a message object of type '<approach_goalGoal>"
  "06b0f36a422cb4dd202e7db3401240d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'approach_goalGoal)))
  "Returns md5sum for a message object of type 'approach_goalGoal"
  "06b0f36a422cb4dd202e7db3401240d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<approach_goalGoal>)))
  "Returns full string definition for message of type '<approach_goalGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 UNDEFINED=0~%int32 DRIVE_X=1~%int32 DRIVE_Y=2~%int32 ROTATE_Z=3~%~%~%geometry_msgs/Pose goal_pose~%geometry_msgs/Pose vehicle_pose~%float32 min_turn_radius~%int32 approach_enum~%float32 goal_tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'approach_goalGoal)))
  "Returns full string definition for message of type 'approach_goalGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 UNDEFINED=0~%int32 DRIVE_X=1~%int32 DRIVE_Y=2~%int32 ROTATE_Z=3~%~%~%geometry_msgs/Pose goal_pose~%geometry_msgs/Pose vehicle_pose~%float32 min_turn_radius~%int32 approach_enum~%float32 goal_tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <approach_goalGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_pose))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <approach_goalGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'approach_goalGoal
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':vehicle_pose (vehicle_pose msg))
    (cl:cons ':min_turn_radius (min_turn_radius msg))
    (cl:cons ':approach_enum (approach_enum msg))
    (cl:cons ':goal_tolerance (goal_tolerance msg))
))
