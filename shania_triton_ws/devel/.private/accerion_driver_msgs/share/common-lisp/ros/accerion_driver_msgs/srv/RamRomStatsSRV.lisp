; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude RamRomStatsSRV-request.msg.html

(cl:defclass <RamRomStatsSRV-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RamRomStatsSRV-request (<RamRomStatsSRV-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RamRomStatsSRV-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RamRomStatsSRV-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<RamRomStatsSRV-request> is deprecated: use accerion_driver_msgs-srv:RamRomStatsSRV-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RamRomStatsSRV-request>) ostream)
  "Serializes a message object of type '<RamRomStatsSRV-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RamRomStatsSRV-request>) istream)
  "Deserializes a message object of type '<RamRomStatsSRV-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RamRomStatsSRV-request>)))
  "Returns string type for a service object of type '<RamRomStatsSRV-request>"
  "accerion_driver_msgs/RamRomStatsSRVRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RamRomStatsSRV-request)))
  "Returns string type for a service object of type 'RamRomStatsSRV-request"
  "accerion_driver_msgs/RamRomStatsSRVRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RamRomStatsSRV-request>)))
  "Returns md5sum for a message object of type '<RamRomStatsSRV-request>"
  "f929a081cee331427f8c52eba3b62cee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RamRomStatsSRV-request)))
  "Returns md5sum for a message object of type 'RamRomStatsSRV-request"
  "f929a081cee331427f8c52eba3b62cee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RamRomStatsSRV-request>)))
  "Returns full string definition for message of type '<RamRomStatsSRV-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RamRomStatsSRV-request)))
  "Returns full string definition for message of type 'RamRomStatsSRV-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RamRomStatsSRV-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RamRomStatsSRV-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RamRomStatsSRV-request
))
;//! \htmlinclude RamRomStatsSRV-response.msg.html

(cl:defclass <RamRomStatsSRV-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (stats
    :reader stats
    :initarg :stats
    :type accerion_driver_msgs-msg:RamRomStats
    :initform (cl:make-instance 'accerion_driver_msgs-msg:RamRomStats)))
)

(cl:defclass RamRomStatsSRV-response (<RamRomStatsSRV-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RamRomStatsSRV-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RamRomStatsSRV-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<RamRomStatsSRV-response> is deprecated: use accerion_driver_msgs-srv:RamRomStatsSRV-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RamRomStatsSRV-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'stats-val :lambda-list '(m))
(cl:defmethod stats-val ((m <RamRomStatsSRV-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:stats-val is deprecated.  Use accerion_driver_msgs-srv:stats instead.")
  (stats m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RamRomStatsSRV-response>) ostream)
  "Serializes a message object of type '<RamRomStatsSRV-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stats) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RamRomStatsSRV-response>) istream)
  "Deserializes a message object of type '<RamRomStatsSRV-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stats) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RamRomStatsSRV-response>)))
  "Returns string type for a service object of type '<RamRomStatsSRV-response>"
  "accerion_driver_msgs/RamRomStatsSRVResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RamRomStatsSRV-response)))
  "Returns string type for a service object of type 'RamRomStatsSRV-response"
  "accerion_driver_msgs/RamRomStatsSRVResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RamRomStatsSRV-response>)))
  "Returns md5sum for a message object of type '<RamRomStatsSRV-response>"
  "f929a081cee331427f8c52eba3b62cee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RamRomStatsSRV-response)))
  "Returns md5sum for a message object of type 'RamRomStatsSRV-response"
  "f929a081cee331427f8c52eba3b62cee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RamRomStatsSRV-response>)))
  "Returns full string definition for message of type '<RamRomStatsSRV-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%RamRomStats stats~%~%================================================================================~%MSG: accerion_driver_msgs/RamRomStats~%uint32 romAvailable~%uint32 romTotal~%uint32 sdAvailable~%uint32 sdTotal~%uint16 ramUsed~%uint16 ramTotal~%DirSizePart[] parts~%================================================================================~%MSG: accerion_driver_msgs/DirSizePart~%uint16 type~%uint32 sizeInMB~%uint32 nameLength~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RamRomStatsSRV-response)))
  "Returns full string definition for message of type 'RamRomStatsSRV-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%RamRomStats stats~%~%================================================================================~%MSG: accerion_driver_msgs/RamRomStats~%uint32 romAvailable~%uint32 romTotal~%uint32 sdAvailable~%uint32 sdTotal~%uint16 ramUsed~%uint16 ramTotal~%DirSizePart[] parts~%================================================================================~%MSG: accerion_driver_msgs/DirSizePart~%uint16 type~%uint32 sizeInMB~%uint32 nameLength~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RamRomStatsSRV-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stats))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RamRomStatsSRV-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RamRomStatsSRV-response
    (cl:cons ':success (success msg))
    (cl:cons ':stats (stats msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RamRomStatsSRV)))
  'RamRomStatsSRV-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RamRomStatsSRV)))
  'RamRomStatsSRV-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RamRomStatsSRV)))
  "Returns string type for a service object of type '<RamRomStatsSRV>"
  "accerion_driver_msgs/RamRomStatsSRV")