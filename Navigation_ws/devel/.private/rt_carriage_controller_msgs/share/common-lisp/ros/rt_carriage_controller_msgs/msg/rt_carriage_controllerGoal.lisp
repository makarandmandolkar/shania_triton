; Auto-generated. Do not edit!


(cl:in-package rt_carriage_controller_msgs-msg)


;//! \htmlinclude rt_carriage_controllerGoal.msg.html

(cl:defclass <rt_carriage_controllerGoal> (roslisp-msg-protocol:ros-message)
  ((move_type_enum
    :reader move_type_enum
    :initarg :move_type_enum
    :type cl:integer
    :initform 0)
   (position_Goal
    :reader position_Goal
    :initarg :position_Goal
    :type cl:float
    :initform 0.0)
   (position_tolerance
    :reader position_tolerance
    :initarg :position_tolerance
    :type cl:float
    :initform 0.0)
   (mission_type_enum
    :reader mission_type_enum
    :initarg :mission_type_enum
    :type cl:integer
    :initform 0)
   (sensor_type_enum
    :reader sensor_type_enum
    :initarg :sensor_type_enum
    :type cl:integer
    :initform 0)
   (forktip_distance
    :reader forktip_distance
    :initarg :forktip_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass rt_carriage_controllerGoal (<rt_carriage_controllerGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rt_carriage_controllerGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rt_carriage_controllerGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_carriage_controller_msgs-msg:<rt_carriage_controllerGoal> is deprecated: use rt_carriage_controller_msgs-msg:rt_carriage_controllerGoal instead.")))

(cl:ensure-generic-function 'move_type_enum-val :lambda-list '(m))
(cl:defmethod move_type_enum-val ((m <rt_carriage_controllerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:move_type_enum-val is deprecated.  Use rt_carriage_controller_msgs-msg:move_type_enum instead.")
  (move_type_enum m))

(cl:ensure-generic-function 'position_Goal-val :lambda-list '(m))
(cl:defmethod position_Goal-val ((m <rt_carriage_controllerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:position_Goal-val is deprecated.  Use rt_carriage_controller_msgs-msg:position_Goal instead.")
  (position_Goal m))

(cl:ensure-generic-function 'position_tolerance-val :lambda-list '(m))
(cl:defmethod position_tolerance-val ((m <rt_carriage_controllerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:position_tolerance-val is deprecated.  Use rt_carriage_controller_msgs-msg:position_tolerance instead.")
  (position_tolerance m))

(cl:ensure-generic-function 'mission_type_enum-val :lambda-list '(m))
(cl:defmethod mission_type_enum-val ((m <rt_carriage_controllerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:mission_type_enum-val is deprecated.  Use rt_carriage_controller_msgs-msg:mission_type_enum instead.")
  (mission_type_enum m))

(cl:ensure-generic-function 'sensor_type_enum-val :lambda-list '(m))
(cl:defmethod sensor_type_enum-val ((m <rt_carriage_controllerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:sensor_type_enum-val is deprecated.  Use rt_carriage_controller_msgs-msg:sensor_type_enum instead.")
  (sensor_type_enum m))

(cl:ensure-generic-function 'forktip_distance-val :lambda-list '(m))
(cl:defmethod forktip_distance-val ((m <rt_carriage_controllerGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:forktip_distance-val is deprecated.  Use rt_carriage_controller_msgs-msg:forktip_distance instead.")
  (forktip_distance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<rt_carriage_controllerGoal>)))
    "Constants for message type '<rt_carriage_controllerGoal>"
  '((:MOVE_UNDEFINED_REQUEST . 0)
    (:MOVE_ABSOLUTE . 1)
    (:MOVE_RELATIVE . 2)
    (:CALIBRATE_REACH . 3)
    (:CALIBRATE_LIFT . 4)
    (:CALIBRATE_TILT . 5)
    (:CALIBRATE_SIDESHIFT . 6)
    (:MISSION_PICK . 1)
    (:MISSION_PLACE . 2)
    (:SENSOR_NO_SENSE . 7)
    (:SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE . 8)
    (:SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE . 9)
    (:SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE . 10)
    (:SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE . 11)
    (:SENSOR_LIFT_UNTIL_LASER_READING . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'rt_carriage_controllerGoal)))
    "Constants for message type 'rt_carriage_controllerGoal"
  '((:MOVE_UNDEFINED_REQUEST . 0)
    (:MOVE_ABSOLUTE . 1)
    (:MOVE_RELATIVE . 2)
    (:CALIBRATE_REACH . 3)
    (:CALIBRATE_LIFT . 4)
    (:CALIBRATE_TILT . 5)
    (:CALIBRATE_SIDESHIFT . 6)
    (:MISSION_PICK . 1)
    (:MISSION_PLACE . 2)
    (:SENSOR_NO_SENSE . 7)
    (:SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE . 8)
    (:SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE . 9)
    (:SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE . 10)
    (:SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE . 11)
    (:SENSOR_LIFT_UNTIL_LASER_READING . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rt_carriage_controllerGoal>) ostream)
  "Serializes a message object of type '<rt_carriage_controllerGoal>"
  (cl:let* ((signed (cl:slot-value msg 'move_type_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_Goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'mission_type_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sensor_type_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'forktip_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rt_carriage_controllerGoal>) istream)
  "Deserializes a message object of type '<rt_carriage_controllerGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_type_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_Goal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_tolerance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_type_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_type_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'forktip_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rt_carriage_controllerGoal>)))
  "Returns string type for a message object of type '<rt_carriage_controllerGoal>"
  "rt_carriage_controller_msgs/rt_carriage_controllerGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rt_carriage_controllerGoal)))
  "Returns string type for a message object of type 'rt_carriage_controllerGoal"
  "rt_carriage_controller_msgs/rt_carriage_controllerGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rt_carriage_controllerGoal>)))
  "Returns md5sum for a message object of type '<rt_carriage_controllerGoal>"
  "7e6c7501f66c1b8ed00a522d5a5aab57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rt_carriage_controllerGoal)))
  "Returns md5sum for a message object of type 'rt_carriage_controllerGoal"
  "7e6c7501f66c1b8ed00a522d5a5aab57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rt_carriage_controllerGoal>)))
  "Returns full string definition for message of type '<rt_carriage_controllerGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int32 MOVE_UNDEFINED_REQUEST=0~%int32 MOVE_ABSOLUTE      =1~%int32 MOVE_RELATIVE      =2~%int32 CALIBRATE_REACH    =3~%int32 CALIBRATE_LIFT     =4~%int32 CALIBRATE_TILT     =5~%int32 CALIBRATE_SIDESHIFT =6~%~%int32 move_type_enum~%~%float64 position_Goal~%float32 position_tolerance~%int32 mission_type_enum~%int32 MISSION_PICK = 1~%int32 MISSION_PLACE = 2~%int32 SENSOR_NO_SENSE                              =7~%int32 SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE     =8~%int32 SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE         =9~%int32 SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE  =10~%int32 SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE =11~%int32 SENSOR_LIFT_UNTIL_LASER_READING =12~%int32 sensor_type_enum~%~%float64 forktip_distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rt_carriage_controllerGoal)))
  "Returns full string definition for message of type 'rt_carriage_controllerGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int32 MOVE_UNDEFINED_REQUEST=0~%int32 MOVE_ABSOLUTE      =1~%int32 MOVE_RELATIVE      =2~%int32 CALIBRATE_REACH    =3~%int32 CALIBRATE_LIFT     =4~%int32 CALIBRATE_TILT     =5~%int32 CALIBRATE_SIDESHIFT =6~%~%int32 move_type_enum~%~%float64 position_Goal~%float32 position_tolerance~%int32 mission_type_enum~%int32 MISSION_PICK = 1~%int32 MISSION_PLACE = 2~%int32 SENSOR_NO_SENSE                              =7~%int32 SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE     =8~%int32 SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE         =9~%int32 SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE  =10~%int32 SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE =11~%int32 SENSOR_LIFT_UNTIL_LASER_READING =12~%int32 sensor_type_enum~%~%float64 forktip_distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rt_carriage_controllerGoal>))
  (cl:+ 0
     4
     8
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rt_carriage_controllerGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'rt_carriage_controllerGoal
    (cl:cons ':move_type_enum (move_type_enum msg))
    (cl:cons ':position_Goal (position_Goal msg))
    (cl:cons ':position_tolerance (position_tolerance msg))
    (cl:cons ':mission_type_enum (mission_type_enum msg))
    (cl:cons ':sensor_type_enum (sensor_type_enum msg))
    (cl:cons ':forktip_distance (forktip_distance msg))
))
