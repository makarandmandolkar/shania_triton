; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-msg)


;//! \htmlinclude GetMapFeedback.msg.html

(cl:defclass <GetMapFeedback> (roslisp-msg-protocol:ros-message)
  ((progress
    :reader progress
    :initarg :progress
    :type cl:integer
    :initform 0))
)

(cl:defclass GetMapFeedback (<GetMapFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-msg:<GetMapFeedback> is deprecated: use accerion_driver_msgs-msg:GetMapFeedback instead.")))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <GetMapFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:progress-val is deprecated.  Use accerion_driver_msgs-msg:progress instead.")
  (progress m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapFeedback>) ostream)
  "Serializes a message object of type '<GetMapFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'progress)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapFeedback>) istream)
  "Deserializes a message object of type '<GetMapFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'progress) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapFeedback>)))
  "Returns string type for a message object of type '<GetMapFeedback>"
  "accerion_driver_msgs/GetMapFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapFeedback)))
  "Returns string type for a message object of type 'GetMapFeedback"
  "accerion_driver_msgs/GetMapFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapFeedback>)))
  "Returns md5sum for a message object of type '<GetMapFeedback>"
  "3068c2ff8fa67c9565c90bbf9331baeb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapFeedback)))
  "Returns md5sum for a message object of type 'GetMapFeedback"
  "3068c2ff8fa67c9565c90bbf9331baeb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapFeedback>)))
  "Returns full string definition for message of type '<GetMapFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%int32 progress              # message that contains information about the current progress~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapFeedback)))
  "Returns full string definition for message of type 'GetMapFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# feedback~%int32 progress              # message that contains information about the current progress~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapFeedback
    (cl:cons ':progress (progress msg))
))
