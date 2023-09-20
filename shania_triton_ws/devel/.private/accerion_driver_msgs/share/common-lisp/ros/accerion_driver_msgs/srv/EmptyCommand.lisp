; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude EmptyCommand-request.msg.html

(cl:defclass <EmptyCommand-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptyCommand-request (<EmptyCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<EmptyCommand-request> is deprecated: use accerion_driver_msgs-srv:EmptyCommand-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyCommand-request>) ostream)
  "Serializes a message object of type '<EmptyCommand-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyCommand-request>) istream)
  "Deserializes a message object of type '<EmptyCommand-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyCommand-request>)))
  "Returns string type for a service object of type '<EmptyCommand-request>"
  "accerion_driver_msgs/EmptyCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyCommand-request)))
  "Returns string type for a service object of type 'EmptyCommand-request"
  "accerion_driver_msgs/EmptyCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyCommand-request>)))
  "Returns md5sum for a message object of type '<EmptyCommand-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyCommand-request)))
  "Returns md5sum for a message object of type 'EmptyCommand-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyCommand-request>)))
  "Returns full string definition for message of type '<EmptyCommand-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyCommand-request)))
  "Returns full string definition for message of type 'EmptyCommand-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyCommand-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyCommand-request
))
;//! \htmlinclude EmptyCommand-response.msg.html

(cl:defclass <EmptyCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass EmptyCommand-response (<EmptyCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<EmptyCommand-response> is deprecated: use accerion_driver_msgs-srv:EmptyCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <EmptyCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <EmptyCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyCommand-response>) ostream)
  "Serializes a message object of type '<EmptyCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyCommand-response>) istream)
  "Deserializes a message object of type '<EmptyCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyCommand-response>)))
  "Returns string type for a service object of type '<EmptyCommand-response>"
  "accerion_driver_msgs/EmptyCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyCommand-response)))
  "Returns string type for a service object of type 'EmptyCommand-response"
  "accerion_driver_msgs/EmptyCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyCommand-response>)))
  "Returns md5sum for a message object of type '<EmptyCommand-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyCommand-response)))
  "Returns md5sum for a message object of type 'EmptyCommand-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyCommand-response>)))
  "Returns full string definition for message of type '<EmptyCommand-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyCommand-response)))
  "Returns full string definition for message of type 'EmptyCommand-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyCommand-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmptyCommand)))
  'EmptyCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmptyCommand)))
  'EmptyCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyCommand)))
  "Returns string type for a service object of type '<EmptyCommand>"
  "accerion_driver_msgs/EmptyCommand")