; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude Logs-request.msg.html

(cl:defclass <Logs-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (backupLogs
    :reader backupLogs
    :initarg :backupLogs
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Logs-request (<Logs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Logs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Logs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<Logs-request> is deprecated: use accerion_driver_msgs-srv:Logs-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <Logs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:path-val is deprecated.  Use accerion_driver_msgs-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'backupLogs-val :lambda-list '(m))
(cl:defmethod backupLogs-val ((m <Logs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:backupLogs-val is deprecated.  Use accerion_driver_msgs-srv:backupLogs instead.")
  (backupLogs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Logs-request>) ostream)
  "Serializes a message object of type '<Logs-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'backupLogs) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Logs-request>) istream)
  "Deserializes a message object of type '<Logs-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'backupLogs) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Logs-request>)))
  "Returns string type for a service object of type '<Logs-request>"
  "accerion_driver_msgs/LogsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Logs-request)))
  "Returns string type for a service object of type 'Logs-request"
  "accerion_driver_msgs/LogsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Logs-request>)))
  "Returns md5sum for a message object of type '<Logs-request>"
  "f7a75f40639a2346bf97e6154cb67762")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Logs-request)))
  "Returns md5sum for a message object of type 'Logs-request"
  "f7a75f40639a2346bf97e6154cb67762")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Logs-request>)))
  "Returns full string definition for message of type '<Logs-request>"
  (cl:format cl:nil "string path                 # Path where the logs should be stored~%bool backupLogs             # boolean, set to true if backup logs are to be retrieved.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Logs-request)))
  "Returns full string definition for message of type 'Logs-request"
  (cl:format cl:nil "string path                 # Path where the logs should be stored~%bool backupLogs             # boolean, set to true if backup logs are to be retrieved.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Logs-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Logs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Logs-request
    (cl:cons ':path (path msg))
    (cl:cons ':backupLogs (backupLogs msg))
))
;//! \htmlinclude Logs-response.msg.html

(cl:defclass <Logs-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Logs-response (<Logs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Logs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Logs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<Logs-response> is deprecated: use accerion_driver_msgs-srv:Logs-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Logs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Logs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Logs-response>) ostream)
  "Serializes a message object of type '<Logs-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Logs-response>) istream)
  "Deserializes a message object of type '<Logs-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Logs-response>)))
  "Returns string type for a service object of type '<Logs-response>"
  "accerion_driver_msgs/LogsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Logs-response)))
  "Returns string type for a service object of type 'Logs-response"
  "accerion_driver_msgs/LogsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Logs-response>)))
  "Returns md5sum for a message object of type '<Logs-response>"
  "f7a75f40639a2346bf97e6154cb67762")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Logs-response)))
  "Returns md5sum for a message object of type 'Logs-response"
  "f7a75f40639a2346bf97e6154cb67762")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Logs-response>)))
  "Returns full string definition for message of type '<Logs-response>"
  (cl:format cl:nil "bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Logs-response)))
  "Returns full string definition for message of type 'Logs-response"
  (cl:format cl:nil "bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Logs-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Logs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Logs-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Logs)))
  'Logs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Logs)))
  'Logs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Logs)))
  "Returns string type for a service object of type '<Logs>"
  "accerion_driver_msgs/Logs")