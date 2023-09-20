; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude MapTransfer-request.msg.html

(cl:defclass <MapTransfer-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (placement_mode
    :reader placement_mode
    :initarg :placement_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MapTransfer-request (<MapTransfer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapTransfer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapTransfer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<MapTransfer-request> is deprecated: use accerion_driver_msgs-srv:MapTransfer-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <MapTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:path-val is deprecated.  Use accerion_driver_msgs-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'placement_mode-val :lambda-list '(m))
(cl:defmethod placement_mode-val ((m <MapTransfer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:placement_mode-val is deprecated.  Use accerion_driver_msgs-srv:placement_mode instead.")
  (placement_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MapTransfer-request>)))
    "Constants for message type '<MapTransfer-request>"
  '((:REPLACE . 0)
    (:MERGE . 1)
    (:UPDATE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MapTransfer-request)))
    "Constants for message type 'MapTransfer-request"
  '((:REPLACE . 0)
    (:MERGE . 1)
    (:UPDATE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapTransfer-request>) ostream)
  "Serializes a message object of type '<MapTransfer-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'placement_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapTransfer-request>) istream)
  "Deserializes a message object of type '<MapTransfer-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'placement_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapTransfer-request>)))
  "Returns string type for a service object of type '<MapTransfer-request>"
  "accerion_driver_msgs/MapTransferRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapTransfer-request)))
  "Returns string type for a service object of type 'MapTransfer-request"
  "accerion_driver_msgs/MapTransferRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapTransfer-request>)))
  "Returns md5sum for a message object of type '<MapTransfer-request>"
  "d4d6ab770f960bd602399ac9d578e6ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapTransfer-request)))
  "Returns md5sum for a message object of type 'MapTransfer-request"
  "d4d6ab770f960bd602399ac9d578e6ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapTransfer-request>)))
  "Returns full string definition for message of type '<MapTransfer-request>"
  (cl:format cl:nil "string path                 # Path where the file is located or should be stored~%uint8 placement_mode        # In case of a map, 0 = replace, 1 = merge, 2 = update~%uint8 REPLACE = 0~%uint8 MERGE = 1~%uint8 UPDATE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapTransfer-request)))
  "Returns full string definition for message of type 'MapTransfer-request"
  (cl:format cl:nil "string path                 # Path where the file is located or should be stored~%uint8 placement_mode        # In case of a map, 0 = replace, 1 = merge, 2 = update~%uint8 REPLACE = 0~%uint8 MERGE = 1~%uint8 UPDATE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapTransfer-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapTransfer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MapTransfer-request
    (cl:cons ':path (path msg))
    (cl:cons ':placement_mode (placement_mode msg))
))
;//! \htmlinclude MapTransfer-response.msg.html

(cl:defclass <MapTransfer-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MapTransfer-response (<MapTransfer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapTransfer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapTransfer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<MapTransfer-response> is deprecated: use accerion_driver_msgs-srv:MapTransfer-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MapTransfer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MapTransfer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapTransfer-response>) ostream)
  "Serializes a message object of type '<MapTransfer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapTransfer-response>) istream)
  "Deserializes a message object of type '<MapTransfer-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapTransfer-response>)))
  "Returns string type for a service object of type '<MapTransfer-response>"
  "accerion_driver_msgs/MapTransferResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapTransfer-response)))
  "Returns string type for a service object of type 'MapTransfer-response"
  "accerion_driver_msgs/MapTransferResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapTransfer-response>)))
  "Returns md5sum for a message object of type '<MapTransfer-response>"
  "d4d6ab770f960bd602399ac9d578e6ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapTransfer-response)))
  "Returns md5sum for a message object of type 'MapTransfer-response"
  "d4d6ab770f960bd602399ac9d578e6ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapTransfer-response>)))
  "Returns full string definition for message of type '<MapTransfer-response>"
  (cl:format cl:nil "bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapTransfer-response)))
  "Returns full string definition for message of type 'MapTransfer-response"
  (cl:format cl:nil "bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapTransfer-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapTransfer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MapTransfer-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MapTransfer)))
  'MapTransfer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MapTransfer)))
  'MapTransfer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapTransfer)))
  "Returns string type for a service object of type '<MapTransfer>"
  "accerion_driver_msgs/MapTransfer")