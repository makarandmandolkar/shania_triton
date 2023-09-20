; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude SetIP-request.msg.html

(cl:defclass <SetIP-request> (roslisp-msg-protocol:ros-message)
  ((ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform "")
   (netmask
    :reader netmask
    :initarg :netmask
    :type cl:string
    :initform "")
   (gateway
    :reader gateway
    :initarg :gateway
    :type cl:string
    :initform ""))
)

(cl:defclass SetIP-request (<SetIP-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIP-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIP-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<SetIP-request> is deprecated: use accerion_driver_msgs-srv:SetIP-request instead.")))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <SetIP-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:ip-val is deprecated.  Use accerion_driver_msgs-srv:ip instead.")
  (ip m))

(cl:ensure-generic-function 'netmask-val :lambda-list '(m))
(cl:defmethod netmask-val ((m <SetIP-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:netmask-val is deprecated.  Use accerion_driver_msgs-srv:netmask instead.")
  (netmask m))

(cl:ensure-generic-function 'gateway-val :lambda-list '(m))
(cl:defmethod gateway-val ((m <SetIP-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:gateway-val is deprecated.  Use accerion_driver_msgs-srv:gateway instead.")
  (gateway m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIP-request>) ostream)
  "Serializes a message object of type '<SetIP-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'netmask))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'netmask))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gateway))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gateway))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIP-request>) istream)
  "Deserializes a message object of type '<SetIP-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'netmask) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'netmask) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gateway) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gateway) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIP-request>)))
  "Returns string type for a service object of type '<SetIP-request>"
  "accerion_driver_msgs/SetIPRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIP-request)))
  "Returns string type for a service object of type 'SetIP-request"
  "accerion_driver_msgs/SetIPRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIP-request>)))
  "Returns md5sum for a message object of type '<SetIP-request>"
  "9c529b52af66afe4e5b172389c998e06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIP-request)))
  "Returns md5sum for a message object of type 'SetIP-request"
  "9c529b52af66afe4e5b172389c998e06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIP-request>)))
  "Returns full string definition for message of type '<SetIP-request>"
  (cl:format cl:nil "string ip                   # e.g. 192.168.2.10~%string netmask              # e.g. 255.255.255.0~%string gateway              # e.g. 192.168.2.0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIP-request)))
  "Returns full string definition for message of type 'SetIP-request"
  (cl:format cl:nil "string ip                   # e.g. 192.168.2.10~%string netmask              # e.g. 255.255.255.0~%string gateway              # e.g. 192.168.2.0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIP-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ip))
     4 (cl:length (cl:slot-value msg 'netmask))
     4 (cl:length (cl:slot-value msg 'gateway))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIP-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIP-request
    (cl:cons ':ip (ip msg))
    (cl:cons ':netmask (netmask msg))
    (cl:cons ':gateway (gateway msg))
))
;//! \htmlinclude SetIP-response.msg.html

(cl:defclass <SetIP-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetIP-response (<SetIP-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIP-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIP-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<SetIP-response> is deprecated: use accerion_driver_msgs-srv:SetIP-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetIP-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetIP-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIP-response>) ostream)
  "Serializes a message object of type '<SetIP-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIP-response>) istream)
  "Deserializes a message object of type '<SetIP-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIP-response>)))
  "Returns string type for a service object of type '<SetIP-response>"
  "accerion_driver_msgs/SetIPResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIP-response)))
  "Returns string type for a service object of type 'SetIP-response"
  "accerion_driver_msgs/SetIPResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIP-response>)))
  "Returns md5sum for a message object of type '<SetIP-response>"
  "9c529b52af66afe4e5b172389c998e06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIP-response)))
  "Returns md5sum for a message object of type 'SetIP-response"
  "9c529b52af66afe4e5b172389c998e06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIP-response>)))
  "Returns full string definition for message of type '<SetIP-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIP-response)))
  "Returns full string definition for message of type 'SetIP-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIP-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIP-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIP-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIP)))
  'SetIP-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIP)))
  'SetIP-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIP)))
  "Returns string type for a service object of type '<SetIP>"
  "accerion_driver_msgs/SetIP")