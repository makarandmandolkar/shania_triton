; Auto-generated. Do not edit!


(cl:in-package rt_carriage_controller_msgs-srv)


;//! \htmlinclude pallet_fork_position-request.msg.html

(cl:defclass <pallet_fork_position-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass pallet_fork_position-request (<pallet_fork_position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pallet_fork_position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pallet_fork_position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_carriage_controller_msgs-srv:<pallet_fork_position-request> is deprecated: use rt_carriage_controller_msgs-srv:pallet_fork_position-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pallet_fork_position-request>) ostream)
  "Serializes a message object of type '<pallet_fork_position-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pallet_fork_position-request>) istream)
  "Deserializes a message object of type '<pallet_fork_position-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pallet_fork_position-request>)))
  "Returns string type for a service object of type '<pallet_fork_position-request>"
  "rt_carriage_controller_msgs/pallet_fork_positionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_fork_position-request)))
  "Returns string type for a service object of type 'pallet_fork_position-request"
  "rt_carriage_controller_msgs/pallet_fork_positionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pallet_fork_position-request>)))
  "Returns md5sum for a message object of type '<pallet_fork_position-request>"
  "28a2169120952b9ccef27ea2cdcbc4e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pallet_fork_position-request)))
  "Returns md5sum for a message object of type 'pallet_fork_position-request"
  "28a2169120952b9ccef27ea2cdcbc4e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pallet_fork_position-request>)))
  "Returns full string definition for message of type '<pallet_fork_position-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pallet_fork_position-request)))
  "Returns full string definition for message of type 'pallet_fork_position-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pallet_fork_position-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pallet_fork_position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pallet_fork_position-request
))
;//! \htmlinclude pallet_fork_position-response.msg.html

(cl:defclass <pallet_fork_position-response> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (palletOnFork
    :reader palletOnFork
    :initarg :palletOnFork
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass pallet_fork_position-response (<pallet_fork_position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pallet_fork_position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pallet_fork_position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_carriage_controller_msgs-srv:<pallet_fork_position-response> is deprecated: use rt_carriage_controller_msgs-srv:pallet_fork_position-response instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <pallet_fork_position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-srv:offset-val is deprecated.  Use rt_carriage_controller_msgs-srv:offset instead.")
  (offset m))

(cl:ensure-generic-function 'palletOnFork-val :lambda-list '(m))
(cl:defmethod palletOnFork-val ((m <pallet_fork_position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_carriage_controller_msgs-srv:palletOnFork-val is deprecated.  Use rt_carriage_controller_msgs-srv:palletOnFork instead.")
  (palletOnFork m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pallet_fork_position-response>) ostream)
  "Serializes a message object of type '<pallet_fork_position-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'palletOnFork) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pallet_fork_position-response>) istream)
  "Deserializes a message object of type '<pallet_fork_position-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'palletOnFork) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pallet_fork_position-response>)))
  "Returns string type for a service object of type '<pallet_fork_position-response>"
  "rt_carriage_controller_msgs/pallet_fork_positionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_fork_position-response)))
  "Returns string type for a service object of type 'pallet_fork_position-response"
  "rt_carriage_controller_msgs/pallet_fork_positionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pallet_fork_position-response>)))
  "Returns md5sum for a message object of type '<pallet_fork_position-response>"
  "28a2169120952b9ccef27ea2cdcbc4e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pallet_fork_position-response)))
  "Returns md5sum for a message object of type 'pallet_fork_position-response"
  "28a2169120952b9ccef27ea2cdcbc4e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pallet_fork_position-response>)))
  "Returns full string definition for message of type '<pallet_fork_position-response>"
  (cl:format cl:nil "float32 offset~%bool palletOnFork~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pallet_fork_position-response)))
  "Returns full string definition for message of type 'pallet_fork_position-response"
  (cl:format cl:nil "float32 offset~%bool palletOnFork~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pallet_fork_position-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pallet_fork_position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pallet_fork_position-response
    (cl:cons ':offset (offset msg))
    (cl:cons ':palletOnFork (palletOnFork msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pallet_fork_position)))
  'pallet_fork_position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pallet_fork_position)))
  'pallet_fork_position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_fork_position)))
  "Returns string type for a service object of type '<pallet_fork_position>"
  "rt_carriage_controller_msgs/pallet_fork_position")