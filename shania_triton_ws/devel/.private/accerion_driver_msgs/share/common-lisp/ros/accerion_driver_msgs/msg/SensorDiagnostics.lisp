; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-msg)


;//! \htmlinclude SensorDiagnostics.msg.html

(cl:defclass <SensorDiagnostics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (serial_number
    :reader serial_number
    :initarg :serial_number
    :type cl:integer
    :initform 0)
   (raw_timestamp
    :reader raw_timestamp
    :initarg :raw_timestamp
    :type cl:integer
    :initform 0)
   (modes_code
    :reader modes_code
    :initarg :modes_code
    :type cl:fixnum
    :initform 0)
   (active_modes
    :reader active_modes
    :initarg :active_modes
    :type cl:string
    :initform "")
   (warnings_code
    :reader warnings_code
    :initarg :warnings_code
    :type cl:fixnum
    :initform 0)
   (active_warnings
    :reader active_warnings
    :initarg :active_warnings
    :type cl:string
    :initform "")
   (errors_code
    :reader errors_code
    :initarg :errors_code
    :type cl:integer
    :initform 0)
   (active_errors
    :reader active_errors
    :initarg :active_errors
    :type cl:string
    :initform "")
   (status_code
    :reader status_code
    :initarg :status_code
    :type cl:fixnum
    :initform 0)
   (active_status
    :reader active_status
    :initarg :active_status
    :type cl:string
    :initform ""))
)

(cl:defclass SensorDiagnostics (<SensorDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-msg:<SensorDiagnostics> is deprecated: use accerion_driver_msgs-msg:SensorDiagnostics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:header-val is deprecated.  Use accerion_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'serial_number-val :lambda-list '(m))
(cl:defmethod serial_number-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:serial_number-val is deprecated.  Use accerion_driver_msgs-msg:serial_number instead.")
  (serial_number m))

(cl:ensure-generic-function 'raw_timestamp-val :lambda-list '(m))
(cl:defmethod raw_timestamp-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:raw_timestamp-val is deprecated.  Use accerion_driver_msgs-msg:raw_timestamp instead.")
  (raw_timestamp m))

(cl:ensure-generic-function 'modes_code-val :lambda-list '(m))
(cl:defmethod modes_code-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:modes_code-val is deprecated.  Use accerion_driver_msgs-msg:modes_code instead.")
  (modes_code m))

(cl:ensure-generic-function 'active_modes-val :lambda-list '(m))
(cl:defmethod active_modes-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:active_modes-val is deprecated.  Use accerion_driver_msgs-msg:active_modes instead.")
  (active_modes m))

(cl:ensure-generic-function 'warnings_code-val :lambda-list '(m))
(cl:defmethod warnings_code-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:warnings_code-val is deprecated.  Use accerion_driver_msgs-msg:warnings_code instead.")
  (warnings_code m))

(cl:ensure-generic-function 'active_warnings-val :lambda-list '(m))
(cl:defmethod active_warnings-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:active_warnings-val is deprecated.  Use accerion_driver_msgs-msg:active_warnings instead.")
  (active_warnings m))

(cl:ensure-generic-function 'errors_code-val :lambda-list '(m))
(cl:defmethod errors_code-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:errors_code-val is deprecated.  Use accerion_driver_msgs-msg:errors_code instead.")
  (errors_code m))

(cl:ensure-generic-function 'active_errors-val :lambda-list '(m))
(cl:defmethod active_errors-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:active_errors-val is deprecated.  Use accerion_driver_msgs-msg:active_errors instead.")
  (active_errors m))

(cl:ensure-generic-function 'status_code-val :lambda-list '(m))
(cl:defmethod status_code-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:status_code-val is deprecated.  Use accerion_driver_msgs-msg:status_code instead.")
  (status_code m))

(cl:ensure-generic-function 'active_status-val :lambda-list '(m))
(cl:defmethod active_status-val ((m <SensorDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:active_status-val is deprecated.  Use accerion_driver_msgs-msg:active_status instead.")
  (active_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorDiagnostics>) ostream)
  "Serializes a message object of type '<SensorDiagnostics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'raw_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'raw_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'raw_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'raw_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'raw_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'raw_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'raw_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'raw_timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'modes_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'modes_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_modes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_modes))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warnings_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'warnings_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_warnings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_warnings))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errors_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errors_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'errors_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'errors_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_errors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_errors))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorDiagnostics>) istream)
  "Deserializes a message object of type '<SensorDiagnostics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'raw_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'raw_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'raw_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'raw_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'raw_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'raw_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'raw_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'raw_timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'modes_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'modes_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_modes) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_modes) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'warnings_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'warnings_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_warnings) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_warnings) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errors_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errors_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'errors_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'errors_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_errors) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_errors) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorDiagnostics>)))
  "Returns string type for a message object of type '<SensorDiagnostics>"
  "accerion_driver_msgs/SensorDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorDiagnostics)))
  "Returns string type for a message object of type 'SensorDiagnostics"
  "accerion_driver_msgs/SensorDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorDiagnostics>)))
  "Returns md5sum for a message object of type '<SensorDiagnostics>"
  "c4e775bb96850e70d26b61240e99cf8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorDiagnostics)))
  "Returns md5sum for a message object of type 'SensorDiagnostics"
  "c4e775bb96850e70d26b61240e99cf8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorDiagnostics>)))
  "Returns full string definition for message of type '<SensorDiagnostics>"
  (cl:format cl:nil "Header header           ~%~%uint32 serial_number~%uint64 raw_timestamp~%~%uint16 modes_code~%string active_modes~%~%uint16 warnings_code~%string active_warnings~%~%uint32 errors_code~%string active_errors~%~%uint8 status_code~%string active_status~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorDiagnostics)))
  "Returns full string definition for message of type 'SensorDiagnostics"
  (cl:format cl:nil "Header header           ~%~%uint32 serial_number~%uint64 raw_timestamp~%~%uint16 modes_code~%string active_modes~%~%uint16 warnings_code~%string active_warnings~%~%uint32 errors_code~%string active_errors~%~%uint8 status_code~%string active_status~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorDiagnostics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     2
     4 (cl:length (cl:slot-value msg 'active_modes))
     2
     4 (cl:length (cl:slot-value msg 'active_warnings))
     4
     4 (cl:length (cl:slot-value msg 'active_errors))
     1
     4 (cl:length (cl:slot-value msg 'active_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorDiagnostics
    (cl:cons ':header (header msg))
    (cl:cons ':serial_number (serial_number msg))
    (cl:cons ':raw_timestamp (raw_timestamp msg))
    (cl:cons ':modes_code (modes_code msg))
    (cl:cons ':active_modes (active_modes msg))
    (cl:cons ':warnings_code (warnings_code msg))
    (cl:cons ':active_warnings (active_warnings msg))
    (cl:cons ':errors_code (errors_code msg))
    (cl:cons ':active_errors (active_errors msg))
    (cl:cons ':status_code (status_code msg))
    (cl:cons ':active_status (active_status msg))
))
