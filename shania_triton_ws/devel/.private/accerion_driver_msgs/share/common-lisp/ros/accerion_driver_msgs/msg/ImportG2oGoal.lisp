; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-msg)


;//! \htmlinclude ImportG2oGoal.msg.html

(cl:defclass <ImportG2oGoal> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ImportG2oGoal (<ImportG2oGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImportG2oGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImportG2oGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-msg:<ImportG2oGoal> is deprecated: use accerion_driver_msgs-msg:ImportG2oGoal instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImportG2oGoal>) ostream)
  "Serializes a message object of type '<ImportG2oGoal>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImportG2oGoal>) istream)
  "Deserializes a message object of type '<ImportG2oGoal>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImportG2oGoal>)))
  "Returns string type for a message object of type '<ImportG2oGoal>"
  "accerion_driver_msgs/ImportG2oGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImportG2oGoal)))
  "Returns string type for a message object of type 'ImportG2oGoal"
  "accerion_driver_msgs/ImportG2oGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImportG2oGoal>)))
  "Returns md5sum for a message object of type '<ImportG2oGoal>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImportG2oGoal)))
  "Returns md5sum for a message object of type 'ImportG2oGoal"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImportG2oGoal>)))
  "Returns full string definition for message of type '<ImportG2oGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImportG2oGoal)))
  "Returns full string definition for message of type 'ImportG2oGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImportG2oGoal>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImportG2oGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ImportG2oGoal
))
