; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-srv)


;//! \htmlinclude mission_cancel_service-request.msg.html

(cl:defclass <mission_cancel_service-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass mission_cancel_service-request (<mission_cancel_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mission_cancel_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mission_cancel_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<mission_cancel_service-request> is deprecated: use rt_mission_msgs-srv:mission_cancel_service-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mission_cancel_service-request>) ostream)
  "Serializes a message object of type '<mission_cancel_service-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mission_cancel_service-request>) istream)
  "Deserializes a message object of type '<mission_cancel_service-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mission_cancel_service-request>)))
  "Returns string type for a service object of type '<mission_cancel_service-request>"
  "rt_mission_msgs/mission_cancel_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission_cancel_service-request)))
  "Returns string type for a service object of type 'mission_cancel_service-request"
  "rt_mission_msgs/mission_cancel_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mission_cancel_service-request>)))
  "Returns md5sum for a message object of type '<mission_cancel_service-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mission_cancel_service-request)))
  "Returns md5sum for a message object of type 'mission_cancel_service-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mission_cancel_service-request>)))
  "Returns full string definition for message of type '<mission_cancel_service-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mission_cancel_service-request)))
  "Returns full string definition for message of type 'mission_cancel_service-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mission_cancel_service-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mission_cancel_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'mission_cancel_service-request
))
;//! \htmlinclude mission_cancel_service-response.msg.html

(cl:defclass <mission_cancel_service-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mission_cancel_service-response (<mission_cancel_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mission_cancel_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mission_cancel_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<mission_cancel_service-response> is deprecated: use rt_mission_msgs-srv:mission_cancel_service-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <mission_cancel_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:result-val is deprecated.  Use rt_mission_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mission_cancel_service-response>) ostream)
  "Serializes a message object of type '<mission_cancel_service-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mission_cancel_service-response>) istream)
  "Deserializes a message object of type '<mission_cancel_service-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mission_cancel_service-response>)))
  "Returns string type for a service object of type '<mission_cancel_service-response>"
  "rt_mission_msgs/mission_cancel_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission_cancel_service-response)))
  "Returns string type for a service object of type 'mission_cancel_service-response"
  "rt_mission_msgs/mission_cancel_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mission_cancel_service-response>)))
  "Returns md5sum for a message object of type '<mission_cancel_service-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mission_cancel_service-response)))
  "Returns md5sum for a message object of type 'mission_cancel_service-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mission_cancel_service-response>)))
  "Returns full string definition for message of type '<mission_cancel_service-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mission_cancel_service-response)))
  "Returns full string definition for message of type 'mission_cancel_service-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mission_cancel_service-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mission_cancel_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'mission_cancel_service-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'mission_cancel_service)))
  'mission_cancel_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'mission_cancel_service)))
  'mission_cancel_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mission_cancel_service)))
  "Returns string type for a service object of type '<mission_cancel_service>"
  "rt_mission_msgs/mission_cancel_service")