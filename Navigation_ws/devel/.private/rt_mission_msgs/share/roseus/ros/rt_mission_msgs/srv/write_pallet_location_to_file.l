;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::write_pallet_location_to_file)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'write_pallet_location_to_file (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::WRITE_PALLET_LOCATION_TO_FILE")
  (make-package "RT_MISSION_MSGS::WRITE_PALLET_LOCATION_TO_FILE"))
(unless (find-package "RT_MISSION_MSGS::WRITE_PALLET_LOCATION_TO_FILEREQUEST")
  (make-package "RT_MISSION_MSGS::WRITE_PALLET_LOCATION_TO_FILEREQUEST"))
(unless (find-package "RT_MISSION_MSGS::WRITE_PALLET_LOCATION_TO_FILERESPONSE")
  (make-package "RT_MISSION_MSGS::WRITE_PALLET_LOCATION_TO_FILERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass rt_mission_msgs::write_pallet_location_to_fileRequest
  :super ros::object
  :slots (_pallet_name _pallet_pose_in_map ))

(defmethod rt_mission_msgs::write_pallet_location_to_fileRequest
  (:init
   (&key
    ((:pallet_name __pallet_name) "")
    ((:pallet_pose_in_map __pallet_pose_in_map) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pallet_name (string __pallet_name))
   (setq _pallet_pose_in_map __pallet_pose_in_map)
   self)
  (:pallet_name
   (&optional __pallet_name)
   (if __pallet_name (setq _pallet_name __pallet_name)) _pallet_name)
  (:pallet_pose_in_map
   (&rest __pallet_pose_in_map)
   (if (keywordp (car __pallet_pose_in_map))
       (send* _pallet_pose_in_map __pallet_pose_in_map)
     (progn
       (if __pallet_pose_in_map (setq _pallet_pose_in_map (car __pallet_pose_in_map)))
       _pallet_pose_in_map)))
  (:serialization-length
   ()
   (+
    ;; string _pallet_name
    4 (length _pallet_name)
    ;; geometry_msgs/Pose _pallet_pose_in_map
    (send _pallet_pose_in_map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pallet_name
       (write-long (length _pallet_name) s) (princ _pallet_name s)
     ;; geometry_msgs/Pose _pallet_pose_in_map
       (send _pallet_pose_in_map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pallet_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pallet_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pallet_pose_in_map
     (send _pallet_pose_in_map :deserialize buf ptr-) (incf ptr- (send _pallet_pose_in_map :serialization-length))
   ;;
   self)
  )

(defclass rt_mission_msgs::write_pallet_location_to_fileResponse
  :super ros::object
  :slots (_result ))

(defmethod rt_mission_msgs::write_pallet_location_to_fileResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rt_mission_msgs::write_pallet_location_to_file
  :super ros::object
  :slots ())

(setf (get rt_mission_msgs::write_pallet_location_to_file :md5sum-) "2e0b45a83177fcfa3bdfed4d23c370e1")
(setf (get rt_mission_msgs::write_pallet_location_to_file :datatype-) "rt_mission_msgs/write_pallet_location_to_file")
(setf (get rt_mission_msgs::write_pallet_location_to_file :request) rt_mission_msgs::write_pallet_location_to_fileRequest)
(setf (get rt_mission_msgs::write_pallet_location_to_file :response) rt_mission_msgs::write_pallet_location_to_fileResponse)

(defmethod rt_mission_msgs::write_pallet_location_to_fileRequest
  (:response () (instance rt_mission_msgs::write_pallet_location_to_fileResponse :init)))

(setf (get rt_mission_msgs::write_pallet_location_to_fileRequest :md5sum-) "2e0b45a83177fcfa3bdfed4d23c370e1")
(setf (get rt_mission_msgs::write_pallet_location_to_fileRequest :datatype-) "rt_mission_msgs/write_pallet_location_to_fileRequest")
(setf (get rt_mission_msgs::write_pallet_location_to_fileRequest :definition-)
      "string pallet_name
geometry_msgs/Pose pallet_pose_in_map

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
---
bool result

")

(setf (get rt_mission_msgs::write_pallet_location_to_fileResponse :md5sum-) "2e0b45a83177fcfa3bdfed4d23c370e1")
(setf (get rt_mission_msgs::write_pallet_location_to_fileResponse :datatype-) "rt_mission_msgs/write_pallet_location_to_fileResponse")
(setf (get rt_mission_msgs::write_pallet_location_to_fileResponse :definition-)
      "string pallet_name
geometry_msgs/Pose pallet_pose_in_map

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
---
bool result

")



(provide :rt_mission_msgs/write_pallet_location_to_file "2e0b45a83177fcfa3bdfed4d23c370e1")


