; Auto-generated. Do not edit!


(cl:in-package fuse_pathfollowing_msgs-msg)


;//! \htmlinclude Segment.msg.html

(cl:defclass <Segment> (roslisp-msg-protocol:ros-message)
  ((type_enum
    :reader type_enum
    :initarg :type_enum
    :type cl:fixnum
    :initform 0)
   (completion_node_id
    :reader completion_node_id
    :initarg :completion_node_id
    :type cl:string
    :initform "")
   (start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (end
    :reader end
    :initarg :end
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (is_large_arc
    :reader is_large_arc
    :initarg :is_large_arc
    :type cl:boolean
    :initform cl:nil)
   (is_clockwise
    :reader is_clockwise
    :initarg :is_clockwise
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Segment (<Segment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Segment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Segment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fuse_pathfollowing_msgs-msg:<Segment> is deprecated: use fuse_pathfollowing_msgs-msg:Segment instead.")))

(cl:ensure-generic-function 'type_enum-val :lambda-list '(m))
(cl:defmethod type_enum-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:type_enum-val is deprecated.  Use fuse_pathfollowing_msgs-msg:type_enum instead.")
  (type_enum m))

(cl:ensure-generic-function 'completion_node_id-val :lambda-list '(m))
(cl:defmethod completion_node_id-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:completion_node_id-val is deprecated.  Use fuse_pathfollowing_msgs-msg:completion_node_id instead.")
  (completion_node_id m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:start-val is deprecated.  Use fuse_pathfollowing_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:end-val is deprecated.  Use fuse_pathfollowing_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:radius-val is deprecated.  Use fuse_pathfollowing_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'is_large_arc-val :lambda-list '(m))
(cl:defmethod is_large_arc-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:is_large_arc-val is deprecated.  Use fuse_pathfollowing_msgs-msg:is_large_arc instead.")
  (is_large_arc m))

(cl:ensure-generic-function 'is_clockwise-val :lambda-list '(m))
(cl:defmethod is_clockwise-val ((m <Segment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:is_clockwise-val is deprecated.  Use fuse_pathfollowing_msgs-msg:is_clockwise instead.")
  (is_clockwise m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Segment>)))
    "Constants for message type '<Segment>"
  '((:TYPE_UNKNOWN . 0)
    (:TYPE_LINE . 1)
    (:TYPE_ARC . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Segment)))
    "Constants for message type 'Segment"
  '((:TYPE_UNKNOWN . 0)
    (:TYPE_LINE . 1)
    (:TYPE_ARC . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Segment>) ostream)
  "Serializes a message object of type '<Segment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_enum)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'completion_node_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'completion_node_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_large_arc) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_clockwise) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Segment>) istream)
  "Deserializes a message object of type '<Segment>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_enum)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'completion_node_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'completion_node_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_large_arc) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_clockwise) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Segment>)))
  "Returns string type for a message object of type '<Segment>"
  "fuse_pathfollowing_msgs/Segment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Segment)))
  "Returns string type for a message object of type 'Segment"
  "fuse_pathfollowing_msgs/Segment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Segment>)))
  "Returns md5sum for a message object of type '<Segment>"
  "90e1867debfb66d37e5a20d9acd4d899")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Segment)))
  "Returns md5sum for a message object of type 'Segment"
  "90e1867debfb66d37e5a20d9acd4d899")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Segment>)))
  "Returns full string definition for message of type '<Segment>"
  (cl:format cl:nil "## Array of segments that compose a path~%~%# Defines the type of segment (see possible types below)~%uint8 type_enum~%# Possible types~%uint8 TYPE_UNKNOWN = 0~%uint8 TYPE_LINE = 1~%uint8 TYPE_ARC = 2~%~%# The ID of the node that has been reached when this segment is complete.~%#   If this ID is blank, then this segment is intermediary, and no node is reached on completion~%string completion_node_id~%~%# 3D location (in meters) of the start of the segment~%geometry_msgs/Vector3 start~%# 3D location (in meters) of the end of the segment~%geometry_msgs/Vector3 end~%~%## Arc-specific parameters~%# Radius (in meters) of the arc~%float32 radius~%# True if arc is > 180 degrees, False if not~%bool is_large_arc~%# True if arc moves in clockwise direction, False if counter-clockwise~%bool is_clockwise~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Segment)))
  "Returns full string definition for message of type 'Segment"
  (cl:format cl:nil "## Array of segments that compose a path~%~%# Defines the type of segment (see possible types below)~%uint8 type_enum~%# Possible types~%uint8 TYPE_UNKNOWN = 0~%uint8 TYPE_LINE = 1~%uint8 TYPE_ARC = 2~%~%# The ID of the node that has been reached when this segment is complete.~%#   If this ID is blank, then this segment is intermediary, and no node is reached on completion~%string completion_node_id~%~%# 3D location (in meters) of the start of the segment~%geometry_msgs/Vector3 start~%# 3D location (in meters) of the end of the segment~%geometry_msgs/Vector3 end~%~%## Arc-specific parameters~%# Radius (in meters) of the arc~%float32 radius~%# True if arc is > 180 degrees, False if not~%bool is_large_arc~%# True if arc moves in clockwise direction, False if counter-clockwise~%bool is_clockwise~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Segment>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'completion_node_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Segment>))
  "Converts a ROS message object to a list"
  (cl:list 'Segment
    (cl:cons ':type_enum (type_enum msg))
    (cl:cons ':completion_node_id (completion_node_id msg))
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':is_large_arc (is_large_arc msg))
    (cl:cons ':is_clockwise (is_clockwise msg))
))
