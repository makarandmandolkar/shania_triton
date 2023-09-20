;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::pallet_location)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'pallet_location (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::PALLET_LOCATION")
  (make-package "RT_MISSION_MSGS::PALLET_LOCATION"))

(in-package "ROS")
;;//! \htmlinclude pallet_location.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rt_mission_msgs::pallet_location
  :super ros::object
  :slots (_location_name _map_location _location_id ))

(defmethod rt_mission_msgs::pallet_location
  (:init
   (&key
    ((:location_name __location_name) "")
    ((:map_location __map_location) (instance geometry_msgs::Pose :init))
    ((:location_id __location_id) "")
    )
   (send-super :init)
   (setq _location_name (string __location_name))
   (setq _map_location __map_location)
   (setq _location_id (string __location_id))
   self)
  (:location_name
   (&optional __location_name)
   (if __location_name (setq _location_name __location_name)) _location_name)
  (:map_location
   (&rest __map_location)
   (if (keywordp (car __map_location))
       (send* _map_location __map_location)
     (progn
       (if __map_location (setq _map_location (car __map_location)))
       _map_location)))
  (:location_id
   (&optional __location_id)
   (if __location_id (setq _location_id __location_id)) _location_id)
  (:serialization-length
   ()
   (+
    ;; string _location_name
    4 (length _location_name)
    ;; geometry_msgs/Pose _map_location
    (send _map_location :serialization-length)
    ;; string _location_id
    4 (length _location_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location_name
       (write-long (length _location_name) s) (princ _location_name s)
     ;; geometry_msgs/Pose _map_location
       (send _map_location :serialize s)
     ;; string _location_id
       (write-long (length _location_id) s) (princ _location_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _map_location
     (send _map_location :deserialize buf ptr-) (incf ptr- (send _map_location :serialization-length))
   ;; string _location_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rt_mission_msgs::pallet_location :md5sum-) "df6b2a914d117d0714ccbfe4bb9b70f0")
(setf (get rt_mission_msgs::pallet_location :datatype-) "rt_mission_msgs/pallet_location")
(setf (get rt_mission_msgs::pallet_location :definition-)
      "string location_name
geometry_msgs/Pose map_location
string location_id

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



(provide :rt_mission_msgs/pallet_location "df6b2a914d117d0714ccbfe4bb9b70f0")


