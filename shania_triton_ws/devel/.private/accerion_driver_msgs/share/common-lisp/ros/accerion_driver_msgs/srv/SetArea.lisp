; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude SetArea-request.msg.html

(cl:defclass <SetArea-request> (roslisp-msg-protocol:ros-message)
  ((desiredArea
    :reader desiredArea
    :initarg :desiredArea
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetArea-request (<SetArea-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetArea-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetArea-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<SetArea-request> is deprecated: use accerion_driver_msgs-srv:SetArea-request instead.")))

(cl:ensure-generic-function 'desiredArea-val :lambda-list '(m))
(cl:defmethod desiredArea-val ((m <SetArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:desiredArea-val is deprecated.  Use accerion_driver_msgs-srv:desiredArea instead.")
  (desiredArea m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetArea-request>) ostream)
  "Serializes a message object of type '<SetArea-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'desiredArea)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'desiredArea)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetArea-request>) istream)
  "Deserializes a message object of type '<SetArea-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'desiredArea)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'desiredArea)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetArea-request>)))
  "Returns string type for a service object of type '<SetArea-request>"
  "accerion_driver_msgs/SetAreaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetArea-request)))
  "Returns string type for a service object of type 'SetArea-request"
  "accerion_driver_msgs/SetAreaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetArea-request>)))
  "Returns md5sum for a message object of type '<SetArea-request>"
  "5a693ddcf3bdcdceea8d6dd1f06cc265")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetArea-request)))
  "Returns md5sum for a message object of type 'SetArea-request"
  "5a693ddcf3bdcdceea8d6dd1f06cc265")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetArea-request>)))
  "Returns full string definition for message of type '<SetArea-request>"
  (cl:format cl:nil "uint16 desiredArea              # areaID to set in case of set~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetArea-request)))
  "Returns full string definition for message of type 'SetArea-request"
  (cl:format cl:nil "uint16 desiredArea              # areaID to set in case of set~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetArea-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetArea-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetArea-request
    (cl:cons ':desiredArea (desiredArea msg))
))
;//! \htmlinclude SetArea-response.msg.html

(cl:defclass <SetArea-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetArea-response (<SetArea-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetArea-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetArea-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<SetArea-response> is deprecated: use accerion_driver_msgs-srv:SetArea-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'activeArea-val :lambda-list '(m))
(cl:defmethod activeArea-val ((m <SetArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:activeArea-val is deprecated.  Use accerion_driver_msgs-srv:activeArea instead.")
  (activeArea m))

(cl:ensure-generic-function 'availbleAreas-val :lambda-list '(m))
(cl:defmethod availbleAreas-val ((m <SetArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:availbleAreas-val is deprecated.  Use accerion_driver_msgs-srv:availbleAreas instead.")
  (availbleAreas m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetArea-response>) ostream)
  "Serializes a message object of type '<SetArea-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetArea-response>) istream)
  "Deserializes a message object of type '<SetArea-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetArea-response>)))
  "Returns string type for a service object of type '<SetArea-response>"
  "accerion_driver_msgs/SetAreaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetArea-response)))
  "Returns string type for a service object of type 'SetArea-response"
  "accerion_driver_msgs/SetAreaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetArea-response>)))
  "Returns md5sum for a message object of type '<SetArea-response>"
  "5a693ddcf3bdcdceea8d6dd1f06cc265")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetArea-response)))
  "Returns md5sum for a message object of type 'SetArea-response"
  "5a693ddcf3bdcdceea8d6dd1f06cc265")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetArea-response>)))
  "Returns full string definition for message of type '<SetArea-response>"
  (cl:format cl:nil "bool success                    # was the request succesful~%uint16 activeArea   		    # contains the ID of the area that is currently selected~%uint16[]  availbleAreas         # contains the ID's of all the existing areas, the first one being the active one~%string message 				    # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetArea-response)))
  "Returns full string definition for message of type 'SetArea-response"
  (cl:format cl:nil "bool success                    # was the request succesful~%uint16 activeArea   		    # contains the ID of the area that is currently selected~%uint16[]  availbleAreas         # contains the ID's of all the existing areas, the first one being the active one~%string message 				    # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetArea-response>))
  (cl:+ 0
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'availbleAreas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetArea-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetArea-response
    (cl:cons ':success (success msg))
    (cl:cons ':activeArea (activeArea msg))
    (cl:cons ':availbleAreas (availbleAreas msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetArea)))
  'SetArea-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetArea)))
  'SetArea-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetArea)))
  "Returns string type for a service object of type '<SetArea>"
  "accerion_driver_msgs/SetArea")