; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude UDPSettings-request.msg.html

(cl:defclass <UDPSettings-request> (roslisp-msg-protocol:ros-message)
  ((unicast_ip_address_first
    :reader unicast_ip_address_first
    :initarg :unicast_ip_address_first
    :type cl:fixnum
    :initform 0)
   (unicast_ip_address_second
    :reader unicast_ip_address_second
    :initarg :unicast_ip_address_second
    :type cl:fixnum
    :initform 0)
   (unicast_ip_address_third
    :reader unicast_ip_address_third
    :initarg :unicast_ip_address_third
    :type cl:fixnum
    :initform 0)
   (unicast_ip_address_fourth
    :reader unicast_ip_address_fourth
    :initarg :unicast_ip_address_fourth
    :type cl:fixnum
    :initform 0)
   (message_type
    :reader message_type
    :initarg :message_type
    :type cl:fixnum
    :initform 0)
   (udp_mode
    :reader udp_mode
    :initarg :udp_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UDPSettings-request (<UDPSettings-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPSettings-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPSettings-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<UDPSettings-request> is deprecated: use accerion_driver_msgs-srv:UDPSettings-request instead.")))

(cl:ensure-generic-function 'unicast_ip_address_first-val :lambda-list '(m))
(cl:defmethod unicast_ip_address_first-val ((m <UDPSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:unicast_ip_address_first-val is deprecated.  Use accerion_driver_msgs-srv:unicast_ip_address_first instead.")
  (unicast_ip_address_first m))

(cl:ensure-generic-function 'unicast_ip_address_second-val :lambda-list '(m))
(cl:defmethod unicast_ip_address_second-val ((m <UDPSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:unicast_ip_address_second-val is deprecated.  Use accerion_driver_msgs-srv:unicast_ip_address_second instead.")
  (unicast_ip_address_second m))

(cl:ensure-generic-function 'unicast_ip_address_third-val :lambda-list '(m))
(cl:defmethod unicast_ip_address_third-val ((m <UDPSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:unicast_ip_address_third-val is deprecated.  Use accerion_driver_msgs-srv:unicast_ip_address_third instead.")
  (unicast_ip_address_third m))

(cl:ensure-generic-function 'unicast_ip_address_fourth-val :lambda-list '(m))
(cl:defmethod unicast_ip_address_fourth-val ((m <UDPSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:unicast_ip_address_fourth-val is deprecated.  Use accerion_driver_msgs-srv:unicast_ip_address_fourth instead.")
  (unicast_ip_address_fourth m))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <UDPSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message_type-val is deprecated.  Use accerion_driver_msgs-srv:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'udp_mode-val :lambda-list '(m))
(cl:defmethod udp_mode-val ((m <UDPSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:udp_mode-val is deprecated.  Use accerion_driver_msgs-srv:udp_mode instead.")
  (udp_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPSettings-request>) ostream)
  "Serializes a message object of type '<UDPSettings-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unicast_ip_address_first)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unicast_ip_address_second)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unicast_ip_address_third)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unicast_ip_address_fourth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udp_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPSettings-request>) istream)
  "Deserializes a message object of type '<UDPSettings-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unicast_ip_address_first)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unicast_ip_address_second)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unicast_ip_address_third)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'unicast_ip_address_fourth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'udp_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPSettings-request>)))
  "Returns string type for a service object of type '<UDPSettings-request>"
  "accerion_driver_msgs/UDPSettingsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPSettings-request)))
  "Returns string type for a service object of type 'UDPSettings-request"
  "accerion_driver_msgs/UDPSettingsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPSettings-request>)))
  "Returns md5sum for a message object of type '<UDPSettings-request>"
  "2c5d16ab87b6ce14cf7e308187a2cd86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPSettings-request)))
  "Returns md5sum for a message object of type 'UDPSettings-request"
  "2c5d16ab87b6ce14cf7e308187a2cd86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPSettings-request>)))
  "Returns full string definition for message of type '<UDPSettings-request>"
  (cl:format cl:nil "uint8 unicast_ip_address_first   # unicast target ip address first~%uint8 unicast_ip_address_second  # unicast target ip address second~%uint8 unicast_ip_address_third   # unicast target ip address third~%uint8 unicast_ip_address_fourth   # unicast target ip address fourth~%uint8  message_type         # 0x01: none, 0x02: only streaming, 0x03: only intermittent, 0x04: both streaming & intermittent messages~%uint8  udp_mode             # 0x01:Broadcast, 0x02:Unicast, 0x03:Unicast no HB  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPSettings-request)))
  "Returns full string definition for message of type 'UDPSettings-request"
  (cl:format cl:nil "uint8 unicast_ip_address_first   # unicast target ip address first~%uint8 unicast_ip_address_second  # unicast target ip address second~%uint8 unicast_ip_address_third   # unicast target ip address third~%uint8 unicast_ip_address_fourth   # unicast target ip address fourth~%uint8  message_type         # 0x01: none, 0x02: only streaming, 0x03: only intermittent, 0x04: both streaming & intermittent messages~%uint8  udp_mode             # 0x01:Broadcast, 0x02:Unicast, 0x03:Unicast no HB  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPSettings-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPSettings-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPSettings-request
    (cl:cons ':unicast_ip_address_first (unicast_ip_address_first msg))
    (cl:cons ':unicast_ip_address_second (unicast_ip_address_second msg))
    (cl:cons ':unicast_ip_address_third (unicast_ip_address_third msg))
    (cl:cons ':unicast_ip_address_fourth (unicast_ip_address_fourth msg))
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':udp_mode (udp_mode msg))
))
;//! \htmlinclude UDPSettings-response.msg.html

(cl:defclass <UDPSettings-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass UDPSettings-response (<UDPSettings-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UDPSettings-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UDPSettings-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<UDPSettings-response> is deprecated: use accerion_driver_msgs-srv:UDPSettings-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UDPSettings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <UDPSettings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UDPSettings-response>) ostream)
  "Serializes a message object of type '<UDPSettings-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UDPSettings-response>) istream)
  "Deserializes a message object of type '<UDPSettings-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UDPSettings-response>)))
  "Returns string type for a service object of type '<UDPSettings-response>"
  "accerion_driver_msgs/UDPSettingsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPSettings-response)))
  "Returns string type for a service object of type 'UDPSettings-response"
  "accerion_driver_msgs/UDPSettingsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UDPSettings-response>)))
  "Returns md5sum for a message object of type '<UDPSettings-response>"
  "2c5d16ab87b6ce14cf7e308187a2cd86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UDPSettings-response)))
  "Returns md5sum for a message object of type 'UDPSettings-response"
  "2c5d16ab87b6ce14cf7e308187a2cd86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UDPSettings-response>)))
  "Returns full string definition for message of type '<UDPSettings-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UDPSettings-response)))
  "Returns full string definition for message of type 'UDPSettings-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UDPSettings-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UDPSettings-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UDPSettings-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UDPSettings)))
  'UDPSettings-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UDPSettings)))
  'UDPSettings-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UDPSettings)))
  "Returns string type for a service object of type '<UDPSettings>"
  "accerion_driver_msgs/UDPSettings")