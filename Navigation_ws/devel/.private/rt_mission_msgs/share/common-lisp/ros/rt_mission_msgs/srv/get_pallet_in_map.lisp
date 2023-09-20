; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-srv)


;//! \htmlinclude get_pallet_in_map-request.msg.html

(cl:defclass <get_pallet_in_map-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_pallet_in_map-request (<get_pallet_in_map-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_pallet_in_map-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_pallet_in_map-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<get_pallet_in_map-request> is deprecated: use rt_mission_msgs-srv:get_pallet_in_map-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_pallet_in_map-request>) ostream)
  "Serializes a message object of type '<get_pallet_in_map-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_pallet_in_map-request>) istream)
  "Deserializes a message object of type '<get_pallet_in_map-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_pallet_in_map-request>)))
  "Returns string type for a service object of type '<get_pallet_in_map-request>"
  "rt_mission_msgs/get_pallet_in_mapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_pallet_in_map-request)))
  "Returns string type for a service object of type 'get_pallet_in_map-request"
  "rt_mission_msgs/get_pallet_in_mapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_pallet_in_map-request>)))
  "Returns md5sum for a message object of type '<get_pallet_in_map-request>"
  "5b7bdcbe41ef056f4a2eded3510cbf51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_pallet_in_map-request)))
  "Returns md5sum for a message object of type 'get_pallet_in_map-request"
  "5b7bdcbe41ef056f4a2eded3510cbf51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_pallet_in_map-request>)))
  "Returns full string definition for message of type '<get_pallet_in_map-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_pallet_in_map-request)))
  "Returns full string definition for message of type 'get_pallet_in_map-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_pallet_in_map-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_pallet_in_map-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_pallet_in_map-request
))
;//! \htmlinclude get_pallet_in_map-response.msg.html

(cl:defclass <get_pallet_in_map-response> (roslisp-msg-protocol:ros-message)
  ((pallet_pose_in_map
    :reader pallet_pose_in_map
    :initarg :pallet_pose_in_map
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (confidence_value
    :reader confidence_value
    :initarg :confidence_value
    :type cl:float
    :initform 0.0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass get_pallet_in_map-response (<get_pallet_in_map-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_pallet_in_map-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_pallet_in_map-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<get_pallet_in_map-response> is deprecated: use rt_mission_msgs-srv:get_pallet_in_map-response instead.")))

(cl:ensure-generic-function 'pallet_pose_in_map-val :lambda-list '(m))
(cl:defmethod pallet_pose_in_map-val ((m <get_pallet_in_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:pallet_pose_in_map-val is deprecated.  Use rt_mission_msgs-srv:pallet_pose_in_map instead.")
  (pallet_pose_in_map m))

(cl:ensure-generic-function 'confidence_value-val :lambda-list '(m))
(cl:defmethod confidence_value-val ((m <get_pallet_in_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:confidence_value-val is deprecated.  Use rt_mission_msgs-srv:confidence_value instead.")
  (confidence_value m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <get_pallet_in_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:error_code-val is deprecated.  Use rt_mission_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <get_pallet_in_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:error_msg-val is deprecated.  Use rt_mission_msgs-srv:error_msg instead.")
  (error_msg m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <get_pallet_in_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:success-val is deprecated.  Use rt_mission_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_pallet_in_map-response>) ostream)
  "Serializes a message object of type '<get_pallet_in_map-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pallet_pose_in_map) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_pallet_in_map-response>) istream)
  "Deserializes a message object of type '<get_pallet_in_map-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pallet_pose_in_map) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_pallet_in_map-response>)))
  "Returns string type for a service object of type '<get_pallet_in_map-response>"
  "rt_mission_msgs/get_pallet_in_mapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_pallet_in_map-response)))
  "Returns string type for a service object of type 'get_pallet_in_map-response"
  "rt_mission_msgs/get_pallet_in_mapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_pallet_in_map-response>)))
  "Returns md5sum for a message object of type '<get_pallet_in_map-response>"
  "5b7bdcbe41ef056f4a2eded3510cbf51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_pallet_in_map-response)))
  "Returns md5sum for a message object of type 'get_pallet_in_map-response"
  "5b7bdcbe41ef056f4a2eded3510cbf51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_pallet_in_map-response>)))
  "Returns full string definition for message of type '<get_pallet_in_map-response>"
  (cl:format cl:nil "geometry_msgs/Pose pallet_pose_in_map~%float32 confidence_value~%int32 error_code~%string error_msg~%bool success~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_pallet_in_map-response)))
  "Returns full string definition for message of type 'get_pallet_in_map-response"
  (cl:format cl:nil "geometry_msgs/Pose pallet_pose_in_map~%float32 confidence_value~%int32 error_code~%string error_msg~%bool success~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_pallet_in_map-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pallet_pose_in_map))
     4
     4
     4 (cl:length (cl:slot-value msg 'error_msg))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_pallet_in_map-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_pallet_in_map-response
    (cl:cons ':pallet_pose_in_map (pallet_pose_in_map msg))
    (cl:cons ':confidence_value (confidence_value msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':error_msg (error_msg msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_pallet_in_map)))
  'get_pallet_in_map-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_pallet_in_map)))
  'get_pallet_in_map-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_pallet_in_map)))
  "Returns string type for a service object of type '<get_pallet_in_map>"
  "rt_mission_msgs/get_pallet_in_map")