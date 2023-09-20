; Auto-generated. Do not edit!


(cl:in-package rt_carriage_controller_msgs-msg)


;//! \htmlinclude rt_carriage_controllerResult.msg.html

(cl:defclass <rt_carriage_controllerResult> (roslisp-msg-protocol:ros-message)
  ((success_Result
    :reader success_Result
    :initarg :success_Result
    :type cl:boolean
    :initform cl:nil)
   (error_enum
    :reader error_enum
    :initarg :error_enum
    :type cl:integer
    :initform 0)
   (exceeded_distance
    :reader exceeded_distance
    :initarg :exceeded_distance
    :type cl:float
    :initform 0.0)
   (allowable_distance
    :reader allowable_distance
    :initarg :allowable_distance
    :type cl:float
    :initform 0.0)
   (final_position
    :reader final_position
    :initarg :final_position
    :type cl:float
    :initform 0.0))
)

(cl:defclass rt_carriage_controllerResult (<rt_carriage_controllerResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rt_carriage_controllerResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rt_carriage_controllerResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_carriage_controller_msgs-msg:<rt_carriage_controllerResult> is deprecated: use rt_carriage_controller_msgs-msg:rt_carriage_controllerResult instead.")))

(cl:ensure-generic-function 'success_Result-val :lambda-list '(m))
(cl:defmethod success_Result-val ((m <rt_carriage_controllerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:success_Result-val is deprecated.  Use rt_carriage_controller_msgs-msg:success_Result instead.")
  (success_Result m))

(cl:ensure-generic-function 'error_enum-val :lambda-list '(m))
(cl:defmethod error_enum-val ((m <rt_carriage_controllerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:error_enum-val is deprecated.  Use rt_carriage_controller_msgs-msg:error_enum instead.")
  (error_enum m))

(cl:ensure-generic-function 'exceeded_distance-val :lambda-list '(m))
(cl:defmethod exceeded_distance-val ((m <rt_carriage_controllerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:exceeded_distance-val is deprecated.  Use rt_carriage_controller_msgs-msg:exceeded_distance instead.")
  (exceeded_distance m))

(cl:ensure-generic-function 'allowable_distance-val :lambda-list '(m))
(cl:defmethod allowable_distance-val ((m <rt_carriage_controllerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:allowable_distance-val is deprecated.  Use rt_carriage_controller_msgs-msg:allowable_distance instead.")
  (allowable_distance m))

(cl:ensure-generic-function 'final_position-val :lambda-list '(m))
(cl:defmethod final_position-val ((m <rt_carriage_controllerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:final_position-val is deprecated.  Use rt_carriage_controller_msgs-msg:final_position instead.")
  (final_position m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<rt_carriage_controllerResult>)))
    "Constants for message type '<rt_carriage_controllerResult>"
  '((:ERROR_EXCEEDED_TRAVEL . 0)
    (:ERROR_TIMEOUT . 1)
    (:ERROR_UNDEFINED_MOVE_TYPE . 2)
    (:ERROR_UNDEFINED_SENSOR_TYPE . 3)
    (:ERROR_STALL_DETECTED . 4)
    (:ERROR_DEADMAN_IS_OFF . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'rt_carriage_controllerResult)))
    "Constants for message type 'rt_carriage_controllerResult"
  '((:ERROR_EXCEEDED_TRAVEL . 0)
    (:ERROR_TIMEOUT . 1)
    (:ERROR_UNDEFINED_MOVE_TYPE . 2)
    (:ERROR_UNDEFINED_SENSOR_TYPE . 3)
    (:ERROR_STALL_DETECTED . 4)
    (:ERROR_DEADMAN_IS_OFF . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rt_carriage_controllerResult>) ostream)
  "Serializes a message object of type '<rt_carriage_controllerResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success_Result) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'exceeded_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'allowable_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rt_carriage_controllerResult>) istream)
  "Deserializes a message object of type '<rt_carriage_controllerResult>"
    (cl:setf (cl:slot-value msg 'success_Result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'exceeded_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'allowable_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_position) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rt_carriage_controllerResult>)))
  "Returns string type for a message object of type '<rt_carriage_controllerResult>"
  "rt_carriage_controller_msgs/rt_carriage_controllerResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rt_carriage_controllerResult)))
  "Returns string type for a message object of type 'rt_carriage_controllerResult"
  "rt_carriage_controller_msgs/rt_carriage_controllerResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rt_carriage_controllerResult>)))
  "Returns md5sum for a message object of type '<rt_carriage_controllerResult>"
  "d9a785add0c2594557fbcf2f8da28b75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rt_carriage_controllerResult)))
  "Returns md5sum for a message object of type 'rt_carriage_controllerResult"
  "d9a785add0c2594557fbcf2f8da28b75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rt_carriage_controllerResult>)))
  "Returns full string definition for message of type '<rt_carriage_controllerResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success_Result~%~%int32 ERROR_EXCEEDED_TRAVEL=0~%int32 ERROR_TIMEOUT=1~%int32 ERROR_UNDEFINED_MOVE_TYPE=2~%int32 ERROR_UNDEFINED_SENSOR_TYPE=3~%int32 ERROR_STALL_DETECTED=4~%int32 ERROR_DEADMAN_IS_OFF=5~%~%int32 error_enum~%~%float64 exceeded_distance~%float64 allowable_distance~%float64 final_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rt_carriage_controllerResult)))
  "Returns full string definition for message of type 'rt_carriage_controllerResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%bool success_Result~%~%int32 ERROR_EXCEEDED_TRAVEL=0~%int32 ERROR_TIMEOUT=1~%int32 ERROR_UNDEFINED_MOVE_TYPE=2~%int32 ERROR_UNDEFINED_SENSOR_TYPE=3~%int32 ERROR_STALL_DETECTED=4~%int32 ERROR_DEADMAN_IS_OFF=5~%~%int32 error_enum~%~%float64 exceeded_distance~%float64 allowable_distance~%float64 final_position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rt_carriage_controllerResult>))
  (cl:+ 0
     1
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rt_carriage_controllerResult>))
  "Converts a ROS message object to a list"
  (cl:list 'rt_carriage_controllerResult
    (cl:cons ':success_Result (success_Result msg))
    (cl:cons ':error_enum (error_enum msg))
    (cl:cons ':exceeded_distance (exceeded_distance msg))
    (cl:cons ':allowable_distance (allowable_distance msg))
    (cl:cons ':final_position (final_position msg))
))
