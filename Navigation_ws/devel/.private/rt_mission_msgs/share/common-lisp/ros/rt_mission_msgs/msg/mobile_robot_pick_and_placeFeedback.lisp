; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-msg)


;//! \htmlinclude mobile_robot_pick_and_placeFeedback.msg.html

(cl:defclass <mobile_robot_pick_and_placeFeedback> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform "")
   (percentage_finished
    :reader percentage_finished
    :initarg :percentage_finished
    :type cl:float
    :initform 0.0))
)

(cl:defclass mobile_robot_pick_and_placeFeedback (<mobile_robot_pick_and_placeFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mobile_robot_pick_and_placeFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mobile_robot_pick_and_placeFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-msg:<mobile_robot_pick_and_placeFeedback> is deprecated: use rt_mission_msgs-msg:mobile_robot_pick_and_placeFeedback instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <mobile_robot_pick_and_placeFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:feedback-val is deprecated.  Use rt_mission_msgs-msg:feedback instead.")
  (feedback m))

(cl:ensure-generic-function 'percentage_finished-val :lambda-list '(m))
(cl:defmethod percentage_finished-val ((m <mobile_robot_pick_and_placeFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:percentage_finished-val is deprecated.  Use rt_mission_msgs-msg:percentage_finished instead.")
  (percentage_finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mobile_robot_pick_and_placeFeedback>) ostream)
  "Serializes a message object of type '<mobile_robot_pick_and_placeFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'percentage_finished))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mobile_robot_pick_and_placeFeedback>) istream)
  "Deserializes a message object of type '<mobile_robot_pick_and_placeFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percentage_finished) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mobile_robot_pick_and_placeFeedback>)))
  "Returns string type for a message object of type '<mobile_robot_pick_and_placeFeedback>"
  "rt_mission_msgs/mobile_robot_pick_and_placeFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mobile_robot_pick_and_placeFeedback)))
  "Returns string type for a message object of type 'mobile_robot_pick_and_placeFeedback"
  "rt_mission_msgs/mobile_robot_pick_and_placeFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mobile_robot_pick_and_placeFeedback>)))
  "Returns md5sum for a message object of type '<mobile_robot_pick_and_placeFeedback>"
  "504e74cc782f32ca4d00b0cb52a2dc8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mobile_robot_pick_and_placeFeedback)))
  "Returns md5sum for a message object of type 'mobile_robot_pick_and_placeFeedback"
  "504e74cc782f32ca4d00b0cb52a2dc8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mobile_robot_pick_and_placeFeedback>)))
  "Returns full string definition for message of type '<mobile_robot_pick_and_placeFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%string feedback~%float64 percentage_finished~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mobile_robot_pick_and_placeFeedback)))
  "Returns full string definition for message of type 'mobile_robot_pick_and_placeFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%string feedback~%float64 percentage_finished~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mobile_robot_pick_and_placeFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mobile_robot_pick_and_placeFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'mobile_robot_pick_and_placeFeedback
    (cl:cons ':feedback (feedback msg))
    (cl:cons ':percentage_finished (percentage_finished msg))
))
