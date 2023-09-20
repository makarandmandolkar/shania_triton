; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-msg)


;//! \htmlinclude rt_mission_queue.msg.html

(cl:defclass <rt_mission_queue> (roslisp-msg-protocol:ros-message)
  ((mission_queue
    :reader mission_queue
    :initarg :mission_queue
    :type (cl:vector rt_mission_msgs-msg:rt_mission)
   :initform (cl:make-array 0 :element-type 'rt_mission_msgs-msg:rt_mission :initial-element (cl:make-instance 'rt_mission_msgs-msg:rt_mission)))
   (mission_queue_index
    :reader mission_queue_index
    :initarg :mission_queue_index
    :type cl:integer
    :initform 0))
)

(cl:defclass rt_mission_queue (<rt_mission_queue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rt_mission_queue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rt_mission_queue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-msg:<rt_mission_queue> is deprecated: use rt_mission_msgs-msg:rt_mission_queue instead.")))

(cl:ensure-generic-function 'mission_queue-val :lambda-list '(m))
(cl:defmethod mission_queue-val ((m <rt_mission_queue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:mission_queue-val is deprecated.  Use rt_mission_msgs-msg:mission_queue instead.")
  (mission_queue m))

(cl:ensure-generic-function 'mission_queue_index-val :lambda-list '(m))
(cl:defmethod mission_queue_index-val ((m <rt_mission_queue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:mission_queue_index-val is deprecated.  Use rt_mission_msgs-msg:mission_queue_index instead.")
  (mission_queue_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rt_mission_queue>) ostream)
  "Serializes a message object of type '<rt_mission_queue>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mission_queue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mission_queue))
  (cl:let* ((signed (cl:slot-value msg 'mission_queue_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rt_mission_queue>) istream)
  "Deserializes a message object of type '<rt_mission_queue>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mission_queue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mission_queue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rt_mission_msgs-msg:rt_mission))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_queue_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rt_mission_queue>)))
  "Returns string type for a message object of type '<rt_mission_queue>"
  "rt_mission_msgs/rt_mission_queue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rt_mission_queue)))
  "Returns string type for a message object of type 'rt_mission_queue"
  "rt_mission_msgs/rt_mission_queue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rt_mission_queue>)))
  "Returns md5sum for a message object of type '<rt_mission_queue>"
  "ca28651d6271b7ac52eca2ec6cfb8a4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rt_mission_queue)))
  "Returns md5sum for a message object of type 'rt_mission_queue"
  "ca28651d6271b7ac52eca2ec6cfb8a4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rt_mission_queue>)))
  "Returns full string definition for message of type '<rt_mission_queue>"
  (cl:format cl:nil "rt_mission_msgs/rt_mission[] mission_queue~%int32 mission_queue_index~%~%================================================================================~%MSG: rt_mission_msgs/rt_mission~%int32 task_enum~%int32 TASK_PICK_AND_PLACE=0~%int32 TASK_PICK=1~%int32 TASK_PLACE=2~%int32 TASK_CHARGE_ROBOT=3~%string status~%string pick_location_name~%string place_location_name~%string pick_stage_name~%string place_stage_name~%geometry_msgs/Pose pick_location~%geometry_msgs/Pose pick_stage_location~%geometry_msgs/Pose place_location~%geometry_msgs/Pose place_stage_location~%string pallet_id~%float32 pick_slot_height~%float32 place_slot_height~%string pick_approach_direction~%string place_approach_direction~%string pick_edge_case_direction~%string place_edge_case_direction~%bool priority~%bool payload_dimension~%float32 mission_complete_time~%float32 mission_distance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rt_mission_queue)))
  "Returns full string definition for message of type 'rt_mission_queue"
  (cl:format cl:nil "rt_mission_msgs/rt_mission[] mission_queue~%int32 mission_queue_index~%~%================================================================================~%MSG: rt_mission_msgs/rt_mission~%int32 task_enum~%int32 TASK_PICK_AND_PLACE=0~%int32 TASK_PICK=1~%int32 TASK_PLACE=2~%int32 TASK_CHARGE_ROBOT=3~%string status~%string pick_location_name~%string place_location_name~%string pick_stage_name~%string place_stage_name~%geometry_msgs/Pose pick_location~%geometry_msgs/Pose pick_stage_location~%geometry_msgs/Pose place_location~%geometry_msgs/Pose place_stage_location~%string pallet_id~%float32 pick_slot_height~%float32 place_slot_height~%string pick_approach_direction~%string place_approach_direction~%string pick_edge_case_direction~%string place_edge_case_direction~%bool priority~%bool payload_dimension~%float32 mission_complete_time~%float32 mission_distance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rt_mission_queue>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mission_queue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rt_mission_queue>))
  "Converts a ROS message object to a list"
  (cl:list 'rt_mission_queue
    (cl:cons ':mission_queue (mission_queue msg))
    (cl:cons ':mission_queue_index (mission_queue_index msg))
))
