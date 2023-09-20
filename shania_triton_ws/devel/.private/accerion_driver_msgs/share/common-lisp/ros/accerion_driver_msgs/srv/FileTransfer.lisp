; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude FileTransfer-request.msg.html

(cl:defclass <FileTransfer-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass FileTransfer-request (<FileTransfer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileTransfer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileTransfer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<FileTransfer-request> is deprecated: use accerion_driver_msgs-srv:FileTransfer-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <FileTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:path-val is deprecated.  Use accerion_driver_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileTransfer-request>) ostream)
  "Serializes a message object of type '<FileTransfer-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileTransfer-request>) istream)
  "Deserializes a message object of type '<FileTransfer-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileTransfer-request>)))
  "Returns string type for a service object of type '<FileTransfer-request>"
  "accerion_driver_msgs/FileTransferRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileTransfer-request)))
  "Returns string type for a service object of type 'FileTransfer-request"
  "accerion_driver_msgs/FileTransferRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileTransfer-request>)))
  "Returns md5sum for a message object of type '<FileTransfer-request>"
  "a6bc470520bc753be0bc358804c232a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileTransfer-request)))
  "Returns md5sum for a message object of type 'FileTransfer-request"
  "a6bc470520bc753be0bc358804c232a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileTransfer-request>)))
  "Returns full string definition for message of type '<FileTransfer-request>"
  (cl:format cl:nil "string path                 # Path where the file is located or should be stored~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileTransfer-request)))
  "Returns full string definition for message of type 'FileTransfer-request"
  (cl:format cl:nil "string path                 # Path where the file is located or should be stored~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileTransfer-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileTransfer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FileTransfer-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude FileTransfer-response.msg.html

(cl:defclass <FileTransfer-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass FileTransfer-response (<FileTransfer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FileTransfer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FileTransfer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<FileTransfer-response> is deprecated: use accerion_driver_msgs-srv:FileTransfer-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <FileTransfer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <FileTransfer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FileTransfer-response>) ostream)
  "Serializes a message object of type '<FileTransfer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FileTransfer-response>) istream)
  "Deserializes a message object of type '<FileTransfer-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FileTransfer-response>)))
  "Returns string type for a service object of type '<FileTransfer-response>"
  "accerion_driver_msgs/FileTransferResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileTransfer-response)))
  "Returns string type for a service object of type 'FileTransfer-response"
  "accerion_driver_msgs/FileTransferResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FileTransfer-response>)))
  "Returns md5sum for a message object of type '<FileTransfer-response>"
  "a6bc470520bc753be0bc358804c232a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FileTransfer-response)))
  "Returns md5sum for a message object of type 'FileTransfer-response"
  "a6bc470520bc753be0bc358804c232a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FileTransfer-response>)))
  "Returns full string definition for message of type '<FileTransfer-response>"
  (cl:format cl:nil "bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FileTransfer-response)))
  "Returns full string definition for message of type 'FileTransfer-response"
  (cl:format cl:nil "bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FileTransfer-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FileTransfer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FileTransfer-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FileTransfer)))
  'FileTransfer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FileTransfer)))
  'FileTransfer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FileTransfer)))
  "Returns string type for a service object of type '<FileTransfer>"
  "accerion_driver_msgs/FileTransfer")