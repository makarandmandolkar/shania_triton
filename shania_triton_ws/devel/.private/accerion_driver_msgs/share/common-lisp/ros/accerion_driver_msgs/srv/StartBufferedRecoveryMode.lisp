; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude StartBufferedRecoveryMode-request.msg.html

(cl:defclass <StartBufferedRecoveryMode-request> (roslisp-msg-protocol:ros-message)
  ((xPos
    :reader xPos
    :initarg :xPos
    :type cl:float
    :initform 0.0)
   (yPos
    :reader yPos
    :initarg :yPos
    :type cl:float
    :initform 0.0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (fullMapSearch
    :reader fullMapSearch
    :initarg :fullMapSearch
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartBufferedRecoveryMode-request (<StartBufferedRecoveryMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartBufferedRecoveryMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartBufferedRecoveryMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<StartBufferedRecoveryMode-request> is deprecated: use accerion_driver_msgs-srv:StartBufferedRecoveryMode-request instead.")))

(cl:ensure-generic-function 'xPos-val :lambda-list '(m))
(cl:defmethod xPos-val ((m <StartBufferedRecoveryMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:xPos-val is deprecated.  Use accerion_driver_msgs-srv:xPos instead.")
  (xPos m))

(cl:ensure-generic-function 'yPos-val :lambda-list '(m))
(cl:defmethod yPos-val ((m <StartBufferedRecoveryMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:yPos-val is deprecated.  Use accerion_driver_msgs-srv:yPos instead.")
  (yPos m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <StartBufferedRecoveryMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:radius-val is deprecated.  Use accerion_driver_msgs-srv:radius instead.")
  (radius m))

(cl:ensure-generic-function 'fullMapSearch-val :lambda-list '(m))
(cl:defmethod fullMapSearch-val ((m <StartBufferedRecoveryMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:fullMapSearch-val is deprecated.  Use accerion_driver_msgs-srv:fullMapSearch instead.")
  (fullMapSearch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartBufferedRecoveryMode-request>) ostream)
  "Serializes a message object of type '<StartBufferedRecoveryMode-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fullMapSearch) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartBufferedRecoveryMode-request>) istream)
  "Deserializes a message object of type '<StartBufferedRecoveryMode-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xPos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yPos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'fullMapSearch) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartBufferedRecoveryMode-request>)))
  "Returns string type for a service object of type '<StartBufferedRecoveryMode-request>"
  "accerion_driver_msgs/StartBufferedRecoveryModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartBufferedRecoveryMode-request)))
  "Returns string type for a service object of type 'StartBufferedRecoveryMode-request"
  "accerion_driver_msgs/StartBufferedRecoveryModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartBufferedRecoveryMode-request>)))
  "Returns md5sum for a message object of type '<StartBufferedRecoveryMode-request>"
  "b55e14589ad6c01276c8060ce8703764")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartBufferedRecoveryMode-request)))
  "Returns md5sum for a message object of type 'StartBufferedRecoveryMode-request"
  "b55e14589ad6c01276c8060ce8703764")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartBufferedRecoveryMode-request>)))
  "Returns full string definition for message of type '<StartBufferedRecoveryMode-request>"
  (cl:format cl:nil "float32 xPos			# specify the anchor x position~%float32 yPos			# specify the anchor y position~%float32 radius	        # specify the search radius~%bool    fullMapSearch   # specify if full map search mode is on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartBufferedRecoveryMode-request)))
  "Returns full string definition for message of type 'StartBufferedRecoveryMode-request"
  (cl:format cl:nil "float32 xPos			# specify the anchor x position~%float32 yPos			# specify the anchor y position~%float32 radius	        # specify the search radius~%bool    fullMapSearch   # specify if full map search mode is on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartBufferedRecoveryMode-request>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartBufferedRecoveryMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartBufferedRecoveryMode-request
    (cl:cons ':xPos (xPos msg))
    (cl:cons ':yPos (yPos msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':fullMapSearch (fullMapSearch msg))
))
;//! \htmlinclude StartBufferedRecoveryMode-response.msg.html

(cl:defclass <StartBufferedRecoveryMode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass StartBufferedRecoveryMode-response (<StartBufferedRecoveryMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartBufferedRecoveryMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartBufferedRecoveryMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<StartBufferedRecoveryMode-response> is deprecated: use accerion_driver_msgs-srv:StartBufferedRecoveryMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StartBufferedRecoveryMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <StartBufferedRecoveryMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:msg-val is deprecated.  Use accerion_driver_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartBufferedRecoveryMode-response>) ostream)
  "Serializes a message object of type '<StartBufferedRecoveryMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartBufferedRecoveryMode-response>) istream)
  "Deserializes a message object of type '<StartBufferedRecoveryMode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartBufferedRecoveryMode-response>)))
  "Returns string type for a service object of type '<StartBufferedRecoveryMode-response>"
  "accerion_driver_msgs/StartBufferedRecoveryModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartBufferedRecoveryMode-response)))
  "Returns string type for a service object of type 'StartBufferedRecoveryMode-response"
  "accerion_driver_msgs/StartBufferedRecoveryModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartBufferedRecoveryMode-response>)))
  "Returns md5sum for a message object of type '<StartBufferedRecoveryMode-response>"
  "b55e14589ad6c01276c8060ce8703764")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartBufferedRecoveryMode-response)))
  "Returns md5sum for a message object of type 'StartBufferedRecoveryMode-response"
  "b55e14589ad6c01276c8060ce8703764")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartBufferedRecoveryMode-response>)))
  "Returns full string definition for message of type '<StartBufferedRecoveryMode-response>"
  (cl:format cl:nil "bool success               	# true if buffered recovery mode is started~%string msg                  # for info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartBufferedRecoveryMode-response)))
  "Returns full string definition for message of type 'StartBufferedRecoveryMode-response"
  (cl:format cl:nil "bool success               	# true if buffered recovery mode is started~%string msg                  # for info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartBufferedRecoveryMode-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartBufferedRecoveryMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartBufferedRecoveryMode-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartBufferedRecoveryMode)))
  'StartBufferedRecoveryMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartBufferedRecoveryMode)))
  'StartBufferedRecoveryMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartBufferedRecoveryMode)))
  "Returns string type for a service object of type '<StartBufferedRecoveryMode>"
  "accerion_driver_msgs/StartBufferedRecoveryMode")