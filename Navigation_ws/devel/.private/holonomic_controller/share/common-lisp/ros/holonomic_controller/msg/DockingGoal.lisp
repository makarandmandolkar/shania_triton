; Auto-generated. Do not edit!


(cl:in-package holonomic_controller-msg)


;//! \htmlinclude DockingGoal.msg.html

(cl:defclass <DockingGoal> (roslisp-msg-protocol:ros-message)
  ((goal_parent_frame
    :reader goal_parent_frame
    :initarg :goal_parent_frame
    :type cl:string
    :initform "")
   (goal_position
    :reader goal_position
    :initarg :goal_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (goal_euler_orientation
    :reader goal_euler_orientation
    :initarg :goal_euler_orientation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (goal_tolerance
    :reader goal_tolerance
    :initarg :goal_tolerance
    :type cl:float
    :initform 0.0)
   (lin_vel_max
    :reader lin_vel_max
    :initarg :lin_vel_max
    :type cl:float
    :initform 0.0))
)

(cl:defclass DockingGoal (<DockingGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockingGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockingGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name holonomic_controller-msg:<DockingGoal> is deprecated: use holonomic_controller-msg:DockingGoal instead.")))

(cl:ensure-generic-function 'goal_parent_frame-val :lambda-list '(m))
(cl:defmethod goal_parent_frame-val ((m <DockingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:goal_parent_frame-val is deprecated.  Use holonomic_controller-msg:goal_parent_frame instead.")
  (goal_parent_frame m))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <DockingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:goal_position-val is deprecated.  Use holonomic_controller-msg:goal_position instead.")
  (goal_position m))

(cl:ensure-generic-function 'goal_euler_orientation-val :lambda-list '(m))
(cl:defmethod goal_euler_orientation-val ((m <DockingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:goal_euler_orientation-val is deprecated.  Use holonomic_controller-msg:goal_euler_orientation instead.")
  (goal_euler_orientation m))

(cl:ensure-generic-function 'goal_tolerance-val :lambda-list '(m))
(cl:defmethod goal_tolerance-val ((m <DockingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:goal_tolerance-val is deprecated.  Use holonomic_controller-msg:goal_tolerance instead.")
  (goal_tolerance m))

(cl:ensure-generic-function 'lin_vel_max-val :lambda-list '(m))
(cl:defmethod lin_vel_max-val ((m <DockingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader holonomic_controller-msg:lin_vel_max-val is deprecated.  Use holonomic_controller-msg:lin_vel_max instead.")
  (lin_vel_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockingGoal>) ostream)
  "Serializes a message object of type '<DockingGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_parent_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_parent_frame))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_euler_orientation) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lin_vel_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockingGoal>) istream)
  "Deserializes a message object of type '<DockingGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_parent_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_parent_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_euler_orientation) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_tolerance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lin_vel_max) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockingGoal>)))
  "Returns string type for a message object of type '<DockingGoal>"
  "holonomic_controller/DockingGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockingGoal)))
  "Returns string type for a message object of type 'DockingGoal"
  "holonomic_controller/DockingGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockingGoal>)))
  "Returns md5sum for a message object of type '<DockingGoal>"
  "4a01939c8197b95cd380fc2893fea6c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockingGoal)))
  "Returns md5sum for a message object of type 'DockingGoal"
  "4a01939c8197b95cd380fc2893fea6c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockingGoal>)))
  "Returns full string definition for message of type '<DockingGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string goal_parent_frame~%geometry_msgs/Point goal_position~%geometry_msgs/Vector3 goal_euler_orientation~%float64 goal_tolerance~%float64 lin_vel_max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockingGoal)))
  "Returns full string definition for message of type 'DockingGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%string goal_parent_frame~%geometry_msgs/Point goal_position~%geometry_msgs/Vector3 goal_euler_orientation~%float64 goal_tolerance~%float64 lin_vel_max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockingGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'goal_parent_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_euler_orientation))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockingGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'DockingGoal
    (cl:cons ':goal_parent_frame (goal_parent_frame msg))
    (cl:cons ':goal_position (goal_position msg))
    (cl:cons ':goal_euler_orientation (goal_euler_orientation msg))
    (cl:cons ':goal_tolerance (goal_tolerance msg))
    (cl:cons ':lin_vel_max (lin_vel_max msg))
))
