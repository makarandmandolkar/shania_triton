; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude SecondaryLF-request.msg.html

(cl:defclass <SecondaryLF-request> (roslisp-msg-protocol:ros-message)
  ((clusterID
    :reader clusterID
    :initarg :clusterID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SecondaryLF-request (<SecondaryLF-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SecondaryLF-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SecondaryLF-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<SecondaryLF-request> is deprecated: use accerion_driver_msgs-srv:SecondaryLF-request instead.")))

(cl:ensure-generic-function 'clusterID-val :lambda-list '(m))
(cl:defmethod clusterID-val ((m <SecondaryLF-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:clusterID-val is deprecated.  Use accerion_driver_msgs-srv:clusterID instead.")
  (clusterID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SecondaryLF-request>) ostream)
  "Serializes a message object of type '<SecondaryLF-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clusterID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clusterID)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SecondaryLF-request>) istream)
  "Deserializes a message object of type '<SecondaryLF-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clusterID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clusterID)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SecondaryLF-request>)))
  "Returns string type for a service object of type '<SecondaryLF-request>"
  "accerion_driver_msgs/SecondaryLFRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SecondaryLF-request)))
  "Returns string type for a service object of type 'SecondaryLF-request"
  "accerion_driver_msgs/SecondaryLFRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SecondaryLF-request>)))
  "Returns md5sum for a message object of type '<SecondaryLF-request>"
  "941d90c566e891f5d4b78bfaff569951")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SecondaryLF-request)))
  "Returns md5sum for a message object of type 'SecondaryLF-request"
  "941d90c566e891f5d4b78bfaff569951")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SecondaryLF-request>)))
  "Returns full string definition for message of type '<SecondaryLF-request>"
  (cl:format cl:nil "uint16 clusterID	      # uint16_t ID of the Cluster that you want the closest point of~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SecondaryLF-request)))
  "Returns full string definition for message of type 'SecondaryLF-request"
  (cl:format cl:nil "uint16 clusterID	      # uint16_t ID of the Cluster that you want the closest point of~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SecondaryLF-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SecondaryLF-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SecondaryLF-request
    (cl:cons ':clusterID (clusterID msg))
))
;//! \htmlinclude SecondaryLF-response.msg.html

(cl:defclass <SecondaryLF-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (closestPointX
    :reader closestPointX
    :initarg :closestPointX
    :type cl:float
    :initform 0.0)
   (closestPointY
    :reader closestPointY
    :initarg :closestPointY
    :type cl:float
    :initform 0.0)
   (line_heading
    :reader line_heading
    :initarg :line_heading
    :type cl:float
    :initform 0.0)
   (clusterID
    :reader clusterID
    :initarg :clusterID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SecondaryLF-response (<SecondaryLF-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SecondaryLF-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SecondaryLF-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<SecondaryLF-response> is deprecated: use accerion_driver_msgs-srv:SecondaryLF-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:timeStamp-val is deprecated.  Use accerion_driver_msgs-srv:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:x-val is deprecated.  Use accerion_driver_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:y-val is deprecated.  Use accerion_driver_msgs-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:heading-val is deprecated.  Use accerion_driver_msgs-srv:heading instead.")
  (heading m))

(cl:ensure-generic-function 'closestPointX-val :lambda-list '(m))
(cl:defmethod closestPointX-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:closestPointX-val is deprecated.  Use accerion_driver_msgs-srv:closestPointX instead.")
  (closestPointX m))

(cl:ensure-generic-function 'closestPointY-val :lambda-list '(m))
(cl:defmethod closestPointY-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:closestPointY-val is deprecated.  Use accerion_driver_msgs-srv:closestPointY instead.")
  (closestPointY m))

(cl:ensure-generic-function 'line_heading-val :lambda-list '(m))
(cl:defmethod line_heading-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:line_heading-val is deprecated.  Use accerion_driver_msgs-srv:line_heading instead.")
  (line_heading m))

(cl:ensure-generic-function 'clusterID-val :lambda-list '(m))
(cl:defmethod clusterID-val ((m <SecondaryLF-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:clusterID-val is deprecated.  Use accerion_driver_msgs-srv:clusterID instead.")
  (clusterID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SecondaryLF-response>) ostream)
  "Serializes a message object of type '<SecondaryLF-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'closestPointX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'closestPointY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'line_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clusterID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clusterID)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SecondaryLF-response>) istream)
  "Deserializes a message object of type '<SecondaryLF-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'closestPointX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'closestPointY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'line_heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clusterID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'clusterID)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SecondaryLF-response>)))
  "Returns string type for a service object of type '<SecondaryLF-response>"
  "accerion_driver_msgs/SecondaryLFResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SecondaryLF-response)))
  "Returns string type for a service object of type 'SecondaryLF-response"
  "accerion_driver_msgs/SecondaryLFResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SecondaryLF-response>)))
  "Returns md5sum for a message object of type '<SecondaryLF-response>"
  "941d90c566e891f5d4b78bfaff569951")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SecondaryLF-response)))
  "Returns md5sum for a message object of type 'SecondaryLF-response"
  "941d90c566e891f5d4b78bfaff569951")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SecondaryLF-response>)))
  "Returns full string definition for message of type '<SecondaryLF-response>"
  (cl:format cl:nil "bool success   	      # indicate successful run of triggered service~%string message 	      # informational, e.g. for error messages~%uint64 timeStamp             # Timestamp when the message was made~%float32 x                    # Position of the sensor in meters x~%float32 y                    # Position of the sensor in meters y~%float32 heading              # Heading of the sensor in degrees~%float32 closestPointX        # Closest point on line in meters x~%float32 closestPointY        # Closest point on line in meters y~%float32 line_heading         # heading of the line on closest point~%uint16 clusterID             # ClusterID of the requested cluster line~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SecondaryLF-response)))
  "Returns full string definition for message of type 'SecondaryLF-response"
  (cl:format cl:nil "bool success   	      # indicate successful run of triggered service~%string message 	      # informational, e.g. for error messages~%uint64 timeStamp             # Timestamp when the message was made~%float32 x                    # Position of the sensor in meters x~%float32 y                    # Position of the sensor in meters y~%float32 heading              # Heading of the sensor in degrees~%float32 closestPointX        # Closest point on line in meters x~%float32 closestPointY        # Closest point on line in meters y~%float32 line_heading         # heading of the line on closest point~%uint16 clusterID             # ClusterID of the requested cluster line~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SecondaryLF-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     8
     4
     4
     4
     4
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SecondaryLF-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SecondaryLF-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':closestPointX (closestPointX msg))
    (cl:cons ':closestPointY (closestPointY msg))
    (cl:cons ':line_heading (line_heading msg))
    (cl:cons ':clusterID (clusterID msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SecondaryLF)))
  'SecondaryLF-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SecondaryLF)))
  'SecondaryLF-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SecondaryLF)))
  "Returns string type for a service object of type '<SecondaryLF>"
  "accerion_driver_msgs/SecondaryLF")