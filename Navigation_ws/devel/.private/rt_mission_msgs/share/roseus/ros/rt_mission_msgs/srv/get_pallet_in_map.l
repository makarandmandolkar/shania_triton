;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::get_pallet_in_map)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'get_pallet_in_map (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::GET_PALLET_IN_MAP")
  (make-package "RT_MISSION_MSGS::GET_PALLET_IN_MAP"))
(unless (find-package "RT_MISSION_MSGS::GET_PALLET_IN_MAPREQUEST")
  (make-package "RT_MISSION_MSGS::GET_PALLET_IN_MAPREQUEST"))
(unless (find-package "RT_MISSION_MSGS::GET_PALLET_IN_MAPRESPONSE")
  (make-package "RT_MISSION_MSGS::GET_PALLET_IN_MAPRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rt_mission_msgs::get_pallet_in_mapRequest
  :super ros::object
  :slots ())

(defmethod rt_mission_msgs::get_pallet_in_mapRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rt_mission_msgs::get_pallet_in_mapResponse
  :super ros::object
  :slots (_pallet_pose_in_map _confidence_value _error_code _error_msg _success ))

(defmethod rt_mission_msgs::get_pallet_in_mapResponse
  (:init
   (&key
    ((:pallet_pose_in_map __pallet_pose_in_map) (instance geometry_msgs::Pose :init))
    ((:confidence_value __confidence_value) 0.0)
    ((:error_code __error_code) 0)
    ((:error_msg __error_msg) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _pallet_pose_in_map __pallet_pose_in_map)
   (setq _confidence_value (float __confidence_value))
   (setq _error_code (round __error_code))
   (setq _error_msg (string __error_msg))
   (setq _success __success)
   self)
  (:pallet_pose_in_map
   (&rest __pallet_pose_in_map)
   (if (keywordp (car __pallet_pose_in_map))
       (send* _pallet_pose_in_map __pallet_pose_in_map)
     (progn
       (if __pallet_pose_in_map (setq _pallet_pose_in_map (car __pallet_pose_in_map)))
       _pallet_pose_in_map)))
  (:confidence_value
   (&optional __confidence_value)
   (if __confidence_value (setq _confidence_value __confidence_value)) _confidence_value)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pallet_pose_in_map
    (send _pallet_pose_in_map :serialization-length)
    ;; float32 _confidence_value
    4
    ;; int32 _error_code
    4
    ;; string _error_msg
    4 (length _error_msg)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pallet_pose_in_map
       (send _pallet_pose_in_map :serialize s)
     ;; float32 _confidence_value
       (sys::poke _confidence_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pallet_pose_in_map
     (send _pallet_pose_in_map :deserialize buf ptr-) (incf ptr- (send _pallet_pose_in_map :serialization-length))
   ;; float32 _confidence_value
     (setq _confidence_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rt_mission_msgs::get_pallet_in_map
  :super ros::object
  :slots ())

(setf (get rt_mission_msgs::get_pallet_in_map :md5sum-) "5b7bdcbe41ef056f4a2eded3510cbf51")
(setf (get rt_mission_msgs::get_pallet_in_map :datatype-) "rt_mission_msgs/get_pallet_in_map")
(setf (get rt_mission_msgs::get_pallet_in_map :request) rt_mission_msgs::get_pallet_in_mapRequest)
(setf (get rt_mission_msgs::get_pallet_in_map :response) rt_mission_msgs::get_pallet_in_mapResponse)

(defmethod rt_mission_msgs::get_pallet_in_mapRequest
  (:response () (instance rt_mission_msgs::get_pallet_in_mapResponse :init)))

(setf (get rt_mission_msgs::get_pallet_in_mapRequest :md5sum-) "5b7bdcbe41ef056f4a2eded3510cbf51")
(setf (get rt_mission_msgs::get_pallet_in_mapRequest :datatype-) "rt_mission_msgs/get_pallet_in_mapRequest")
(setf (get rt_mission_msgs::get_pallet_in_mapRequest :definition-)
      "---
geometry_msgs/Pose pallet_pose_in_map
float32 confidence_value
int32 error_code
string error_msg
bool success


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

(setf (get rt_mission_msgs::get_pallet_in_mapResponse :md5sum-) "5b7bdcbe41ef056f4a2eded3510cbf51")
(setf (get rt_mission_msgs::get_pallet_in_mapResponse :datatype-) "rt_mission_msgs/get_pallet_in_mapResponse")
(setf (get rt_mission_msgs::get_pallet_in_mapResponse :definition-)
      "---
geometry_msgs/Pose pallet_pose_in_map
float32 confidence_value
int32 error_code
string error_msg
bool success


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



(provide :rt_mission_msgs/get_pallet_in_map "5b7bdcbe41ef056f4a2eded3510cbf51")


