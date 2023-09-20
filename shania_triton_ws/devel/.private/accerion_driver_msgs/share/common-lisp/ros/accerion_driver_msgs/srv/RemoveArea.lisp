; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude RemoveArea-request.msg.html

(cl:defclass <RemoveArea-request> (roslisp-msg-protocol:ros-message)
  ((areaIDToBeRemoved
    :reader areaIDToBeRemoved
    :initarg :areaIDToBeRemoved
    :type cl:fixnum
    :initform 0)
   (removeAll
    :reader removeAll
    :initarg :removeAll
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoveArea-request (<RemoveArea-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveArea-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveArea-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<RemoveArea-request> is deprecated: use accerion_driver_msgs-srv:RemoveArea-request instead.")))

(cl:ensure-generic-function 'areaIDToBeRemoved-val :lambda-list '(m))
(cl:defmethod areaIDToBeRemoved-val ((m <RemoveArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:areaIDToBeRemoved-val is deprecated.  Use accerion_driver_msgs-srv:areaIDToBeRemoved instead.")
  (areaIDToBeRemoved m))

(cl:ensure-generic-function 'removeAll-val :lambda-list '(m))
(cl:defmethod removeAll-val ((m <RemoveArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:removeAll-val is deprecated.  Use accerion_driver_msgs-srv:removeAll instead.")
  (removeAll m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveArea-request>) ostream)
  "Serializes a message object of type '<RemoveArea-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'areaIDToBeRemoved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'areaIDToBeRemoved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'removeAll) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveArea-request>) istream)
  "Deserializes a message object of type '<RemoveArea-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'areaIDToBeRemoved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'areaIDToBeRemoved)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'removeAll) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveArea-request>)))
  "Returns string type for a service object of type '<RemoveArea-request>"
  "accerion_driver_msgs/RemoveAreaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveArea-request)))
  "Returns string type for a service object of type 'RemoveArea-request"
  "accerion_driver_msgs/RemoveAreaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveArea-request>)))
  "Returns md5sum for a message object of type '<RemoveArea-request>"
  "881afa415578f35e809f2c9503522767")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveArea-request)))
  "Returns md5sum for a message object of type 'RemoveArea-request"
  "881afa415578f35e809f2c9503522767")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveArea-request>)))
  "Returns full string definition for message of type '<RemoveArea-request>"
  (cl:format cl:nil "uint16 areaIDToBeRemoved      # Area ID to be removed~%bool removeAll                # Remove all areas~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveArea-request)))
  "Returns full string definition for message of type 'RemoveArea-request"
  (cl:format cl:nil "uint16 areaIDToBeRemoved      # Area ID to be removed~%bool removeAll                # Remove all areas~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveArea-request>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveArea-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveArea-request
    (cl:cons ':areaIDToBeRemoved (areaIDToBeRemoved msg))
    (cl:cons ':removeAll (removeAll msg))
))
;//! \htmlinclude RemoveArea-response.msg.html

(cl:defclass <RemoveArea-response> (roslisp-msg-protocol:ros-message)
  ((areaIDRemoved
    :reader areaIDRemoved
    :initarg :areaIDRemoved
    :type cl:fixnum
    :initform 0)
   (success
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

(cl:defclass RemoveArea-response (<RemoveArea-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveArea-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveArea-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<RemoveArea-response> is deprecated: use accerion_driver_msgs-srv:RemoveArea-response instead.")))

(cl:ensure-generic-function 'areaIDRemoved-val :lambda-list '(m))
(cl:defmethod areaIDRemoved-val ((m <RemoveArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:areaIDRemoved-val is deprecated.  Use accerion_driver_msgs-srv:areaIDRemoved instead.")
  (areaIDRemoved m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RemoveArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RemoveArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveArea-response>) ostream)
  "Serializes a message object of type '<RemoveArea-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'areaIDRemoved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'areaIDRemoved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveArea-response>) istream)
  "Deserializes a message object of type '<RemoveArea-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'areaIDRemoved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'areaIDRemoved)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveArea-response>)))
  "Returns string type for a service object of type '<RemoveArea-response>"
  "accerion_driver_msgs/RemoveAreaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveArea-response)))
  "Returns string type for a service object of type 'RemoveArea-response"
  "accerion_driver_msgs/RemoveAreaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveArea-response>)))
  "Returns md5sum for a message object of type '<RemoveArea-response>"
  "881afa415578f35e809f2c9503522767")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveArea-response)))
  "Returns md5sum for a message object of type 'RemoveArea-response"
  "881afa415578f35e809f2c9503522767")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveArea-response>)))
  "Returns full string definition for message of type '<RemoveArea-response>"
  (cl:format cl:nil "uint16 areaIDRemoved        # Area ID that was removed (0xFFFF for all areas)~%bool success                # indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveArea-response)))
  "Returns full string definition for message of type 'RemoveArea-response"
  (cl:format cl:nil "uint16 areaIDRemoved        # Area ID that was removed (0xFFFF for all areas)~%bool success                # indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveArea-response>))
  (cl:+ 0
     2
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveArea-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveArea-response
    (cl:cons ':areaIDRemoved (areaIDRemoved msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveArea)))
  'RemoveArea-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveArea)))
  'RemoveArea-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveArea)))
  "Returns string type for a service object of type '<RemoveArea>"
  "accerion_driver_msgs/RemoveArea")