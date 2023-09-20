;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::rt_mission_queue)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'rt_mission_queue (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::RT_MISSION_QUEUE")
  (make-package "RT_MISSION_MSGS::RT_MISSION_QUEUE"))

(in-package "ROS")
;;//! \htmlinclude rt_mission_queue.msg.html


(defclass rt_mission_msgs::rt_mission_queue
  :super ros::object
  :slots (_mission_queue _mission_queue_index ))

(defmethod rt_mission_msgs::rt_mission_queue
  (:init
   (&key
    ((:mission_queue __mission_queue) (let (r) (dotimes (i 0) (push (instance rt_mission_msgs::rt_mission :init) r)) r))
    ((:mission_queue_index __mission_queue_index) 0)
    )
   (send-super :init)
   (setq _mission_queue __mission_queue)
   (setq _mission_queue_index (round __mission_queue_index))
   self)
  (:mission_queue
   (&rest __mission_queue)
   (if (keywordp (car __mission_queue))
       (send* _mission_queue __mission_queue)
     (progn
       (if __mission_queue (setq _mission_queue (car __mission_queue)))
       _mission_queue)))
  (:mission_queue_index
   (&optional __mission_queue_index)
   (if __mission_queue_index (setq _mission_queue_index __mission_queue_index)) _mission_queue_index)
  (:serialization-length
   ()
   (+
    ;; rt_mission_msgs/rt_mission[] _mission_queue
    (apply #'+ (send-all _mission_queue :serialization-length)) 4
    ;; int32 _mission_queue_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rt_mission_msgs/rt_mission[] _mission_queue
     (write-long (length _mission_queue) s)
     (dolist (elem _mission_queue)
       (send elem :serialize s)
       )
     ;; int32 _mission_queue_index
       (write-long _mission_queue_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rt_mission_msgs/rt_mission[] _mission_queue
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mission_queue (let (r) (dotimes (i n) (push (instance rt_mission_msgs::rt_mission :init) r)) r))
     (dolist (elem- _mission_queue)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _mission_queue_index
     (setq _mission_queue_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rt_mission_msgs::rt_mission_queue :md5sum-) "ca28651d6271b7ac52eca2ec6cfb8a4f")
(setf (get rt_mission_msgs::rt_mission_queue :datatype-) "rt_mission_msgs/rt_mission_queue")
(setf (get rt_mission_msgs::rt_mission_queue :definition-)
      "rt_mission_msgs/rt_mission[] mission_queue
int32 mission_queue_index

================================================================================
MSG: rt_mission_msgs/rt_mission
int32 task_enum
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



(provide :rt_mission_msgs/rt_mission_queue "ca28651d6271b7ac52eca2ec6cfb8a4f")


