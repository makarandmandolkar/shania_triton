; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-msg)


;//! \htmlinclude user_input_request.msg.html

(cl:defclass <user_input_request> (roslisp-msg-protocol:ros-message)
  ((user_input_msg
    :reader user_input_msg
    :initarg :user_input_msg
    :type cl:string
    :initform "")
   (input_enum
    :reader input_enum
    :initarg :input_enum
    :type cl:integer
    :initform 0)
   (message_handeled
    :reader message_handeled
    :initarg :message_handeled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass user_input_request (<user_input_request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <user_input_request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'user_input_request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-msg:<user_input_request> is deprecated: use rt_mission_msgs-msg:user_input_request instead.")))

(cl:ensure-generic-function 'user_input_msg-val :lambda-list '(m))
(cl:defmethod user_input_msg-val ((m <user_input_request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:user_input_msg-val is deprecated.  Use rt_mission_msgs-msg:user_input_msg instead.")
  (user_input_msg m))

(cl:ensure-generic-function 'input_enum-val :lambda-list '(m))
(cl:defmethod input_enum-val ((m <user_input_request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:input_enum-val is deprecated.  Use rt_mission_msgs-msg:input_enum instead.")
  (input_enum m))

(cl:ensure-generic-function 'message_handeled-val :lambda-list '(m))
(cl:defmethod message_handeled-val ((m <user_input_request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:message_handeled-val is deprecated.  Use rt_mission_msgs-msg:message_handeled instead.")
  (message_handeled m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<user_input_request>)))
    "Constants for message type '<user_input_request>"
  '((:USER_INPUT_CONFIRMATION . 0)
    (:USER_INPUT_PICK_LOCATION . 1)
    (:USER_INPUT_PLACE_LOCATION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'user_input_request)))
    "Constants for message type 'user_input_request"
  '((:USER_INPUT_CONFIRMATION . 0)
    (:USER_INPUT_PICK_LOCATION . 1)
    (:USER_INPUT_PLACE_LOCATION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <user_input_request>) ostream)
  "Serializes a message object of type '<user_input_request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_input_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_input_msg))
  (cl:let* ((signed (cl:slot-value msg 'input_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'message_handeled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <user_input_request>) istream)
  "Deserializes a message object of type '<user_input_request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_input_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_input_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'message_handeled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<user_input_request>)))
  "Returns string type for a message object of type '<user_input_request>"
  "rt_mission_msgs/user_input_request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'user_input_request)))
  "Returns string type for a message object of type 'user_input_request"
  "rt_mission_msgs/user_input_request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<user_input_request>)))
  "Returns md5sum for a message object of type '<user_input_request>"
  "091c1a1726a1b2a56375b655091cb478")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'user_input_request)))
  "Returns md5sum for a message object of type 'user_input_request"
  "091c1a1726a1b2a56375b655091cb478")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<user_input_request>)))
  "Returns full string definition for message of type '<user_input_request>"
  (cl:format cl:nil "string user_input_msg~%int32 input_enum~%int32 USER_INPUT_CONFIRMATION=0~%int32 USER_INPUT_PICK_LOCATION=1~%int32 USER_INPUT_PLACE_LOCATION=2~%bool message_handeled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'user_input_request)))
  "Returns full string definition for message of type 'user_input_request"
  (cl:format cl:nil "string user_input_msg~%int32 input_enum~%int32 USER_INPUT_CONFIRMATION=0~%int32 USER_INPUT_PICK_LOCATION=1~%int32 USER_INPUT_PLACE_LOCATION=2~%bool message_handeled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <user_input_request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'user_input_msg))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <user_input_request>))
  "Converts a ROS message object to a list"
  (cl:list 'user_input_request
    (cl:cons ':user_input_msg (user_input_msg msg))
    (cl:cons ':input_enum (input_enum msg))
    (cl:cons ':message_handeled (message_handeled msg))
))
