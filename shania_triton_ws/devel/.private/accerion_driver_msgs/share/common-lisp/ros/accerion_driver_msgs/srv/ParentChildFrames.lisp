; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude ParentChildFrames-request.msg.html

(cl:defclass <ParentChildFrames-request> (roslisp-msg-protocol:ros-message)
  ((parent
    :reader parent
    :initarg :parent
    :type cl:string
    :initform "")
   (child
    :reader child
    :initarg :child
    :type cl:string
    :initform ""))
)

(cl:defclass ParentChildFrames-request (<ParentChildFrames-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParentChildFrames-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParentChildFrames-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<ParentChildFrames-request> is deprecated: use accerion_driver_msgs-srv:ParentChildFrames-request instead.")))

(cl:ensure-generic-function 'parent-val :lambda-list '(m))
(cl:defmethod parent-val ((m <ParentChildFrames-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:parent-val is deprecated.  Use accerion_driver_msgs-srv:parent instead.")
  (parent m))

(cl:ensure-generic-function 'child-val :lambda-list '(m))
(cl:defmethod child-val ((m <ParentChildFrames-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:child-val is deprecated.  Use accerion_driver_msgs-srv:child instead.")
  (child m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParentChildFrames-request>) ostream)
  "Serializes a message object of type '<ParentChildFrames-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'child))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'child))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParentChildFrames-request>) istream)
  "Deserializes a message object of type '<ParentChildFrames-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'child) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'child) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParentChildFrames-request>)))
  "Returns string type for a service object of type '<ParentChildFrames-request>"
  "accerion_driver_msgs/ParentChildFramesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParentChildFrames-request)))
  "Returns string type for a service object of type 'ParentChildFrames-request"
  "accerion_driver_msgs/ParentChildFramesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParentChildFrames-request>)))
  "Returns md5sum for a message object of type '<ParentChildFrames-request>"
  "289a171e99d7db2cbd264d90af1d7948")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParentChildFrames-request)))
  "Returns md5sum for a message object of type 'ParentChildFrames-request"
  "289a171e99d7db2cbd264d90af1d7948")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParentChildFrames-request>)))
  "Returns full string definition for message of type '<ParentChildFrames-request>"
  (cl:format cl:nil "string parent               # parent frame (e.g. map)~%string child                # child frame (e.g. base_link)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParentChildFrames-request)))
  "Returns full string definition for message of type 'ParentChildFrames-request"
  (cl:format cl:nil "string parent               # parent frame (e.g. map)~%string child                # child frame (e.g. base_link)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParentChildFrames-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'parent))
     4 (cl:length (cl:slot-value msg 'child))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParentChildFrames-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParentChildFrames-request
    (cl:cons ':parent (parent msg))
    (cl:cons ':child (child msg))
))
;//! \htmlinclude ParentChildFrames-response.msg.html

(cl:defclass <ParentChildFrames-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ParentChildFrames-response (<ParentChildFrames-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParentChildFrames-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParentChildFrames-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<ParentChildFrames-response> is deprecated: use accerion_driver_msgs-srv:ParentChildFrames-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParentChildFrames-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ParentChildFrames-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParentChildFrames-response>) ostream)
  "Serializes a message object of type '<ParentChildFrames-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParentChildFrames-response>) istream)
  "Deserializes a message object of type '<ParentChildFrames-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParentChildFrames-response>)))
  "Returns string type for a service object of type '<ParentChildFrames-response>"
  "accerion_driver_msgs/ParentChildFramesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParentChildFrames-response)))
  "Returns string type for a service object of type 'ParentChildFrames-response"
  "accerion_driver_msgs/ParentChildFramesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParentChildFrames-response>)))
  "Returns md5sum for a message object of type '<ParentChildFrames-response>"
  "289a171e99d7db2cbd264d90af1d7948")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParentChildFrames-response)))
  "Returns md5sum for a message object of type 'ParentChildFrames-response"
  "289a171e99d7db2cbd264d90af1d7948")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParentChildFrames-response>)))
  "Returns full string definition for message of type '<ParentChildFrames-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParentChildFrames-response)))
  "Returns full string definition for message of type 'ParentChildFrames-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParentChildFrames-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParentChildFrames-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParentChildFrames-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParentChildFrames)))
  'ParentChildFrames-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParentChildFrames)))
  'ParentChildFrames-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParentChildFrames)))
  "Returns string type for a service object of type '<ParentChildFrames>"
  "accerion_driver_msgs/ParentChildFrames")