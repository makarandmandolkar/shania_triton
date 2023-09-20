; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude GetAreas-request.msg.html

(cl:defclass <GetAreas-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAreas-request (<GetAreas-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAreas-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAreas-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<GetAreas-request> is deprecated: use accerion_driver_msgs-srv:GetAreas-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAreas-request>) ostream)
  "Serializes a message object of type '<GetAreas-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAreas-request>) istream)
  "Deserializes a message object of type '<GetAreas-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAreas-request>)))
  "Returns string type for a service object of type '<GetAreas-request>"
  "accerion_driver_msgs/GetAreasRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAreas-request)))
  "Returns string type for a service object of type 'GetAreas-request"
  "accerion_driver_msgs/GetAreasRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAreas-request>)))
  "Returns md5sum for a message object of type '<GetAreas-request>"
  "c78e2d446f78752232f22114cb77d34e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAreas-request)))
  "Returns md5sum for a message object of type 'GetAreas-request"
  "c78e2d446f78752232f22114cb77d34e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAreas-request>)))
  "Returns full string definition for message of type '<GetAreas-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAreas-request)))
  "Returns full string definition for message of type 'GetAreas-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAreas-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAreas-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAreas-request
))
;//! \htmlinclude GetAreas-response.msg.html

(cl:defclass <GetAreas-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (activeArea
    :reader activeArea
    :initarg :activeArea
    :type cl:fixnum
    :initform 0)
   (availbleAreas
    :reader availbleAreas
    :initarg :availbleAreas
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass GetAreas-response (<GetAreas-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAreas-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAreas-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<GetAreas-response> is deprecated: use accerion_driver_msgs-srv:GetAreas-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetAreas-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'activeArea-val :lambda-list '(m))
(cl:defmethod activeArea-val ((m <GetAreas-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:activeArea-val is deprecated.  Use accerion_driver_msgs-srv:activeArea instead.")
  (activeArea m))

(cl:ensure-generic-function 'availbleAreas-val :lambda-list '(m))
(cl:defmethod availbleAreas-val ((m <GetAreas-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:availbleAreas-val is deprecated.  Use accerion_driver_msgs-srv:availbleAreas instead.")
  (availbleAreas m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetAreas-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAreas-response>) ostream)
  "Serializes a message object of type '<GetAreas-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'activeArea)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'activeArea)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'availbleAreas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'availbleAreas))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAreas-response>) istream)
  "Deserializes a message object of type '<GetAreas-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'activeArea)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'activeArea)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'availbleAreas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'availbleAreas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAreas-response>)))
  "Returns string type for a service object of type '<GetAreas-response>"
  "accerion_driver_msgs/GetAreasResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAreas-response)))
  "Returns string type for a service object of type 'GetAreas-response"
  "accerion_driver_msgs/GetAreasResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAreas-response>)))
  "Returns md5sum for a message object of type '<GetAreas-response>"
  "c78e2d446f78752232f22114cb77d34e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAreas-response)))
  "Returns md5sum for a message object of type 'GetAreas-response"
  "c78e2d446f78752232f22114cb77d34e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAreas-response>)))
  "Returns full string definition for message of type '<GetAreas-response>"
  (cl:format cl:nil "bool success                    # was the request succesful~%uint16 activeArea   		    # contains the ID of the area that is currently selected~%uint16[]  availbleAreas         # contains the ID's of all the existing areas, the first one being the active one~%string message 				    # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAreas-response)))
  "Returns full string definition for message of type 'GetAreas-response"
  (cl:format cl:nil "bool success                    # was the request succesful~%uint16 activeArea   		    # contains the ID of the area that is currently selected~%uint16[]  availbleAreas         # contains the ID's of all the existing areas, the first one being the active one~%string message 				    # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAreas-response>))
  (cl:+ 0
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'availbleAreas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAreas-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAreas-response
    (cl:cons ':success (success msg))
    (cl:cons ':activeArea (activeArea msg))
    (cl:cons ':availbleAreas (availbleAreas msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAreas)))
  'GetAreas-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAreas)))
  'GetAreas-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAreas)))
  "Returns string type for a service object of type '<GetAreas>"
  "accerion_driver_msgs/GetAreas")