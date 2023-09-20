; Auto-generated. Do not edit!


(cl:in-package holonomic_controller-msg)


;//! \htmlinclude approach_goalActionGoal.msg.html

(cl:defclass <approach_goalActionGoal> (roslisp-msg-protocol:ros-message)
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
    :type holonomic_controller-msg:approach_goalGoal
    :initform (cl:make-instance 'holonomic_controller-msg:approach_goalGoal)))
)

(cl:defclass approach_goalActionGoal (<approach_goalActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <approach_goalActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'approach_goalActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name holonomic_controller-msg:<approach_goalActionGoal> is deprecated: use holonomic_controller-msg:approach_goalActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <approach_goalActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:header-val is deprecated.  Use holonomic_controller-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <approach_goalActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:goal_id-val is deprecated.  Use holonomic_controller-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <approach_goalActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:goal-val is deprecated.  Use holonomic_controller-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <approach_goalActionGoal>) ostream)
  "Serializes a message object of type '<approach_goalActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <approach_goalActionGoal>) istream)
  "Deserializes a message object of type '<approach_goalActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<approach_goalActionGoal>)))
  "Returns string type for a message object of type '<approach_goalActionGoal>"
  "holonomic_controller/approach_goalActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'approach_goalActionGoal)))
  "Returns string type for a message object of type 'approach_goalActionGoal"
  "holonomic_controller/approach_goalActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<approach_goalActionGoal>)))
  "Returns md5sum for a message object of type '<approach_goalActionGoal>"
  "b9093159fa7c19129c5da2495a720bcd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'approach_goalActionGoal)))
  "Returns md5sum for a message object of type 'approach_goalActionGoal"
  "b9093159fa7c19129c5da2495a720bcd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<approach_goalActionGoal>)))
  "Returns full string definition for message of type '<approach_goalActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%approach_goalGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: holonomic_controller/approach_goalGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 UNDEFINED=0~%int32 DRIVE_X=1~%int32 DRIVE_Y=2~%int32 ROTATE_Z=3~%~%~%geometry_msgs/Pose goal_pose~%geometry_msgs/Pose vehicle_pose~%float32 min_turn_radius~%int32 approach_enum~%float32 goal_tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'approach_goalActionGoal)))
  "Returns full string definition for message of type 'approach_goalActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%approach_goalGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: holonomic_controller/approach_goalGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 UNDEFINED=0~%int32 DRIVE_X=1~%int32 DRIVE_Y=2~%int32 ROTATE_Z=3~%~%~%geometry_msgs/Pose goal_pose~%geometry_msgs/Pose vehicle_pose~%float32 min_turn_radius~%int32 approach_enum~%float32 goal_tolerance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <approach_goalActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <approach_goalActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'approach_goalActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
