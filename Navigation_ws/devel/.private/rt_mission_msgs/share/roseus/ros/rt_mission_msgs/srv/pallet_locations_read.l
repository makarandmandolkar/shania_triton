;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::pallet_locations_read)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'pallet_locations_read (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::PALLET_LOCATIONS_READ")
  (make-package "RT_MISSION_MSGS::PALLET_LOCATIONS_READ"))
(unless (find-package "RT_MISSION_MSGS::PALLET_LOCATIONS_READREQUEST")
  (make-package "RT_MISSION_MSGS::PALLET_LOCATIONS_READREQUEST"))
(unless (find-package "RT_MISSION_MSGS::PALLET_LOCATIONS_READRESPONSE")
  (make-package "RT_MISSION_MSGS::PALLET_LOCATIONS_READRESPONSE"))

(in-package "ROS")





(defclass rt_mission_msgs::pallet_locations_readRequest
  :super ros::object
  :slots ())

(defmethod rt_mission_msgs::pallet_locations_readRequest
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

(defclass rt_mission_msgs::pallet_locations_readResponse
  :super ros::object
  :slots (_pallet_location_names _pallet_ids ))

(defmethod rt_mission_msgs::pallet_locations_readResponse
  (:init
   (&key
    ((:pallet_location_names __pallet_location_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:pallet_ids __pallet_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _pallet_location_names __pallet_location_names)
   (setq _pallet_ids __pallet_ids)
   self)
  (:pallet_location_names
   (&optional __pallet_location_names)
   (if __pallet_location_names (setq _pallet_location_names __pallet_location_names)) _pallet_location_names)
  (:pallet_ids
   (&optional __pallet_ids)
   (if __pallet_ids (setq _pallet_ids __pallet_ids)) _pallet_ids)
  (:serialization-length
   ()
   (+
    ;; string[] _pallet_location_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _pallet_location_names)) 4
    ;; string[] _pallet_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _pallet_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _pallet_location_names
     (write-long (length _pallet_location_names) s)
     (dolist (elem _pallet_location_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _pallet_ids
     (write-long (length _pallet_ids) s)
     (dolist (elem _pallet_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _pallet_location_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pallet_location_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _pallet_location_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _pallet_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pallet_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _pallet_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rt_mission_msgs::pallet_locations_read
  :super ros::object
  :slots ())

(setf (get rt_mission_msgs::pallet_locations_read :md5sum-) "dd7004084a8c6b852a1a973d12608609")
(setf (get rt_mission_msgs::pallet_locations_read :datatype-) "rt_mission_msgs/pallet_locations_read")
(setf (get rt_mission_msgs::pallet_locations_read :request) rt_mission_msgs::pallet_locations_readRequest)
(setf (get rt_mission_msgs::pallet_locations_read :response) rt_mission_msgs::pallet_locations_readResponse)

(defmethod rt_mission_msgs::pallet_locations_readRequest
  (:response () (instance rt_mission_msgs::pallet_locations_readResponse :init)))

(setf (get rt_mission_msgs::pallet_locations_readRequest :md5sum-) "dd7004084a8c6b852a1a973d12608609")
(setf (get rt_mission_msgs::pallet_locations_readRequest :datatype-) "rt_mission_msgs/pallet_locations_readRequest")
(setf (get rt_mission_msgs::pallet_locations_readRequest :definition-)
      "---
string[] pallet_location_names
string[] pallet_ids

")

(setf (get rt_mission_msgs::pallet_locations_readResponse :md5sum-) "dd7004084a8c6b852a1a973d12608609")
(setf (get rt_mission_msgs::pallet_locations_readResponse :datatype-) "rt_mission_msgs/pallet_locations_readResponse")
(setf (get rt_mission_msgs::pallet_locations_readResponse :definition-)
      "---
string[] pallet_location_names
string[] pallet_ids

")



(provide :rt_mission_msgs/pallet_locations_read "dd7004084a8c6b852a1a973d12608609")


