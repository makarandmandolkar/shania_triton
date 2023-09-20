; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude ModeClusterCommand-request.msg.html

(cl:defclass <ModeClusterCommand-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (cluster_id
    :reader cluster_id
    :initarg :cluster_id
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass ModeClusterCommand-request (<ModeClusterCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeClusterCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeClusterCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<ModeClusterCommand-request> is deprecated: use accerion_driver_msgs-srv:ModeClusterCommand-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ModeClusterCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:mode-val is deprecated.  Use accerion_driver_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'cluster_id-val :lambda-list '(m))
(cl:defmethod cluster_id-val ((m <ModeClusterCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:cluster_id-val is deprecated.  Use accerion_driver_msgs-srv:cluster_id instead.")
  (cluster_id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <ModeClusterCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:command-val is deprecated.  Use accerion_driver_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeClusterCommand-request>) ostream)
  "Serializes a message object of type '<ModeClusterCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let* ((signed (cl:slot-value msg 'cluster_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeClusterCommand-request>) istream)
  "Deserializes a message object of type '<ModeClusterCommand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cluster_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeClusterCommand-request>)))
  "Returns string type for a service object of type '<ModeClusterCommand-request>"
  "accerion_driver_msgs/ModeClusterCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeClusterCommand-request)))
  "Returns string type for a service object of type 'ModeClusterCommand-request"
  "accerion_driver_msgs/ModeClusterCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeClusterCommand-request>)))
  "Returns md5sum for a message object of type '<ModeClusterCommand-request>"
  "d1a13bdeb427203b52a0cb8459e490cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeClusterCommand-request)))
  "Returns md5sum for a message object of type 'ModeClusterCommand-request"
  "d1a13bdeb427203b52a0cb8459e490cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeClusterCommand-request>)))
  "Returns full string definition for message of type '<ModeClusterCommand-request>"
  (cl:format cl:nil "string mode                 # [mapping, active_mapping, line_following]~%int32 cluster_id			# specify the cluster id. This can be used at the start of mapping, line following mode etc~%string command              # [start, stop] the desired mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeClusterCommand-request)))
  "Returns full string definition for message of type 'ModeClusterCommand-request"
  (cl:format cl:nil "string mode                 # [mapping, active_mapping, line_following]~%int32 cluster_id			# specify the cluster id. This can be used at the start of mapping, line following mode etc~%string command              # [start, stop] the desired mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeClusterCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeClusterCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeClusterCommand-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':cluster_id (cluster_id msg))
    (cl:cons ':command (command msg))
))
;//! \htmlinclude ModeClusterCommand-response.msg.html

(cl:defclass <ModeClusterCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ModeClusterCommand-response (<ModeClusterCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeClusterCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeClusterCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<ModeClusterCommand-response> is deprecated: use accerion_driver_msgs-srv:ModeClusterCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ModeClusterCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ModeClusterCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeClusterCommand-response>) ostream)
  "Serializes a message object of type '<ModeClusterCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeClusterCommand-response>) istream)
  "Deserializes a message object of type '<ModeClusterCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeClusterCommand-response>)))
  "Returns string type for a service object of type '<ModeClusterCommand-response>"
  "accerion_driver_msgs/ModeClusterCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeClusterCommand-response)))
  "Returns string type for a service object of type 'ModeClusterCommand-response"
  "accerion_driver_msgs/ModeClusterCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeClusterCommand-response>)))
  "Returns md5sum for a message object of type '<ModeClusterCommand-response>"
  "d1a13bdeb427203b52a0cb8459e490cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeClusterCommand-response)))
  "Returns md5sum for a message object of type 'ModeClusterCommand-response"
  "d1a13bdeb427203b52a0cb8459e490cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeClusterCommand-response>)))
  "Returns full string definition for message of type '<ModeClusterCommand-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeClusterCommand-response)))
  "Returns full string definition for message of type 'ModeClusterCommand-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeClusterCommand-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeClusterCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeClusterCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModeClusterCommand)))
  'ModeClusterCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModeClusterCommand)))
  'ModeClusterCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeClusterCommand)))
  "Returns string type for a service object of type '<ModeClusterCommand>"
  "accerion_driver_msgs/ModeClusterCommand")