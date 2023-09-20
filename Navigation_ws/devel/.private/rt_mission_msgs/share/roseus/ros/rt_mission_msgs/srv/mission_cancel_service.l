;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::mission_cancel_service)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'mission_cancel_service (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::MISSION_CANCEL_SERVICE")
  (make-package "RT_MISSION_MSGS::MISSION_CANCEL_SERVICE"))
(unless (find-package "RT_MISSION_MSGS::MISSION_CANCEL_SERVICEREQUEST")
  (make-package "RT_MISSION_MSGS::MISSION_CANCEL_SERVICEREQUEST"))
(unless (find-package "RT_MISSION_MSGS::MISSION_CANCEL_SERVICERESPONSE")
  (make-package "RT_MISSION_MSGS::MISSION_CANCEL_SERVICERESPONSE"))

(in-package "ROS")





(defclass rt_mission_msgs::mission_cancel_serviceRequest
  :super ros::object
  :slots ())

(defmethod rt_mission_msgs::mission_cancel_serviceRequest
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

(defclass rt_mission_msgs::mission_cancel_serviceResponse
  :super ros::object
  :slots (_result ))

(defmethod rt_mission_msgs::mission_cancel_serviceResponse
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

(defclass rt_mission_msgs::mission_cancel_service
  :super ros::object
  :slots ())

(setf (get rt_mission_msgs::mission_cancel_service :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get rt_mission_msgs::mission_cancel_service :datatype-) "rt_mission_msgs/mission_cancel_service")
(setf (get rt_mission_msgs::mission_cancel_service :request) rt_mission_msgs::mission_cancel_serviceRequest)
(setf (get rt_mission_msgs::mission_cancel_service :response) rt_mission_msgs::mission_cancel_serviceResponse)

(defmethod rt_mission_msgs::mission_cancel_serviceRequest
  (:response () (instance rt_mission_msgs::mission_cancel_serviceResponse :init)))

(setf (get rt_mission_msgs::mission_cancel_serviceRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get rt_mission_msgs::mission_cancel_serviceRequest :datatype-) "rt_mission_msgs/mission_cancel_serviceRequest")
(setf (get rt_mission_msgs::mission_cancel_serviceRequest :definition-)
      "---
bool result

")

(setf (get rt_mission_msgs::mission_cancel_serviceResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get rt_mission_msgs::mission_cancel_serviceResponse :datatype-) "rt_mission_msgs/mission_cancel_serviceResponse")
(setf (get rt_mission_msgs::mission_cancel_serviceResponse :definition-)
      "---
bool result

")



(provide :rt_mission_msgs/mission_cancel_service "eb13ac1f1354ccecb7941ee8fa2192e8")


