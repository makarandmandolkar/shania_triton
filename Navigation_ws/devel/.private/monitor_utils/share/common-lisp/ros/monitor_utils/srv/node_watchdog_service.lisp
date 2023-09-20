; Auto-generated. Do not edit!


(cl:in-package monitor_utils-srv)


;//! \htmlinclude node_watchdog_service-request.msg.html

(cl:defclass <node_watchdog_service-request> (roslisp-msg-protocol:ros-message)
  ((node_name
    :reader node_name
    :initarg :node_name
    :type cl:string
    :initform "")
   (command_type_enum
    :reader command_type_enum
    :initarg :command_type_enum
    :type cl:fixnum
    :initform 0)
   (watch_rate
    :reader watch_rate
    :initarg :watch_rate
    :type cl:integer
    :initform 0)
   (startup_duration
    :reader startup_duration
    :initarg :startup_duration
    :type cl:integer
    :initform 0)
   (watched_topics_timeout
    :reader watched_topics_timeout
    :initarg :watched_topics_timeout
    :type cl:integer
    :initform 0)
   (watched_topics
    :reader watched_topics
    :initarg :watched_topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (reboot_on_hang
    :reader reboot_on_hang
    :initarg :reboot_on_hang
    :type cl:boolean
    :initform cl:nil)
   (reboot_on_death
    :reader reboot_on_death
    :initarg :reboot_on_death
    :type cl:boolean
    :initform cl:nil)
   (reboot_on_publish_timeout
    :reader reboot_on_publish_timeout
    :initarg :reboot_on_publish_timeout
    :type cl:boolean
    :initform cl:nil)
   (launch_script
    :reader launch_script
    :initarg :launch_script
    :type cl:string
    :initform ""))
)

(cl:defclass node_watchdog_service-request (<node_watchdog_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_watchdog_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_watchdog_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monitor_utils-srv:<node_watchdog_service-request> is deprecated: use monitor_utils-srv:node_watchdog_service-request instead.")))

(cl:ensure-generic-function 'node_name-val :lambda-list '(m))
(cl:defmethod node_name-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:node_name-val is deprecated.  Use monitor_utils-srv:node_name instead.")
  (node_name m))

(cl:ensure-generic-function 'command_type_enum-val :lambda-list '(m))
(cl:defmethod command_type_enum-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:command_type_enum-val is deprecated.  Use monitor_utils-srv:command_type_enum instead.")
  (command_type_enum m))

(cl:ensure-generic-function 'watch_rate-val :lambda-list '(m))
(cl:defmethod watch_rate-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:watch_rate-val is deprecated.  Use monitor_utils-srv:watch_rate instead.")
  (watch_rate m))

(cl:ensure-generic-function 'startup_duration-val :lambda-list '(m))
(cl:defmethod startup_duration-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:startup_duration-val is deprecated.  Use monitor_utils-srv:startup_duration instead.")
  (startup_duration m))

(cl:ensure-generic-function 'watched_topics_timeout-val :lambda-list '(m))
(cl:defmethod watched_topics_timeout-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:watched_topics_timeout-val is deprecated.  Use monitor_utils-srv:watched_topics_timeout instead.")
  (watched_topics_timeout m))

(cl:ensure-generic-function 'watched_topics-val :lambda-list '(m))
(cl:defmethod watched_topics-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:watched_topics-val is deprecated.  Use monitor_utils-srv:watched_topics instead.")
  (watched_topics m))

(cl:ensure-generic-function 'reboot_on_hang-val :lambda-list '(m))
(cl:defmethod reboot_on_hang-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:reboot_on_hang-val is deprecated.  Use monitor_utils-srv:reboot_on_hang instead.")
  (reboot_on_hang m))

(cl:ensure-generic-function 'reboot_on_death-val :lambda-list '(m))
(cl:defmethod reboot_on_death-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:reboot_on_death-val is deprecated.  Use monitor_utils-srv:reboot_on_death instead.")
  (reboot_on_death m))

(cl:ensure-generic-function 'reboot_on_publish_timeout-val :lambda-list '(m))
(cl:defmethod reboot_on_publish_timeout-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:reboot_on_publish_timeout-val is deprecated.  Use monitor_utils-srv:reboot_on_publish_timeout instead.")
  (reboot_on_publish_timeout m))

(cl:ensure-generic-function 'launch_script-val :lambda-list '(m))
(cl:defmethod launch_script-val ((m <node_watchdog_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:launch_script-val is deprecated.  Use monitor_utils-srv:launch_script instead.")
  (launch_script m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<node_watchdog_service-request>)))
    "Constants for message type '<node_watchdog_service-request>"
  '((:COMMAND_ADD_WATCHED_NODE . 1)
    (:COMMAND_REMOVE_WATCHED_NODE . 2)
    (:COMMAND_KILL_WATCHED_NODE . 3)
    (:COMMAND_LAUNCH_WATCHED_NODE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'node_watchdog_service-request)))
    "Constants for message type 'node_watchdog_service-request"
  '((:COMMAND_ADD_WATCHED_NODE . 1)
    (:COMMAND_REMOVE_WATCHED_NODE . 2)
    (:COMMAND_KILL_WATCHED_NODE . 3)
    (:COMMAND_LAUNCH_WATCHED_NODE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_watchdog_service-request>) ostream)
  "Serializes a message object of type '<node_watchdog_service-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_name))
  (cl:let* ((signed (cl:slot-value msg 'command_type_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'watch_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'startup_duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'watched_topics_timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'watched_topics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'watched_topics))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reboot_on_hang) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reboot_on_death) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reboot_on_publish_timeout) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'launch_script))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'launch_script))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_watchdog_service-request>) istream)
  "Deserializes a message object of type '<node_watchdog_service-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_type_enum) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'watch_rate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'startup_duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'watched_topics_timeout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'watched_topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'watched_topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:slot-value msg 'reboot_on_hang) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reboot_on_death) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reboot_on_publish_timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'launch_script) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'launch_script) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_watchdog_service-request>)))
  "Returns string type for a service object of type '<node_watchdog_service-request>"
  "monitor_utils/node_watchdog_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_watchdog_service-request)))
  "Returns string type for a service object of type 'node_watchdog_service-request"
  "monitor_utils/node_watchdog_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_watchdog_service-request>)))
  "Returns md5sum for a message object of type '<node_watchdog_service-request>"
  "966c5e764adcdb27f4f871b3066bf913")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_watchdog_service-request)))
  "Returns md5sum for a message object of type 'node_watchdog_service-request"
  "966c5e764adcdb27f4f871b3066bf913")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_watchdog_service-request>)))
  "Returns full string definition for message of type '<node_watchdog_service-request>"
  (cl:format cl:nil "#request~%string node_name~%int16 COMMAND_ADD_WATCHED_NODE=1~%int16 COMMAND_REMOVE_WATCHED_NODE=2~%int16 COMMAND_KILL_WATCHED_NODE=3~%int16 COMMAND_LAUNCH_WATCHED_NODE=4~%int16 command_type_enum~%~%# If you are adding a node, these values are used~%int32 watch_rate~%int32 startup_duration~%int32 watched_topics_timeout~%string[] watched_topics~%bool reboot_on_hang~%bool reboot_on_death~%bool reboot_on_publish_timeout~%string launch_script~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_watchdog_service-request)))
  "Returns full string definition for message of type 'node_watchdog_service-request"
  (cl:format cl:nil "#request~%string node_name~%int16 COMMAND_ADD_WATCHED_NODE=1~%int16 COMMAND_REMOVE_WATCHED_NODE=2~%int16 COMMAND_KILL_WATCHED_NODE=3~%int16 COMMAND_LAUNCH_WATCHED_NODE=4~%int16 command_type_enum~%~%# If you are adding a node, these values are used~%int32 watch_rate~%int32 startup_duration~%int32 watched_topics_timeout~%string[] watched_topics~%bool reboot_on_hang~%bool reboot_on_death~%bool reboot_on_publish_timeout~%string launch_script~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_watchdog_service-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node_name))
     2
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'watched_topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'launch_script))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_watchdog_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_watchdog_service-request
    (cl:cons ':node_name (node_name msg))
    (cl:cons ':command_type_enum (command_type_enum msg))
    (cl:cons ':watch_rate (watch_rate msg))
    (cl:cons ':startup_duration (startup_duration msg))
    (cl:cons ':watched_topics_timeout (watched_topics_timeout msg))
    (cl:cons ':watched_topics (watched_topics msg))
    (cl:cons ':reboot_on_hang (reboot_on_hang msg))
    (cl:cons ':reboot_on_death (reboot_on_death msg))
    (cl:cons ':reboot_on_publish_timeout (reboot_on_publish_timeout msg))
    (cl:cons ':launch_script (launch_script msg))
))
;//! \htmlinclude node_watchdog_service-response.msg.html

(cl:defclass <node_watchdog_service-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass node_watchdog_service-response (<node_watchdog_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_watchdog_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_watchdog_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monitor_utils-srv:<node_watchdog_service-response> is deprecated: use monitor_utils-srv:node_watchdog_service-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <node_watchdog_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-srv:success-val is deprecated.  Use monitor_utils-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_watchdog_service-response>) ostream)
  "Serializes a message object of type '<node_watchdog_service-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_watchdog_service-response>) istream)
  "Deserializes a message object of type '<node_watchdog_service-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_watchdog_service-response>)))
  "Returns string type for a service object of type '<node_watchdog_service-response>"
  "monitor_utils/node_watchdog_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_watchdog_service-response)))
  "Returns string type for a service object of type 'node_watchdog_service-response"
  "monitor_utils/node_watchdog_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_watchdog_service-response>)))
  "Returns md5sum for a message object of type '<node_watchdog_service-response>"
  "966c5e764adcdb27f4f871b3066bf913")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_watchdog_service-response)))
  "Returns md5sum for a message object of type 'node_watchdog_service-response"
  "966c5e764adcdb27f4f871b3066bf913")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_watchdog_service-response>)))
  "Returns full string definition for message of type '<node_watchdog_service-response>"
  (cl:format cl:nil "#response~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_watchdog_service-response)))
  "Returns full string definition for message of type 'node_watchdog_service-response"
  (cl:format cl:nil "#response~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_watchdog_service-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_watchdog_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_watchdog_service-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_watchdog_service)))
  'node_watchdog_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_watchdog_service)))
  'node_watchdog_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_watchdog_service)))
  "Returns string type for a service object of type '<node_watchdog_service>"
  "monitor_utils/node_watchdog_service")