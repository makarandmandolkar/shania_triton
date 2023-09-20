; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude RequestCommand-request.msg.html

(cl:defclass <RequestCommand-request> (roslisp-msg-protocol:ros-message)
  ((request_command
    :reader request_command
    :initarg :request_command
    :type cl:string
    :initform ""))
)

(cl:defclass RequestCommand-request (<RequestCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<RequestCommand-request> is deprecated: use accerion_driver_msgs-srv:RequestCommand-request instead.")))

(cl:ensure-generic-function 'request_command-val :lambda-list '(m))
(cl:defmethod request_command-val ((m <RequestCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:request_command-val is deprecated.  Use accerion_driver_msgs-srv:request_command instead.")
  (request_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestCommand-request>) ostream)
  "Serializes a message object of type '<RequestCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request_command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestCommand-request>) istream)
  "Deserializes a message object of type '<RequestCommand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request_command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestCommand-request>)))
  "Returns string type for a service object of type '<RequestCommand-request>"
  "accerion_driver_msgs/RequestCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestCommand-request)))
  "Returns string type for a service object of type 'RequestCommand-request"
  "accerion_driver_msgs/RequestCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestCommand-request>)))
  "Returns md5sum for a message object of type '<RequestCommand-request>"
  "cf56f3660399cfb3343059395c1263ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestCommand-request)))
  "Returns md5sum for a message object of type 'RequestCommand-request"
  "cf56f3660399cfb3343059395c1263ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestCommand-request>)))
  "Returns full string definition for message of type '<RequestCommand-request>"
  (cl:format cl:nil "string request_command      # [map, etc] the desired info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestCommand-request)))
  "Returns full string definition for message of type 'RequestCommand-request"
  (cl:format cl:nil "string request_command      # [map, etc] the desired info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestCommand-request
    (cl:cons ':request_command (request_command msg))
))
;//! \htmlinclude RequestCommand-response.msg.html

(cl:defclass <RequestCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RequestCommand-response (<RequestCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<RequestCommand-response> is deprecated: use accerion_driver_msgs-srv:RequestCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RequestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RequestCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestCommand-response>) ostream)
  "Serializes a message object of type '<RequestCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestCommand-response>) istream)
  "Deserializes a message object of type '<RequestCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestCommand-response>)))
  "Returns string type for a service object of type '<RequestCommand-response>"
  "accerion_driver_msgs/RequestCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestCommand-response)))
  "Returns string type for a service object of type 'RequestCommand-response"
  "accerion_driver_msgs/RequestCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestCommand-response>)))
  "Returns md5sum for a message object of type '<RequestCommand-response>"
  "cf56f3660399cfb3343059395c1263ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestCommand-response)))
  "Returns md5sum for a message object of type 'RequestCommand-response"
  "cf56f3660399cfb3343059395c1263ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestCommand-response>)))
  "Returns full string definition for message of type '<RequestCommand-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestCommand-response)))
  "Returns full string definition for message of type 'RequestCommand-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestCommand-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestCommand)))
  'RequestCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestCommand)))
  'RequestCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestCommand)))
  "Returns string type for a service object of type '<RequestCommand>"
  "accerion_driver_msgs/RequestCommand")