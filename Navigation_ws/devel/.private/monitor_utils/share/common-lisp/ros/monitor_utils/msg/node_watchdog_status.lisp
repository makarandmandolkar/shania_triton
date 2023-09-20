; Auto-generated. Do not edit!


(cl:in-package monitor_utils-msg)


;//! \htmlinclude node_watchdog_status.msg.html

(cl:defclass <node_watchdog_status> (roslisp-msg-protocol:ros-message)
  ((sequence
    :reader sequence
    :initarg :sequence
    :type cl:integer
    :initform 0)
   (my_node_name
    :reader my_node_name
    :initarg :my_node_name
    :type cl:string
    :initform "")
   (ros_master_uri
    :reader ros_master_uri
    :initarg :ros_master_uri
    :type cl:string
    :initform "")
   (is_ros_master_connected
    :reader is_ros_master_connected
    :initarg :is_ros_master_connected
    :type cl:boolean
    :initform cl:nil)
   (watched_nodes
    :reader watched_nodes
    :initarg :watched_nodes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (watch_rate
    :reader watch_rate
    :initarg :watch_rate
    :type cl:integer
    :initform 0)
   (ping_rate
    :reader ping_rate
    :initarg :ping_rate
    :type cl:integer
    :initform 0))
)

(cl:defclass node_watchdog_status (<node_watchdog_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_watchdog_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_watchdog_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monitor_utils-msg:<node_watchdog_status> is deprecated: use monitor_utils-msg:node_watchdog_status instead.")))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <node_watchdog_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:sequence-val is deprecated.  Use monitor_utils-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'my_node_name-val :lambda-list '(m))
(cl:defmethod my_node_name-val ((m <node_watchdog_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:my_node_name-val is deprecated.  Use monitor_utils-msg:my_node_name instead.")
  (my_node_name m))

(cl:ensure-generic-function 'ros_master_uri-val :lambda-list '(m))
(cl:defmethod ros_master_uri-val ((m <node_watchdog_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:ros_master_uri-val is deprecated.  Use monitor_utils-msg:ros_master_uri instead.")
  (ros_master_uri m))

(cl:ensure-generic-function 'is_ros_master_connected-val :lambda-list '(m))
(cl:defmethod is_ros_master_connected-val ((m <node_watchdog_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:is_ros_master_connected-val is deprecated.  Use monitor_utils-msg:is_ros_master_connected instead.")
  (is_ros_master_connected m))

(cl:ensure-generic-function 'watched_nodes-val :lambda-list '(m))
(cl:defmethod watched_nodes-val ((m <node_watchdog_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:watched_nodes-val is deprecated.  Use monitor_utils-msg:watched_nodes instead.")
  (watched_nodes m))

(cl:ensure-generic-function 'watch_rate-val :lambda-list '(m))
(cl:defmethod watch_rate-val ((m <node_watchdog_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:watch_rate-val is deprecated.  Use monitor_utils-msg:watch_rate instead.")
  (watch_rate m))

(cl:ensure-generic-function 'ping_rate-val :lambda-list '(m))
(cl:defmethod ping_rate-val ((m <node_watchdog_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:ping_rate-val is deprecated.  Use monitor_utils-msg:ping_rate instead.")
  (ping_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_watchdog_status>) ostream)
  "Serializes a message object of type '<node_watchdog_status>"
  (cl:let* ((signed (cl:slot-value msg 'sequence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'my_node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'my_node_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ros_master_uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ros_master_uri))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ros_master_connected) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'watched_nodes))))
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
   (cl:slot-value msg 'watched_nodes))
  (cl:let* ((signed (cl:slot-value msg 'watch_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ping_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_watchdog_status>) istream)
  "Deserializes a message object of type '<node_watchdog_status>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sequence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'my_node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'my_node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ros_master_uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ros_master_uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_ros_master_connected) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'watched_nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'watched_nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
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
      (cl:setf (cl:slot-value msg 'ping_rate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_watchdog_status>)))
  "Returns string type for a message object of type '<node_watchdog_status>"
  "monitor_utils/node_watchdog_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_watchdog_status)))
  "Returns string type for a message object of type 'node_watchdog_status"
  "monitor_utils/node_watchdog_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_watchdog_status>)))
  "Returns md5sum for a message object of type '<node_watchdog_status>"
  "b5b891ace9dd6aa5540bc71f15a96b40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_watchdog_status)))
  "Returns md5sum for a message object of type 'node_watchdog_status"
  "b5b891ace9dd6aa5540bc71f15a96b40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_watchdog_status>)))
  "Returns full string definition for message of type '<node_watchdog_status>"
  (cl:format cl:nil "int32 sequence~%string my_node_name~%string ros_master_uri~%bool is_ros_master_connected~%string[] watched_nodes~%int32 watch_rate~%int32 ping_rate~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_watchdog_status)))
  "Returns full string definition for message of type 'node_watchdog_status"
  (cl:format cl:nil "int32 sequence~%string my_node_name~%string ros_master_uri~%bool is_ros_master_connected~%string[] watched_nodes~%int32 watch_rate~%int32 ping_rate~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_watchdog_status>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'my_node_name))
     4 (cl:length (cl:slot-value msg 'ros_master_uri))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'watched_nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_watchdog_status>))
  "Converts a ROS message object to a list"
  (cl:list 'node_watchdog_status
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':my_node_name (my_node_name msg))
    (cl:cons ':ros_master_uri (ros_master_uri msg))
    (cl:cons ':is_ros_master_connected (is_ros_master_connected msg))
    (cl:cons ':watched_nodes (watched_nodes msg))
    (cl:cons ':watch_rate (watch_rate msg))
    (cl:cons ':ping_rate (ping_rate msg))
))
