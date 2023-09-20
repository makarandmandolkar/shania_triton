; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-msg)


;//! \htmlinclude mobile_robot_pick_and_placeResult.msg.html

(cl:defclass <mobile_robot_pick_and_placeResult> (roslisp-msg-protocol:ros-message)
  ((success_Result
    :reader success_Result
    :initarg :success_Result
    :type cl:boolean
    :initform cl:nil)
   (mission_complete_time
    :reader mission_complete_time
    :initarg :mission_complete_time
    :type cl:float
    :initform 0.0)
   (mission_distance
    :reader mission_distance
    :initarg :mission_distance
    :type cl:float
    :initform 0.0)
   (exceeded_distance
    :reader exceeded_distance
    :initarg :exceeded_distance
    :type cl:float
    :initform 0.0)
   (error_enum
    :reader error_enum
    :initarg :error_enum
    :type cl:integer
    :initform 0))
)

(cl:defclass mobile_robot_pick_and_placeResult (<mobile_robot_pick_and_placeResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mobile_robot_pick_and_placeResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mobile_robot_pick_and_placeResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-msg:<mobile_robot_pick_and_placeResult> is deprecated: use rt_mission_msgs-msg:mobile_robot_pick_and_placeResult instead.")))

(cl:ensure-generic-function 'success_Result-val :lambda-list '(m))
(cl:defmethod success_Result-val ((m <mobile_robot_pick_and_placeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:success_Result-val is deprecated.  Use rt_mission_msgs-msg:success_Result instead.")
  (success_Result m))

(cl:ensure-generic-function 'mission_complete_time-val :lambda-list '(m))
(cl:defmethod mission_complete_time-val ((m <mobile_robot_pick_and_placeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:mission_complete_time-val is deprecated.  Use rt_mission_msgs-msg:mission_complete_time instead.")
  (mission_complete_time m))

(cl:ensure-generic-function 'mission_distance-val :lambda-list '(m))
(cl:defmethod mission_distance-val ((m <mobile_robot_pick_and_placeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:mission_distance-val is deprecated.  Use rt_mission_msgs-msg:mission_distance instead.")
  (mission_distance m))

(cl:ensure-generic-function 'exceeded_distance-val :lambda-list '(m))
(cl:defmethod exceeded_distance-val ((m <mobile_robot_pick_and_placeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:exceeded_distance-val is deprecated.  Use rt_mission_msgs-msg:exceeded_distance instead.")
  (exceeded_distance m))

(cl:ensure-generic-function 'error_enum-val :lambda-list '(m))
(cl:defmethod error_enum-val ((m <mobile_robot_pick_and_placeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:error_enum-val is deprecated.  Use rt_mission_msgs-msg:error_enum instead.")
  (error_enum m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<mobile_robot_pick_and_placeResult>)))
    "Constants for message type '<mobile_robot_pick_and_placeResult>"
  '((:ERROR_GENERIC_ERROR . 0)
    (:ERROR_PALLET_NOT_FOUND . 1)
    (:ERROR_PALLET_OUT_OF_POSITION . 2)
    (:ERROR_PLACE_LOCATION_NOT_CLEAR . 3)
    (:ERROR_UNDEFINED_SENSOR_TYPE . 4)
    (:ERROR_CARRIAGE_MOTION_FAILED . 5)
    (:ERROR_NAVIGATION_ERROR . 6)
    (:ERROR_SAFETY_COMMUNICATION_ERROR . 7)
    (:ERROR_DEADMAN_TIMED_OUT . 8)
    (:ERROR_OVERSIZED_PAYLOAD . 9)
    (:ERROR_LOAD_ALREADY_ON_PALLET_FOR_PICK . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'mobile_robot_pick_and_placeResult)))
    "Constants for message type 'mobile_robot_pick_and_placeResult"
  '((:ERROR_GENERIC_ERROR . 0)
    (:ERROR_PALLET_NOT_FOUND . 1)
    (:ERROR_PALLET_OUT_OF_POSITION . 2)
    (:ERROR_PLACE_LOCATION_NOT_CLEAR . 3)
    (:ERROR_UNDEFINED_SENSOR_TYPE . 4)
    (:ERROR_CARRIAGE_MOTION_FAILED . 5)
    (:ERROR_NAVIGATION_ERROR . 6)
    (:ERROR_SAFETY_COMMUNICATION_ERROR . 7)
    (:ERROR_DEADMAN_TIMED_OUT . 8)
    (:ERROR_OVERSIZED_PAYLOAD . 9)
    (:ERROR_LOAD_ALREADY_ON_PALLET_FOR_PICK . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mobile_robot_pick_and_placeResult>) ostream)
  "Serializes a message object of type '<mobile_robot_pick_and_placeResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success_Result) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mission_complete_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mission_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'exceeded_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'error_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mobile_robot_pick_and_placeResult>) istream)
  "Deserializes a message object of type '<mobile_robot_pick_and_placeResult>"
    (cl:setf (cl:slot-value msg 'success_Result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mission_complete_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mission_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'exceeded_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mobile_robot_pick_and_placeResult>)))
  "Returns string type for a message object of type '<mobile_robot_pick_and_placeResult>"
  "rt_mission_msgs/mobile_robot_pick_and_placeResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mobile_robot_pick_and_placeResult)))
  "Returns string type for a message object of type 'mobile_robot_pick_and_placeResult"
  "rt_mission_msgs/mobile_robot_pick_and_placeResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mobile_robot_pick_and_placeResult>)))
  "Returns md5sum for a message object of type '<mobile_robot_pick_and_placeResult>"
  "ac52838d542856c95a94291f388cced0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mobile_robot_pick_and_placeResult)))
  "Returns md5sum for a message object of type 'mobile_robot_pick_and_placeResult"
  "ac52838d542856c95a94291f388cced0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mobile_robot_pick_and_placeResult>)))
  "Returns full string definition for message of type '<mobile_robot_pick_and_placeResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success_Result~%float32 mission_complete_time~%float32 mission_distance~%~%int32 ERROR_GENERIC_ERROR=0~%int32 ERROR_PALLET_NOT_FOUND=1~%int32 ERROR_PALLET_OUT_OF_POSITION=2~%int32 ERROR_PLACE_LOCATION_NOT_CLEAR=3~%int32 ERROR_UNDEFINED_SENSOR_TYPE=4~%int32 ERROR_CARRIAGE_MOTION_FAILED=5~%int32 ERROR_NAVIGATION_ERROR=6~%int32 ERROR_SAFETY_COMMUNICATION_ERROR=7~%int32 ERROR_DEADMAN_TIMED_OUT=8~%int32 ERROR_OVERSIZED_PAYLOAD=9~%int32 ERROR_LOAD_ALREADY_ON_PALLET_FOR_PICK=10~%~%float32 exceeded_distance~%int32 error_enum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mobile_robot_pick_and_placeResult)))
  "Returns full string definition for message of type 'mobile_robot_pick_and_placeResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success_Result~%float32 mission_complete_time~%float32 mission_distance~%~%int32 ERROR_GENERIC_ERROR=0~%int32 ERROR_PALLET_NOT_FOUND=1~%int32 ERROR_PALLET_OUT_OF_POSITION=2~%int32 ERROR_PLACE_LOCATION_NOT_CLEAR=3~%int32 ERROR_UNDEFINED_SENSOR_TYPE=4~%int32 ERROR_CARRIAGE_MOTION_FAILED=5~%int32 ERROR_NAVIGATION_ERROR=6~%int32 ERROR_SAFETY_COMMUNICATION_ERROR=7~%int32 ERROR_DEADMAN_TIMED_OUT=8~%int32 ERROR_OVERSIZED_PAYLOAD=9~%int32 ERROR_LOAD_ALREADY_ON_PALLET_FOR_PICK=10~%~%float32 exceeded_distance~%int32 error_enum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mobile_robot_pick_and_placeResult>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mobile_robot_pick_and_placeResult>))
  "Converts a ROS message object to a list"
  (cl:list 'mobile_robot_pick_and_placeResult
    (cl:cons ':success_Result (success_Result msg))
    (cl:cons ':mission_complete_time (mission_complete_time msg))
    (cl:cons ':mission_distance (mission_distance msg))
    (cl:cons ':exceeded_distance (exceeded_distance msg))
    (cl:cons ':error_enum (error_enum msg))
))
