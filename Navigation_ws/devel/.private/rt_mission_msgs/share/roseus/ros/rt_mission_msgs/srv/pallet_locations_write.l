;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::pallet_locations_write)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'pallet_locations_write (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::PALLET_LOCATIONS_WRITE")
  (make-package "RT_MISSION_MSGS::PALLET_LOCATIONS_WRITE"))
(unless (find-package "RT_MISSION_MSGS::PALLET_LOCATIONS_WRITEREQUEST")
  (make-package "RT_MISSION_MSGS::PALLET_LOCATIONS_WRITEREQUEST"))
(unless (find-package "RT_MISSION_MSGS::PALLET_LOCATIONS_WRITERESPONSE")
  (make-package "RT_MISSION_MSGS::PALLET_LOCATIONS_WRITERESPONSE"))

(in-package "ROS")





(defclass rt_mission_msgs::pallet_locations_writeRequest
  :super ros::object
  :slots (_pick_location_name _place_location_name _pallet_id _priority _payload_dimension ))

(defmethod rt_mission_msgs::pallet_locations_writeRequest
  (:init
   (&key
    ((:pick_location_name __pick_location_name) "")
    ((:place_location_name __place_location_name) "")
    ((:pallet_id __pallet_id) "")
    ((:priority __priority) nil)
    ((:payload_dimension __payload_dimension) nil)
    )
   (send-super :init)
   (setq _pick_location_name (string __pick_location_name))
   (setq _place_location_name (string __place_location_name))
   (setq _pallet_id (string __pallet_id))
   (setq _priority __priority)
   (setq _payload_dimension __payload_dimension)
   self)
  (:pick_location_name
   (&optional __pick_location_name)
   (if __pick_location_name (setq _pick_location_name __pick_location_name)) _pick_location_name)
  (:place_location_name
   (&optional __place_location_name)
   (if __place_location_name (setq _place_location_name __place_location_name)) _place_location_name)
  (:pallet_id
   (&optional __pallet_id)
   (if __pallet_id (setq _pallet_id __pallet_id)) _pallet_id)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:payload_dimension
   (&optional __payload_dimension)
   (if __payload_dimension (setq _payload_dimension __payload_dimension)) _payload_dimension)
  (:serialization-length
   ()
   (+
    ;; string _pick_location_name
    4 (length _pick_location_name)
    ;; string _place_location_name
    4 (length _place_location_name)
    ;; string _pallet_id
    4 (length _pallet_id)
    ;; bool _priority
    1
    ;; bool _payload_dimension
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pick_location_name
       (write-long (length _pick_location_name) s) (princ _pick_location_name s)
     ;; string _place_location_name
       (write-long (length _place_location_name) s) (princ _place_location_name s)
     ;; string _pallet_id
       (write-long (length _pallet_id) s) (princ _pallet_id s)
     ;; bool _priority
       (if _priority (write-byte -1 s) (write-byte 0 s))
     ;; bool _payload_dimension
       (if _payload_dimension (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pick_location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pick_location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _place_location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _place_location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pallet_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pallet_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _priority
     (setq _priority (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _payload_dimension
     (setq _payload_dimension (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rt_mission_msgs::pallet_locations_writeResponse
  :super ros::object
  :slots (_result ))

(defmethod rt_mission_msgs::pallet_locations_writeResponse
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

(defclass rt_mission_msgs::pallet_locations_write
  :super ros::object
  :slots ())

(setf (get rt_mission_msgs::pallet_locations_write :md5sum-) "a5b86be52d305e13b8e0c965235e45f3")
(setf (get rt_mission_msgs::pallet_locations_write :datatype-) "rt_mission_msgs/pallet_locations_write")
(setf (get rt_mission_msgs::pallet_locations_write :request) rt_mission_msgs::pallet_locations_writeRequest)
(setf (get rt_mission_msgs::pallet_locations_write :response) rt_mission_msgs::pallet_locations_writeResponse)

(defmethod rt_mission_msgs::pallet_locations_writeRequest
  (:response () (instance rt_mission_msgs::pallet_locations_writeResponse :init)))

(setf (get rt_mission_msgs::pallet_locations_writeRequest :md5sum-) "a5b86be52d305e13b8e0c965235e45f3")
(setf (get rt_mission_msgs::pallet_locations_writeRequest :datatype-) "rt_mission_msgs/pallet_locations_writeRequest")
(setf (get rt_mission_msgs::pallet_locations_writeRequest :definition-)
      "string pick_location_name
string place_location_name
string pallet_id
bool priority
bool payload_dimension

---
bool result

")

(setf (get rt_mission_msgs::pallet_locations_writeResponse :md5sum-) "a5b86be52d305e13b8e0c965235e45f3")
(setf (get rt_mission_msgs::pallet_locations_writeResponse :datatype-) "rt_mission_msgs/pallet_locations_writeResponse")
(setf (get rt_mission_msgs::pallet_locations_writeResponse :definition-)
      "string pick_location_name
string place_location_name
string pallet_id
bool priority
bool payload_dimension

---
bool result

")



(provide :rt_mission_msgs/pallet_locations_write "a5b86be52d305e13b8e0c965235e45f3")


