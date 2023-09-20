; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude ModeCommand-request.msg.html

(cl:defclass <ModeCommand-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass ModeCommand-request (<ModeCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<ModeCommand-request> is deprecated: use accerion_driver_msgs-srv:ModeCommand-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ModeCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:mode-val is deprecated.  Use accerion_driver_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <ModeCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:command-val is deprecated.  Use accerion_driver_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeCommand-request>) ostream)
  "Serializes a message object of type '<ModeCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeCommand-request>) istream)
  "Deserializes a message object of type '<ModeCommand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeCommand-request>)))
  "Returns string type for a service object of type '<ModeCommand-request>"
  "accerion_driver_msgs/ModeCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeCommand-request)))
  "Returns string type for a service object of type 'ModeCommand-request"
  "accerion_driver_msgs/ModeCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeCommand-request>)))
  "Returns md5sum for a message object of type '<ModeCommand-request>"
  "2d42a209d30cf50843fdee58cc43f4db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeCommand-request)))
  "Returns md5sum for a message object of type 'ModeCommand-request"
  "2d42a209d30cf50843fdee58cc43f4db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeCommand-request>)))
  "Returns full string definition for message of type '<ModeCommand-request>"
  (cl:format cl:nil "string mode                 # [localization, idle]~%string command              # [start, stop] the desired mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeCommand-request)))
  "Returns full string definition for message of type 'ModeCommand-request"
  (cl:format cl:nil "string mode                 # [localization, idle]~%string command              # [start, stop] the desired mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeCommand-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':command (command msg))
))
;//! \htmlinclude ModeCommand-response.msg.html

(cl:defclass <ModeCommand-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ModeCommand-response (<ModeCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<ModeCommand-response> is deprecated: use accerion_driver_msgs-srv:ModeCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ModeCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ModeCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeCommand-response>) ostream)
  "Serializes a message object of type '<ModeCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeCommand-response>) istream)
  "Deserializes a message object of type '<ModeCommand-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeCommand-response>)))
  "Returns string type for a service object of type '<ModeCommand-response>"
  "accerion_driver_msgs/ModeCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeCommand-response)))
  "Returns string type for a service object of type 'ModeCommand-response"
  "accerion_driver_msgs/ModeCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeCommand-response>)))
  "Returns md5sum for a message object of type '<ModeCommand-response>"
  "2d42a209d30cf50843fdee58cc43f4db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeCommand-response)))
  "Returns md5sum for a message object of type 'ModeCommand-response"
  "2d42a209d30cf50843fdee58cc43f4db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeCommand-response>)))
  "Returns full string definition for message of type '<ModeCommand-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeCommand-response)))
  "Returns full string definition for message of type 'ModeCommand-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeCommand-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModeCommand)))
  'ModeCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModeCommand)))
  'ModeCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeCommand)))
  "Returns string type for a service object of type '<ModeCommand>"
  "accerion_driver_msgs/ModeCommand")