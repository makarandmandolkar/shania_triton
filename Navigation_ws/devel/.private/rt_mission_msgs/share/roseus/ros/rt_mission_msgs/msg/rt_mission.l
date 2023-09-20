;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::rt_mission)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'rt_mission (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::RT_MISSION")
  (make-package "RT_MISSION_MSGS::RT_MISSION"))

(in-package "ROS")
;;//! \htmlinclude rt_mission.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*TASK_PICK_AND_PLACE*" (find-package "RT_MISSION_MSGS::RT_MISSION"))
(shadow '*TASK_PICK_AND_PLACE* (find-package "RT_MISSION_MSGS::RT_MISSION"))
(defconstant rt_mission_msgs::rt_mission::*TASK_PICK_AND_PLACE* 0)
(intern "*TASK_PICK*" (find-package "RT_MISSION_MSGS::RT_MISSION"))
(shadow '*TASK_PICK* (find-package "RT_MISSION_MSGS::RT_MISSION"))
(defconstant rt_mission_msgs::rt_mission::*TASK_PICK* 1)
(intern "*TASK_PLACE*" (find-package "RT_MISSION_MSGS::RT_MISSION"))
(shadow '*TASK_PLACE* (find-package "RT_MISSION_MSGS::RT_MISSION"))
(defconstant rt_mission_msgs::rt_mission::*TASK_PLACE* 2)
(intern "*TASK_CHARGE_ROBOT*" (find-package "RT_MISSION_MSGS::RT_MISSION"))
(shadow '*TASK_CHARGE_ROBOT* (find-package "RT_MISSION_MSGS::RT_MISSION"))
(defconstant rt_mission_msgs::rt_mission::*TASK_CHARGE_ROBOT* 3)
(defclass rt_mission_msgs::rt_mission
  :super ros::object
  :slots (_task_enum _status _pick_location_name _place_location_name _pick_stage_name _place_stage_name _pick_location _pick_stage_location _place_location _place_stage_location _pallet_id _pick_slot_height _place_slot_height _pick_approach_direction _place_approach_direction _pick_edge_case_direction _place_edge_case_direction _priority _payload_dimension _mission_complete_time _mission_distance ))

(defmethod rt_mission_msgs::rt_mission
  (:init
   (&key
    ((:task_enum __task_enum) 0)
    ((:status __status) "")
    ((:pick_location_name __pick_location_name) "")
    ((:place_location_name __place_location_name) "")
    ((:pick_stage_name __pick_stage_name) "")
    ((:place_stage_name __place_stage_name) "")
    ((:pick_location __pick_location) (instance geometry_msgs::Pose :init))
    ((:pick_stage_location __pick_stage_location) (instance geometry_msgs::Pose :init))
    ((:place_location __place_location) (instance geometry_msgs::Pose :init))
    ((:place_stage_location __place_stage_location) (instance geometry_msgs::Pose :init))
    ((:pallet_id __pallet_id) "")
    ((:pick_slot_height __pick_slot_height) 0.0)
    ((:place_slot_height __place_slot_height) 0.0)
    ((:pick_approach_direction __pick_approach_direction) "")
    ((:place_approach_direction __place_approach_direction) "")
    ((:pick_edge_case_direction __pick_edge_case_direction) "")
    ((:place_edge_case_direction __place_edge_case_direction) "")
    ((:priority __priority) nil)
    ((:payload_dimension __payload_dimension) nil)
    ((:mission_complete_time __mission_complete_time) 0.0)
    ((:mission_distance __mission_distance) 0.0)
    )
   (send-super :init)
   (setq _task_enum (round __task_enum))
   (setq _status (string __status))
   (setq _pick_location_name (string __pick_location_name))
   (setq _place_location_name (string __place_location_name))
   (setq _pick_stage_name (string __pick_stage_name))
   (setq _place_stage_name (string __place_stage_name))
   (setq _pick_location __pick_location)
   (setq _pick_stage_location __pick_stage_location)
   (setq _place_location __place_location)
   (setq _place_stage_location __place_stage_location)
   (setq _pallet_id (string __pallet_id))
   (setq _pick_slot_height (float __pick_slot_height))
   (setq _place_slot_height (float __place_slot_height))
   (setq _pick_approach_direction (string __pick_approach_direction))
   (setq _place_approach_direction (string __place_approach_direction))
   (setq _pick_edge_case_direction (string __pick_edge_case_direction))
   (setq _place_edge_case_direction (string __place_edge_case_direction))
   (setq _priority __priority)
   (setq _payload_dimension __payload_dimension)
   (setq _mission_complete_time (float __mission_complete_time))
   (setq _mission_distance (float __mission_distance))
   self)
  (:task_enum
   (&optional __task_enum)
   (if __task_enum (setq _task_enum __task_enum)) _task_enum)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:pick_location_name
   (&optional __pick_location_name)
   (if __pick_location_name (setq _pick_location_name __pick_location_name)) _pick_location_name)
  (:place_location_name
   (&optional __place_location_name)
   (if __place_location_name (setq _place_location_name __place_location_name)) _place_location_name)
  (:pick_stage_name
   (&optional __pick_stage_name)
   (if __pick_stage_name (setq _pick_stage_name __pick_stage_name)) _pick_stage_name)
  (:place_stage_name
   (&optional __place_stage_name)
   (if __place_stage_name (setq _place_stage_name __place_stage_name)) _place_stage_name)
  (:pick_location
   (&rest __pick_location)
   (if (keywordp (car __pick_location))
       (send* _pick_location __pick_location)
     (progn
       (if __pick_location (setq _pick_location (car __pick_location)))
       _pick_location)))
  (:pick_stage_location
   (&rest __pick_stage_location)
   (if (keywordp (car __pick_stage_location))
       (send* _pick_stage_location __pick_stage_location)
     (progn
       (if __pick_stage_location (setq _pick_stage_location (car __pick_stage_location)))
       _pick_stage_location)))
  (:place_location
   (&rest __place_location)
   (if (keywordp (car __place_location))
       (send* _place_location __place_location)
     (progn
       (if __place_location (setq _place_location (car __place_location)))
       _place_location)))
  (:place_stage_location
   (&rest __place_stage_location)
   (if (keywordp (car __place_stage_location))
       (send* _place_stage_location __place_stage_location)
     (progn
       (if __place_stage_location (setq _place_stage_location (car __place_stage_location)))
       _place_stage_location)))
  (:pallet_id
   (&optional __pallet_id)
   (if __pallet_id (setq _pallet_id __pallet_id)) _pallet_id)
  (:pick_slot_height
   (&optional __pick_slot_height)
   (if __pick_slot_height (setq _pick_slot_height __pick_slot_height)) _pick_slot_height)
  (:place_slot_height
   (&optional __place_slot_height)
   (if __place_slot_height (setq _place_slot_height __place_slot_height)) _place_slot_height)
  (:pick_approach_direction
   (&optional __pick_approach_direction)
   (if __pick_approach_direction (setq _pick_approach_direction __pick_approach_direction)) _pick_approach_direction)
  (:place_approach_direction
   (&optional __place_approach_direction)
   (if __place_approach_direction (setq _place_approach_direction __place_approach_direction)) _place_approach_direction)
  (:pick_edge_case_direction
   (&optional __pick_edge_case_direction)
   (if __pick_edge_case_direction (setq _pick_edge_case_direction __pick_edge_case_direction)) _pick_edge_case_direction)
  (:place_edge_case_direction
   (&optional __place_edge_case_direction)
   (if __place_edge_case_direction (setq _place_edge_case_direction __place_edge_case_direction)) _place_edge_case_direction)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:payload_dimension
   (&optional __payload_dimension)
   (if __payload_dimension (setq _payload_dimension __payload_dimension)) _payload_dimension)
  (:mission_complete_time
   (&optional __mission_complete_time)
   (if __mission_complete_time (setq _mission_complete_time __mission_complete_time)) _mission_complete_time)
  (:mission_distance
   (&optional __mission_distance)
   (if __mission_distance (setq _mission_distance __mission_distance)) _mission_distance)
  (:serialization-length
   ()
   (+
    ;; int32 _task_enum
    4
    ;; string _status
    4 (length _status)
    ;; string _pick_location_name
    4 (length _pick_location_name)
    ;; string _place_location_name
    4 (length _place_location_name)
    ;; string _pick_stage_name
    4 (length _pick_stage_name)
    ;; string _place_stage_name
    4 (length _place_stage_name)
    ;; geometry_msgs/Pose _pick_location
    (send _pick_location :serialization-length)
    ;; geometry_msgs/Pose _pick_stage_location
    (send _pick_stage_location :serialization-length)
    ;; geometry_msgs/Pose _place_location
    (send _place_location :serialization-length)
    ;; geometry_msgs/Pose _place_stage_location
    (send _place_stage_location :serialization-length)
    ;; string _pallet_id
    4 (length _pallet_id)
    ;; float32 _pick_slot_height
    4
    ;; float32 _place_slot_height
    4
    ;; string _pick_approach_direction
    4 (length _pick_approach_direction)
    ;; string _place_approach_direction
    4 (length _place_approach_direction)
    ;; string _pick_edge_case_direction
    4 (length _pick_edge_case_direction)
    ;; string _place_edge_case_direction
    4 (length _place_edge_case_direction)
    ;; bool _priority
    1
    ;; bool _payload_dimension
    1
    ;; float32 _mission_complete_time
    4
    ;; float32 _mission_distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _task_enum
       (write-long _task_enum s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _pick_location_name
       (write-long (length _pick_location_name) s) (princ _pick_location_name s)
     ;; string _place_location_name
       (write-long (length _place_location_name) s) (princ _place_location_name s)
     ;; string _pick_stage_name
       (write-long (length _pick_stage_name) s) (princ _pick_stage_name s)
     ;; string _place_stage_name
       (write-long (length _place_stage_name) s) (princ _place_stage_name s)
     ;; geometry_msgs/Pose _pick_location
       (send _pick_location :serialize s)
     ;; geometry_msgs/Pose _pick_stage_location
       (send _pick_stage_location :serialize s)
     ;; geometry_msgs/Pose _place_location
       (send _place_location :serialize s)
     ;; geometry_msgs/Pose _place_stage_location
       (send _place_stage_location :serialize s)
     ;; string _pallet_id
       (write-long (length _pallet_id) s) (princ _pallet_id s)
     ;; float32 _pick_slot_height
       (sys::poke _pick_slot_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _place_slot_height
       (sys::poke _place_slot_height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _pick_approach_direction
       (write-long (length _pick_approach_direction) s) (princ _pick_approach_direction s)
     ;; string _place_approach_direction
       (write-long (length _place_approach_direction) s) (princ _place_approach_direction s)
     ;; string _pick_edge_case_direction
       (write-long (length _pick_edge_case_direction) s) (princ _pick_edge_case_direction s)
     ;; string _place_edge_case_direction
       (write-long (length _place_edge_case_direction) s) (princ _place_edge_case_direction s)
     ;; bool _priority
       (if _priority (write-byte -1 s) (write-byte 0 s))
     ;; bool _payload_dimension
       (if _payload_dimension (write-byte -1 s) (write-byte 0 s))
     ;; float32 _mission_complete_time
       (sys::poke _mission_complete_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mission_distance
       (sys::poke _mission_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _task_enum
     (setq _task_enum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pick_location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pick_location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _place_location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _place_location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pick_stage_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pick_stage_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _place_stage_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _place_stage_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pick_location
     (send _pick_location :deserialize buf ptr-) (incf ptr- (send _pick_location :serialization-length))
   ;; geometry_msgs/Pose _pick_stage_location
     (send _pick_stage_location :deserialize buf ptr-) (incf ptr- (send _pick_stage_location :serialization-length))
   ;; geometry_msgs/Pose _place_location
     (send _place_location :deserialize buf ptr-) (incf ptr- (send _place_location :serialization-length))
   ;; geometry_msgs/Pose _place_stage_location
     (send _place_stage_location :deserialize buf ptr-) (incf ptr- (send _place_stage_location :serialization-length))
   ;; string _pallet_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pallet_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _pick_slot_height
     (setq _pick_slot_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _place_slot_height
     (setq _place_slot_height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _pick_approach_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pick_approach_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _place_approach_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _place_approach_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pick_edge_case_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pick_edge_case_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _place_edge_case_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _place_edge_case_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _priority
     (setq _priority (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _payload_dimension
     (setq _payload_dimension (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _mission_complete_time
     (setq _mission_complete_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mission_distance
     (setq _mission_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rt_mission_msgs::rt_mission :md5sum-) "4ada315410efb79e7745f34310db12a0")
(setf (get rt_mission_msgs::rt_mission :datatype-) "rt_mission_msgs/rt_mission")
(setf (get rt_mission_msgs::rt_mission :definition-)
      "int32 task_enum
int32 TASK_PICK_AND_PLACE=0
int32 TASK_PICK=1
int32 TASK_PLACE=2
int32 TASK_CHARGE_ROBOT=3
string status
string pick_location_name
string place_location_name
string pick_stage_name
string place_stage_name
geometry_msgs/Pose pick_location
geometry_msgs/Pose pick_stage_location
geometry_msgs/Pose place_location
geometry_msgs/Pose place_stage_location
string pallet_id
float32 pick_slot_height
float32 place_slot_height
string pick_approach_direction
string place_approach_direction
string pick_edge_case_direction
string place_edge_case_direction
bool priority
bool payload_dimension
float32 mission_complete_time
float32 mission_distance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :rt_mission_msgs/rt_mission "4ada315410efb79e7745f34310db12a0")


