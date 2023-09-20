;; Auto-generated. Do not edit!


(when (boundp 'fuse_pathfollowing_msgs::Path)
  (if (not (find-package "FUSE_PATHFOLLOWING_MSGS"))
    (make-package "FUSE_PATHFOLLOWING_MSGS"))
  (shadow 'Path (find-package "FUSE_PATHFOLLOWING_MSGS")))
(unless (find-package "FUSE_PATHFOLLOWING_MSGS::PATH")
  (make-package "FUSE_PATHFOLLOWING_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fuse_pathfollowing_msgs::Path
  :super ros::object
  :slots (_header _segments ))

(defmethod fuse_pathfollowing_msgs::Path
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:segments __segments) (let (r) (dotimes (i 0) (push (instance fuse_pathfollowing_msgs::Segment :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _segments __segments)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; fuse_pathfollowing_msgs/Segment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; fuse_pathfollowing_msgs/Segment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; fuse_pathfollowing_msgs/Segment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance fuse_pathfollowing_msgs::Segment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fuse_pathfollowing_msgs::Path :md5sum-) "85569c99d3939c53d20c7ea066d55773")
(setf (get fuse_pathfollowing_msgs::Path :datatype-) "fuse_pathfollowing_msgs/Path")
(setf (get fuse_pathfollowing_msgs::Path :definition-)
      "
Header header
Segment[] segments
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: fuse_pathfollowing_msgs/Segment
## Array of segments that compose a path

# Defines the type of segment (see possible types below)
uint8 type_enum
# Possible types
uint8 TYPE_UNKNOWN = 0
uint8 TYPE_LINE = 1
uint8 TYPE_ARC = 2

# The ID of the node that has been reached when this segment is complete.
#   If this ID is blank, then this segment is intermediary, and no node is reached on completion
string completion_node_id

# 3D location (in meters) of the start of the segment
geometry_msgs/Vector3 start
# 3D location (in meters) of the end of the segment
geometry_msgs/Vector3 end

## Arc-specific parameters
# Radius (in meters) of the arc
float32 radius
# True if arc is > 180 degrees, False if not
bool is_large_arc
# True if arc moves in clockwise direction, False if counter-clockwise
bool is_clockwise


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :fuse_pathfollowing_msgs/Path "85569c99d3939c53d20c7ea066d55773")


