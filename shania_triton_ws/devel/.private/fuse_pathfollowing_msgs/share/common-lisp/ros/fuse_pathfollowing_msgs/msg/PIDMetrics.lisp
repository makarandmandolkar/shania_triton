; Auto-generated. Do not edit!


(cl:in-package fuse_pathfollowing_msgs-msg)


;//! \htmlinclude PIDMetrics.msg.html

(cl:defclass <PIDMetrics> (roslisp-msg-protocol:ros-message)
  ((p_effort
    :reader p_effort
    :initarg :p_effort
    :type cl:float
    :initform 0.0)
   (i_effort
    :reader i_effort
    :initarg :i_effort
    :type cl:float
    :initform 0.0)
   (d_effort
    :reader d_effort
    :initarg :d_effort
    :type cl:float
    :initform 0.0)
   (total_effort
    :reader total_effort
    :initarg :total_effort
    :type cl:float
    :initform 0.0))
)

(cl:defclass PIDMetrics (<PIDMetrics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PIDMetrics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PIDMetrics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fuse_pathfollowing_msgs-msg:<PIDMetrics> is deprecated: use fuse_pathfollowing_msgs-msg:PIDMetrics instead.")))

(cl:ensure-generic-function 'p_effort-val :lambda-list '(m))
(cl:defmethod p_effort-val ((m <PIDMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:p_effort-val is deprecated.  Use fuse_pathfollowing_msgs-msg:p_effort instead.")
  (p_effort m))

(cl:ensure-generic-function 'i_effort-val :lambda-list '(m))
(cl:defmethod i_effort-val ((m <PIDMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:i_effort-val is deprecated.  Use fuse_pathfollowing_msgs-msg:i_effort instead.")
  (i_effort m))

(cl:ensure-generic-function 'd_effort-val :lambda-list '(m))
(cl:defmethod d_effort-val ((m <PIDMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:d_effort-val is deprecated.  Use fuse_pathfollowing_msgs-msg:d_effort instead.")
  (d_effort m))

(cl:ensure-generic-function 'total_effort-val :lambda-list '(m))
(cl:defmethod total_effort-val ((m <PIDMetrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:total_effort-val is deprecated.  Use fuse_pathfollowing_msgs-msg:total_effort instead.")
  (total_effort m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PIDMetrics>) ostream)
  "Serializes a message object of type '<PIDMetrics>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'p_effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'i_effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'd_effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PIDMetrics>) istream)
  "Deserializes a message object of type '<PIDMetrics>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p_effort) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'i_effort) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd_effort) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_effort) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PIDMetrics>)))
  "Returns string type for a message object of type '<PIDMetrics>"
  "fuse_pathfollowing_msgs/PIDMetrics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIDMetrics)))
  "Returns string type for a message object of type 'PIDMetrics"
  "fuse_pathfollowing_msgs/PIDMetrics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PIDMetrics>)))
  "Returns md5sum for a message object of type '<PIDMetrics>"
  "b5f1ade5268ff3fd49169efd23b304bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PIDMetrics)))
  "Returns md5sum for a message object of type 'PIDMetrics"
  "b5f1ade5268ff3fd49169efd23b304bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PIDMetrics>)))
  "Returns full string definition for message of type '<PIDMetrics>"
  (cl:format cl:nil "float64 p_effort~%float64 i_effort~%float64 d_effort~%float64 total_effort~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PIDMetrics)))
  "Returns full string definition for message of type 'PIDMetrics"
  (cl:format cl:nil "float64 p_effort~%float64 i_effort~%float64 d_effort~%float64 total_effort~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PIDMetrics>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PIDMetrics>))
  "Converts a ROS message object to a list"
  (cl:list 'PIDMetrics
    (cl:cons ':p_effort (p_effort msg))
    (cl:cons ':i_effort (i_effort msg))
    (cl:cons ':d_effort (d_effort msg))
    (cl:cons ':total_effort (total_effort msg))
))
