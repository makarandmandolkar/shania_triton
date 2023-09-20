; Auto-generated. Do not edit!


(cl:in-package fuse_pathfollowing_msgs-msg)


;//! \htmlinclude Path.msg.html

(cl:defclass <Path> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector fuse_pathfollowing_msgs-msg:Segment)
   :initform (cl:make-array 0 :element-type 'fuse_pathfollowing_msgs-msg:Segment :initial-element (cl:make-instance 'fuse_pathfollowing_msgs-msg:Segment))))
)

(cl:defclass Path (<Path>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Path>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Path)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fuse_pathfollowing_msgs-msg:<Path> is deprecated: use fuse_pathfollowing_msgs-msg:Path instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:header-val is deprecated.  Use fuse_pathfollowing_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:segments-val is deprecated.  Use fuse_pathfollowing_msgs-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Path>) ostream)
  "Serializes a message object of type '<Path>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Path>) istream)
  "Deserializes a message object of type '<Path>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fuse_pathfollowing_msgs-msg:Segment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Path>)))
  "Returns string type for a message object of type '<Path>"
  "fuse_pathfollowing_msgs/Path")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Path)))
  "Returns string type for a message object of type 'Path"
  "fuse_pathfollowing_msgs/Path")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Path>)))
  "Returns md5sum for a message object of type '<Path>"
  "85569c99d3939c53d20c7ea066d55773")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Path)))
  "Returns md5sum for a message object of type 'Path"
  "85569c99d3939c53d20c7ea066d55773")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Path>)))
  "Returns full string definition for message of type '<Path>"
  (cl:format cl:nil "~%Header header~%Segment[] segments~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: fuse_pathfollowing_msgs/Segment~%## Array of segments that compose a path~%~%# Defines the type of segment (see possible types below)~%uint8 type_enum~%# Possible types~%uint8 TYPE_UNKNOWN = 0~%uint8 TYPE_LINE = 1~%uint8 TYPE_ARC = 2~%~%# The ID of the node that has been reached when this segment is complete.~%#   If this ID is blank, then this segment is intermediary, and no node is reached on completion~%string completion_node_id~%~%# 3D location (in meters) of the start of the segment~%geometry_msgs/Vector3 start~%# 3D location (in meters) of the end of the segment~%geometry_msgs/Vector3 end~%~%## Arc-specific parameters~%# Radius (in meters) of the arc~%float32 radius~%# True if arc is > 180 degrees, False if not~%bool is_large_arc~%# True if arc moves in clockwise direction, False if counter-clockwise~%bool is_clockwise~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Path)))
  "Returns full string definition for message of type 'Path"
  (cl:format cl:nil "~%Header header~%Segment[] segments~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: fuse_pathfollowing_msgs/Segment~%## Array of segments that compose a path~%~%# Defines the type of segment (see possible types below)~%uint8 type_enum~%# Possible types~%uint8 TYPE_UNKNOWN = 0~%uint8 TYPE_LINE = 1~%uint8 TYPE_ARC = 2~%~%# The ID of the node that has been reached when this segment is complete.~%#   If this ID is blank, then this segment is intermediary, and no node is reached on completion~%string completion_node_id~%~%# 3D location (in meters) of the start of the segment~%geometry_msgs/Vector3 start~%# 3D location (in meters) of the end of the segment~%geometry_msgs/Vector3 end~%~%## Arc-specific parameters~%# Radius (in meters) of the arc~%float32 radius~%# True if arc is > 180 degrees, False if not~%bool is_large_arc~%# True if arc moves in clockwise direction, False if counter-clockwise~%bool is_clockwise~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Path>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Path>))
  "Converts a ROS message object to a list"
  (cl:list 'Path
    (cl:cons ':header (header msg))
    (cl:cons ':segments (segments msg))
))
