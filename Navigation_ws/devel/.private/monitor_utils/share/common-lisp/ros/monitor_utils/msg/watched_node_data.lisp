; Auto-generated. Do not edit!


(cl:in-package monitor_utils-msg)


;//! \htmlinclude watched_node_data.msg.html

(cl:defclass <watched_node_data> (roslisp-msg-protocol:ros-message)
  ((sequence
    :reader sequence
    :initarg :sequence
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
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
   (PID
    :reader PID
    :initarg :PID
    :type cl:integer
    :initform 0)
   (instantiation_time
    :reader instantiation_time
    :initarg :instantiation_time
    :type cl:float
    :initform 0.0)
   (watched_topics
    :reader watched_topics
    :initarg :watched_topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (is_alive
    :reader is_alive
    :initarg :is_alive
    :type cl:boolean
    :initform cl:nil)
   (is_hung
    :reader is_hung
    :initarg :is_hung
    :type cl:boolean
    :initform cl:nil)
   (is_publishing
    :reader is_publishing
    :initarg :is_publishing
    :type cl:boolean
    :initform cl:nil)
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
   (reboot_count
    :reader reboot_count
    :initarg :reboot_count
    :type cl:integer
    :initform 0)
   (launch_script
    :reader launch_script
    :initarg :launch_script
    :type cl:string
    :initform ""))
)

(cl:defclass watched_node_data (<watched_node_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <watched_node_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'watched_node_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name monitor_utils-msg:<watched_node_data> is deprecated: use monitor_utils-msg:watched_node_data instead.")))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:sequence-val is deprecated.  Use monitor_utils-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:name-val is deprecated.  Use monitor_utils-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'watch_rate-val :lambda-list '(m))
(cl:defmethod watch_rate-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:watch_rate-val is deprecated.  Use monitor_utils-msg:watch_rate instead.")
  (watch_rate m))

(cl:ensure-generic-function 'startup_duration-val :lambda-list '(m))
(cl:defmethod startup_duration-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:startup_duration-val is deprecated.  Use monitor_utils-msg:startup_duration instead.")
  (startup_duration m))

(cl:ensure-generic-function 'PID-val :lambda-list '(m))
(cl:defmethod PID-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:PID-val is deprecated.  Use monitor_utils-msg:PID instead.")
  (PID m))

(cl:ensure-generic-function 'instantiation_time-val :lambda-list '(m))
(cl:defmethod instantiation_time-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:instantiation_time-val is deprecated.  Use monitor_utils-msg:instantiation_time instead.")
  (instantiation_time m))

(cl:ensure-generic-function 'watched_topics-val :lambda-list '(m))
(cl:defmethod watched_topics-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:watched_topics-val is deprecated.  Use monitor_utils-msg:watched_topics instead.")
  (watched_topics m))

(cl:ensure-generic-function 'is_alive-val :lambda-list '(m))
(cl:defmethod is_alive-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:is_alive-val is deprecated.  Use monitor_utils-msg:is_alive instead.")
  (is_alive m))

(cl:ensure-generic-function 'is_hung-val :lambda-list '(m))
(cl:defmethod is_hung-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:is_hung-val is deprecated.  Use monitor_utils-msg:is_hung instead.")
  (is_hung m))

(cl:ensure-generic-function 'is_publishing-val :lambda-list '(m))
(cl:defmethod is_publishing-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:is_publishing-val is deprecated.  Use monitor_utils-msg:is_publishing instead.")
  (is_publishing m))

(cl:ensure-generic-function 'reboot_on_hang-val :lambda-list '(m))
(cl:defmethod reboot_on_hang-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:reboot_on_hang-val is deprecated.  Use monitor_utils-msg:reboot_on_hang instead.")
  (reboot_on_hang m))

(cl:ensure-generic-function 'reboot_on_death-val :lambda-list '(m))
(cl:defmethod reboot_on_death-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:reboot_on_death-val is deprecated.  Use monitor_utils-msg:reboot_on_death instead.")
  (reboot_on_death m))

(cl:ensure-generic-function 'reboot_on_publish_timeout-val :lambda-list '(m))
(cl:defmethod reboot_on_publish_timeout-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:reboot_on_publish_timeout-val is deprecated.  Use monitor_utils-msg:reboot_on_publish_timeout instead.")
  (reboot_on_publish_timeout m))

(cl:ensure-generic-function 'reboot_count-val :lambda-list '(m))
(cl:defmethod reboot_count-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:reboot_count-val is deprecated.  Use monitor_utils-msg:reboot_count instead.")
  (reboot_count m))

(cl:ensure-generic-function 'launch_script-val :lambda-list '(m))
(cl:defmethod launch_script-val ((m <watched_node_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader monitor_utils-msg:launch_script-val is deprecated.  Use monitor_utils-msg:launch_script instead.")
  (launch_script m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <watched_node_data>) ostream)
  "Serializes a message object of type '<watched_node_data>"
  (cl:let* ((signed (cl:slot-value msg 'sequence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
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
  (cl:let* ((signed (cl:slot-value msg 'PID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'instantiation_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_alive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_hung) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_publishing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reboot_on_hang) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reboot_on_death) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reboot_on_publish_timeout) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'reboot_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'launch_script))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'launch_script))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <watched_node_data>) istream)
  "Deserializes a message object of type '<watched_node_data>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sequence) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'PID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'instantiation_time) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'is_alive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_hung) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_publishing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reboot_on_hang) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reboot_on_death) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reboot_on_publish_timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reboot_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<watched_node_data>)))
  "Returns string type for a message object of type '<watched_node_data>"
  "monitor_utils/watched_node_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'watched_node_data)))
  "Returns string type for a message object of type 'watched_node_data"
  "monitor_utils/watched_node_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<watched_node_data>)))
  "Returns md5sum for a message object of type '<watched_node_data>"
  "81c3123a2ea294b2971a0476e03b9bf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'watched_node_data)))
  "Returns md5sum for a message object of type 'watched_node_data"
  "81c3123a2ea294b2971a0476e03b9bf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<watched_node_data>)))
  "Returns full string definition for message of type '<watched_node_data>"
  (cl:format cl:nil "int64 sequence~%string name~%int32 watch_rate~%int32 startup_duration~%int32 PID~%float64 instantiation_time~%string[] watched_topics~%bool is_alive~%bool is_hung~%bool is_publishing~%bool reboot_on_hang~%bool reboot_on_death~%bool reboot_on_publish_timeout~%int32 reboot_count~%string launch_script~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'watched_node_data)))
  "Returns full string definition for message of type 'watched_node_data"
  (cl:format cl:nil "int64 sequence~%string name~%int32 watch_rate~%int32 startup_duration~%int32 PID~%float64 instantiation_time~%string[] watched_topics~%bool is_alive~%bool is_hung~%bool is_publishing~%bool reboot_on_hang~%bool reboot_on_death~%bool reboot_on_publish_timeout~%int32 reboot_count~%string launch_script~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <watched_node_data>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'watched_topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     1
     1
     1
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'launch_script))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <watched_node_data>))
  "Converts a ROS message object to a list"
  (cl:list 'watched_node_data
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':name (name msg))
    (cl:cons ':watch_rate (watch_rate msg))
    (cl:cons ':startup_duration (startup_duration msg))
    (cl:cons ':PID (PID msg))
    (cl:cons ':instantiation_time (instantiation_time msg))
    (cl:cons ':watched_topics (watched_topics msg))
    (cl:cons ':is_alive (is_alive msg))
    (cl:cons ':is_hung (is_hung msg))
    (cl:cons ':is_publishing (is_publishing msg))
    (cl:cons ':reboot_on_hang (reboot_on_hang msg))
    (cl:cons ':reboot_on_death (reboot_on_death msg))
    (cl:cons ':reboot_on_publish_timeout (reboot_on_publish_timeout msg))
    (cl:cons ':reboot_count (reboot_count msg))
    (cl:cons ':launch_script (launch_script msg))
))
