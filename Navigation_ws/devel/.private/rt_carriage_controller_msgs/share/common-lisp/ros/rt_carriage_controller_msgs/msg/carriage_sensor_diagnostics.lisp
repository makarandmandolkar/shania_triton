; Auto-generated. Do not edit!


(cl:in-package rt_carriage_controller_msgs-msg)


;//! \htmlinclude carriage_sensor_diagnostics.msg.html

(cl:defclass <carriage_sensor_diagnostics> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type (cl:vector cl:string)
   :initform (cl:make-array 6 :element-type 'cl:string :initial-element ""))
   (raw_data
    :reader raw_data
    :initarg :raw_data
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (filtered_data
    :reader filtered_data
    :initarg :filtered_data
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass carriage_sensor_diagnostics (<carriage_sensor_diagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <carriage_sensor_diagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'carriage_sensor_diagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_carriage_controller_msgs-msg:<carriage_sensor_diagnostics> is deprecated: use rt_carriage_controller_msgs-msg:carriage_sensor_diagnostics instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <carriage_sensor_diagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:name-val is deprecated.  Use rt_carriage_controller_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'raw_data-val :lambda-list '(m))
(cl:defmethod raw_data-val ((m <carriage_sensor_diagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:raw_data-val is deprecated.  Use rt_carriage_controller_msgs-msg:raw_data instead.")
  (raw_data m))

(cl:ensure-generic-function 'filtered_data-val :lambda-list '(m))
(cl:defmethod filtered_data-val ((m <carriage_sensor_diagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:filtered_data-val is deprecated.  Use rt_carriage_controller_msgs-msg:filtered_data instead.")
  (filtered_data m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <carriage_sensor_diagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-msg:position-val is deprecated.  Use rt_carriage_controller_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <carriage_sensor_diagnostics>) ostream)
  "Serializes a message object of type '<carriage_sensor_diagnostics>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'raw_data))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'filtered_data))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <carriage_sensor_diagnostics>) istream)
  "Deserializes a message object of type '<carriage_sensor_diagnostics>"
  (cl:setf (cl:slot-value msg 'name) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'name)))
    (cl:dotimes (i 6)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))))
  (cl:setf (cl:slot-value msg 'raw_data) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'raw_data)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'filtered_data) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'filtered_data)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<carriage_sensor_diagnostics>)))
  "Returns string type for a message object of type '<carriage_sensor_diagnostics>"
  "rt_carriage_controller_msgs/carriage_sensor_diagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'carriage_sensor_diagnostics)))
  "Returns string type for a message object of type 'carriage_sensor_diagnostics"
  "rt_carriage_controller_msgs/carriage_sensor_diagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<carriage_sensor_diagnostics>)))
  "Returns md5sum for a message object of type '<carriage_sensor_diagnostics>"
  "0617ade47f8a69926360e2cca79d5e22")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'carriage_sensor_diagnostics)))
  "Returns md5sum for a message object of type 'carriage_sensor_diagnostics"
  "0617ade47f8a69926360e2cca79d5e22")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<carriage_sensor_diagnostics>)))
  "Returns full string definition for message of type '<carriage_sensor_diagnostics>"
  (cl:format cl:nil "string[6] name~%float64[6] raw_data~%float64[6] filtered_data~%float64[6] position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'carriage_sensor_diagnostics)))
  "Returns full string definition for message of type 'carriage_sensor_diagnostics"
  (cl:format cl:nil "string[6] name~%float64[6] raw_data~%float64[6] filtered_data~%float64[6] position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <carriage_sensor_diagnostics>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'raw_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'filtered_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <carriage_sensor_diagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'carriage_sensor_diagnostics
    (cl:cons ':name (name msg))
    (cl:cons ':raw_data (raw_data msg))
    (cl:cons ':filtered_data (filtered_data msg))
    (cl:cons ':position (position msg))
))
