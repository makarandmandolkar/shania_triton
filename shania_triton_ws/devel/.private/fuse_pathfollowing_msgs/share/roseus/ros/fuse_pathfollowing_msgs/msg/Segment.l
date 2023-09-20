;; Auto-generated. Do not edit!


(when (boundp 'fuse_pathfollowing_msgs::Segment)
  (if (not (find-package "FUSE_PATHFOLLOWING_MSGS"))
    (make-package "FUSE_PATHFOLLOWING_MSGS"))
  (shadow 'Segment (find-package "FUSE_PATHFOLLOWING_MSGS")))
(unless (find-package "FUSE_PATHFOLLOWING_MSGS::SEGMENT")
  (make-package "FUSE_PATHFOLLOWING_MSGS::SEGMENT"))

(in-package "ROS")
;;//! \htmlinclude Segment.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*TYPE_UNKNOWN*" (find-package "FUSE_PATHFOLLOWING_MSGS::SEGMENT"))
(shadow '*TYPE_UNKNOWN* (find-package "FUSE_PATHFOLLOWING_MSGS::SEGMENT"))
(defconstant fuse_pathfollowing_msgs::Segment::*TYPE_UNKNOWN* 0)
(intern "*TYPE_LINE*" (find-package "FUSE_PATHFOLLOWING_MSGS::SEGMENT"))
(shadow '*TYPE_LINE* (find-package "FUSE_PATHFOLLOWING_MSGS::SEGMENT"))
(defconstant fuse_pathfollowing_msgs::Segment::*TYPE_LINE* 1)
(intern "*TYPE_ARC*" (find-package "FUSE_PATHFOLLOWING_MSGS::SEGMENT"))
(shadow '*TYPE_ARC* (find-package "FUSE_PATHFOLLOWING_MSGS::SEGMENT"))
(defconstant fuse_pathfollowing_msgs::Segment::*TYPE_ARC* 2)
(defclass fuse_pathfollowing_msgs::Segment
  :super ros::object
  :slots (_type_enum _completion_node_id _start _end _radius _is_large_arc _is_clockwise ))

(defmethod fuse_pathfollowing_msgs::Segment
  (:init
   (&key
    ((:type_enum __type_enum) 0)
    ((:completion_node_id __completion_node_id) "")
    ((:start __start) (instance geometry_msgs::Vector3 :init))
    ((:end __end) (instance geometry_msgs::Vector3 :init))
    ((:radius __radius) 0.0)
    ((:is_large_arc __is_large_arc) nil)
    ((:is_clockwise __is_clockwise) nil)
    )
   (send-super :init)
   (setq _type_enum (round __type_enum))
   (setq _completion_node_id (string __completion_node_id))
   (setq _start __start)
   (setq _end __end)
   (setq _radius (float __radius))
   (setq _is_large_arc __is_large_arc)
   (setq _is_clockwise __is_clockwise)
   self)
  (:type_enum
   (&optional __type_enum)
   (if __type_enum (setq _type_enum __type_enum)) _type_enum)
  (:completion_node_id
   (&optional __completion_node_id)
   (if __completion_node_id (setq _completion_node_id __completion_node_id)) _completion_node_id)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:is_large_arc
   (&optional __is_large_arc)
   (if __is_large_arc (setq _is_large_arc __is_large_arc)) _is_large_arc)
  (:is_clockwise
   (&optional __is_clockwise)
   (if __is_clockwise (setq _is_clockwise __is_clockwise)) _is_clockwise)
  (:serialization-length
   ()
   (+
    ;; uint8 _type_enum
    1
    ;; string _completion_node_id
    4 (length _completion_node_id)
    ;; geometry_msgs/Vector3 _start
    (send _start :serialization-length)
    ;; geometry_msgs/Vector3 _end
    (send _end :serialization-length)
    ;; float32 _radius
    4
    ;; bool _is_large_arc
    1
    ;; bool _is_clockwise
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type_enum
       (write-byte _type_enum s)
     ;; string _completion_node_id
       (write-long (length _completion_node_id) s) (princ _completion_node_id s)
     ;; geometry_msgs/Vector3 _start
       (send _start :serialize s)
     ;; geometry_msgs/Vector3 _end
       (send _end :serialize s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_large_arc
       (if _is_large_arc (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_clockwise
       (if _is_clockwise (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type_enum
     (setq _type_enum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _completion_node_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _completion_node_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Vector3 _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_large_arc
     (setq _is_large_arc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_clockwise
     (setq _is_clockwise (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fuse_pathfollowing_msgs::Segment :md5sum-) "90e1867debfb66d37e5a20d9acd4d899")
(setf (get fuse_pathfollowing_msgs::Segment :datatype-) "fuse_pathfollowing_msgs/Segment")
(setf (get fuse_pathfollowing_msgs::Segment :definition-)
      "## Array of segments that compose a path

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



(provide :fuse_pathfollowing_msgs/Segment "90e1867debfb66d37e5a20d9acd4d899")


