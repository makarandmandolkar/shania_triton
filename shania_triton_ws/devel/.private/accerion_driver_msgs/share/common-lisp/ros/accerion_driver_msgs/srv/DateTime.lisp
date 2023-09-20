; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude DateTime-request.msg.html

(cl:defclass <DateTime-request> (roslisp-msg-protocol:ros-message)
  ((date
    :reader date
    :initarg :date
    :type cl:string
    :initform "")
   (time
    :reader time
    :initarg :time
    :type cl:string
    :initform ""))
)

(cl:defclass DateTime-request (<DateTime-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DateTime-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DateTime-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<DateTime-request> is deprecated: use accerion_driver_msgs-srv:DateTime-request instead.")))

(cl:ensure-generic-function 'date-val :lambda-list '(m))
(cl:defmethod date-val ((m <DateTime-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:date-val is deprecated.  Use accerion_driver_msgs-srv:date instead.")
  (date m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <DateTime-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:time-val is deprecated.  Use accerion_driver_msgs-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DateTime-request>) ostream)
  "Serializes a message object of type '<DateTime-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'date))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DateTime-request>) istream)
  "Deserializes a message object of type '<DateTime-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DateTime-request>)))
  "Returns string type for a service object of type '<DateTime-request>"
  "accerion_driver_msgs/DateTimeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DateTime-request)))
  "Returns string type for a service object of type 'DateTime-request"
  "accerion_driver_msgs/DateTimeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DateTime-request>)))
  "Returns md5sum for a message object of type '<DateTime-request>"
  "22cec1150d9ca4f487f09d8d06d4e469")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DateTime-request)))
  "Returns md5sum for a message object of type 'DateTime-request"
  "22cec1150d9ca4f487f09d8d06d4e469")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DateTime-request>)))
  "Returns full string definition for message of type '<DateTime-request>"
  (cl:format cl:nil "string date                 # dd/mm/yyyy~%string time                 # hh:mm:ss~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DateTime-request)))
  "Returns full string definition for message of type 'DateTime-request"
  (cl:format cl:nil "string date                 # dd/mm/yyyy~%string time                 # hh:mm:ss~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DateTime-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'date))
     4 (cl:length (cl:slot-value msg 'time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DateTime-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DateTime-request
    (cl:cons ':date (date msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude DateTime-response.msg.html

(cl:defclass <DateTime-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DateTime-response (<DateTime-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DateTime-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DateTime-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<DateTime-response> is deprecated: use accerion_driver_msgs-srv:DateTime-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DateTime-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DateTime-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DateTime-response>) ostream)
  "Serializes a message object of type '<DateTime-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DateTime-response>) istream)
  "Deserializes a message object of type '<DateTime-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DateTime-response>)))
  "Returns string type for a service object of type '<DateTime-response>"
  "accerion_driver_msgs/DateTimeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DateTime-response)))
  "Returns string type for a service object of type 'DateTime-response"
  "accerion_driver_msgs/DateTimeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DateTime-response>)))
  "Returns md5sum for a message object of type '<DateTime-response>"
  "22cec1150d9ca4f487f09d8d06d4e469")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DateTime-response)))
  "Returns md5sum for a message object of type 'DateTime-response"
  "22cec1150d9ca4f487f09d8d06d4e469")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DateTime-response>)))
  "Returns full string definition for message of type '<DateTime-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DateTime-response)))
  "Returns full string definition for message of type 'DateTime-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DateTime-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DateTime-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DateTime-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DateTime)))
  'DateTime-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DateTime)))
  'DateTime-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DateTime)))
  "Returns string type for a service object of type '<DateTime>"
  "accerion_driver_msgs/DateTime")