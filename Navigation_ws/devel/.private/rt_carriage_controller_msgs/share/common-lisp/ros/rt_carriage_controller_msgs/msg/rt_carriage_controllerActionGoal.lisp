; Auto-generated. Do not edit!


(cl:in-package rt_carriage_controller_msgs-msg)


;//! \htmlinclude rt_carriage_controllerActionGoal.msg.html

(cl:defclass <rt_carriage_controllerActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type rt_carriage_controller_msgs-msg:rt_carriage_controllerGoal
    :initform (cl:make-instance 'rt_carriage_controller_msgs-msg:rt_carriage_controllerGoal)))
)

(cl:defclass rt_carriage_controllerActionGoal (<rt_carriage_controllerActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rt_carriage_controllerActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rt_carriage_controllerActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_carriage_controller_msgs-msg:<rt_carriage_controllerActionGoal> is deprecated: use rt_carriage_controller_msgs-msg:rt_carriage_controllerActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <rt_carriage_controllerActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:header-val is deprecated.  Use rt_carriage_controller_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <rt_carriage_controllerActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:goal_id-val is deprecated.  Use rt_carriage_controller_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <rt_carriage_controllerActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:goal-val is deprecated.  Use rt_carriage_controller_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rt_carriage_controllerActionGoal>) ostream)
  "Serializes a message object of type '<rt_carriage_controllerActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rt_carriage_controllerActionGoal>) istream)
  "Deserializes a message object of type '<rt_carriage_controllerActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rt_carriage_controllerActionGoal>)))
  "Returns string type for a message object of type '<rt_carriage_controllerActionGoal>"
  "rt_carriage_controller_msgs/rt_carriage_controllerActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rt_carriage_controllerActionGoal)))
  "Returns string type for a message object of type 'rt_carriage_controllerActionGoal"
  "rt_carriage_controller_msgs/rt_carriage_controllerActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rt_carriage_controllerActionGoal>)))
  "Returns md5sum for a message object of type '<rt_carriage_controllerActionGoal>"
  "99f4200c0241fe9d7f48f5ef61c850bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rt_carriage_controllerActionGoal)))
  "Returns md5sum for a message object of type 'rt_carriage_controllerActionGoal"
  "99f4200c0241fe9d7f48f5ef61c850bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rt_carriage_controllerActionGoal>)))
  "Returns full string definition for message of type '<rt_carriage_controllerActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%rt_carriage_controllerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: rt_carriage_controller_msgs/rt_carriage_controllerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int32 MOVE_UNDEFINED_REQUEST=0~%int32 MOVE_ABSOLUTE      =1~%int32 MOVE_RELATIVE      =2~%int32 CALIBRATE_REACH    =3~%int32 CALIBRATE_LIFT     =4~%int32 CALIBRATE_TILT     =5~%int32 CALIBRATE_SIDESHIFT =6~%~%int32 move_type_enum~%~%float64 position_Goal~%float32 position_tolerance~%int32 mission_type_enum~%int32 MISSION_PICK = 1~%int32 MISSION_PLACE = 2~%int32 SENSOR_NO_SENSE                              =7~%int32 SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE     =8~%int32 SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE         =9~%int32 SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE  =10~%int32 SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE =11~%int32 SENSOR_LIFT_UNTIL_LASER_READING =12~%int32 sensor_type_enum~%~%float64 forktip_distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rt_carriage_controllerActionGoal)))
  "Returns full string definition for message of type 'rt_carriage_controllerActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%rt_carriage_controllerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: rt_carriage_controller_msgs/rt_carriage_controllerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int32 MOVE_UNDEFINED_REQUEST=0~%int32 MOVE_ABSOLUTE      =1~%int32 MOVE_RELATIVE      =2~%int32 CALIBRATE_REACH    =3~%int32 CALIBRATE_LIFT     =4~%int32 CALIBRATE_TILT     =5~%int32 CALIBRATE_SIDESHIFT =6~%~%int32 move_type_enum~%~%float64 position_Goal~%float32 position_tolerance~%int32 mission_type_enum~%int32 MISSION_PICK = 1~%int32 MISSION_PLACE = 2~%int32 SENSOR_NO_SENSE                              =7~%int32 SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE     =8~%int32 SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE         =9~%int32 SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE  =10~%int32 SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE =11~%int32 SENSOR_LIFT_UNTIL_LASER_READING =12~%int32 sensor_type_enum~%~%float64 forktip_distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rt_carriage_controllerActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rt_carriage_controllerActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'rt_carriage_controllerActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
