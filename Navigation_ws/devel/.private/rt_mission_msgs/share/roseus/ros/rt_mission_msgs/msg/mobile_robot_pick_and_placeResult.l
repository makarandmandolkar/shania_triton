;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::mobile_robot_pick_and_placeResult)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'mobile_robot_pick_and_placeResult (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT")
  (make-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))

(in-package "ROS")
;;//! \htmlinclude mobile_robot_pick_and_placeResult.msg.html


(intern "*ERROR_GENERIC_ERROR*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_GENERIC_ERROR* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_GENERIC_ERROR* 0)
(intern "*ERROR_PALLET_NOT_FOUND*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_PALLET_NOT_FOUND* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_PALLET_NOT_FOUND* 1)
(intern "*ERROR_PALLET_OUT_OF_POSITION*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_PALLET_OUT_OF_POSITION* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_PALLET_OUT_OF_POSITION* 2)
(intern "*ERROR_PLACE_LOCATION_NOT_CLEAR*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_PLACE_LOCATION_NOT_CLEAR* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_PLACE_LOCATION_NOT_CLEAR* 3)
(intern "*ERROR_UNDEFINED_SENSOR_TYPE*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_UNDEFINED_SENSOR_TYPE* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_UNDEFINED_SENSOR_TYPE* 4)
(intern "*ERROR_CARRIAGE_MOTION_FAILED*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_CARRIAGE_MOTION_FAILED* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_CARRIAGE_MOTION_FAILED* 5)
(intern "*ERROR_NAVIGATION_ERROR*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_NAVIGATION_ERROR* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_NAVIGATION_ERROR* 6)
(intern "*ERROR_SAFETY_COMMUNICATION_ERROR*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_SAFETY_COMMUNICATION_ERROR* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_SAFETY_COMMUNICATION_ERROR* 7)
(intern "*ERROR_DEADMAN_TIMED_OUT*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_DEADMAN_TIMED_OUT* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_DEADMAN_TIMED_OUT* 8)
(intern "*ERROR_OVERSIZED_PAYLOAD*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_OVERSIZED_PAYLOAD* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_OVERSIZED_PAYLOAD* 9)
(intern "*ERROR_LOAD_ALREADY_ON_PALLET_FOR_PICK*" (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(shadow '*ERROR_LOAD_ALREADY_ON_PALLET_FOR_PICK* (find-package "RT_MISSION_MSGS::MOBILE_ROBOT_PICK_AND_PLACERESULT"))
(defconstant rt_mission_msgs::mobile_robot_pick_and_placeResult::*ERROR_LOAD_ALREADY_ON_PALLET_FOR_PICK* 10)
(defclass rt_mission_msgs::mobile_robot_pick_and_placeResult
  :super ros::object
  :slots (_success_Result _mission_complete_time _mission_distance _exceeded_distance _error_enum ))

(defmethod rt_mission_msgs::mobile_robot_pick_and_placeResult
  (:init
   (&key
    ((:success_Result __success_Result) nil)
    ((:mission_complete_time __mission_complete_time) 0.0)
    ((:mission_distance __mission_distance) 0.0)
    ((:exceeded_distance __exceeded_distance) 0.0)
    ((:error_enum __error_enum) 0)
    )
   (send-super :init)
   (setq _success_Result __success_Result)
   (setq _mission_complete_time (float __mission_complete_time))
   (setq _mission_distance (float __mission_distance))
   (setq _exceeded_distance (float __exceeded_distance))
   (setq _error_enum (round __error_enum))
   self)
  (:success_Result
   (&optional __success_Result)
   (if __success_Result (setq _success_Result __success_Result)) _success_Result)
  (:mission_complete_time
   (&optional __mission_complete_time)
   (if __mission_complete_time (setq _mission_complete_time __mission_complete_time)) _mission_complete_time)
  (:mission_distance
   (&optional __mission_distance)
   (if __mission_distance (setq _mission_distance __mission_distance)) _mission_distance)
  (:exceeded_distance
   (&optional __exceeded_distance)
   (if __exceeded_distance (setq _exceeded_distance __exceeded_distance)) _exceeded_distance)
  (:error_enum
   (&optional __error_enum)
   (if __error_enum (setq _error_enum __error_enum)) _error_enum)
  (:serialization-length
   ()
   (+
    ;; bool _success_Result
    1
    ;; float32 _mission_complete_time
    4
    ;; float32 _mission_distance
    4
    ;; float32 _exceeded_distance
    4
    ;; int32 _error_enum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success_Result
       (if _success_Result (write-byte -1 s) (write-byte 0 s))
     ;; float32 _mission_complete_time
       (sys::poke _mission_complete_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mission_distance
       (sys::poke _mission_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _exceeded_distance
       (sys::poke _exceeded_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _error_enum
       (write-long _error_enum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success_Result
     (setq _success_Result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _mission_complete_time
     (setq _mission_complete_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mission_distance
     (setq _mission_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _exceeded_distance
     (setq _exceeded_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _error_enum
     (setq _error_enum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rt_mission_msgs::mobile_robot_pick_and_placeResult :md5sum-) "ac52838d542856c95a94291f388cced0")
(setf (get rt_mission_msgs::mobile_robot_pick_and_placeResult :datatype-) "rt_mission_msgs/mobile_robot_pick_and_placeResult")
(setf (get rt_mission_msgs::mobile_robot_pick_and_placeResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
bool success_Result
float32 mission_complete_time
float32 mission_distance

int32 ERROR_GENERIC_ERROR=0
int32 ERROR_PALLET_NOT_FOUND=1
int32 ERROR_PALLET_OUT_OF_POSITION=2
int32 ERROR_PLACE_LOCATION_NOT_CLEAR=3
int32 ERROR_UNDEFINED_SENSOR_TYPE=4
int32 ERROR_CARRIAGE_MOTION_FAILED=5
int32 ERROR_NAVIGATION_ERROR=6
int32 ERROR_SAFETY_COMMUNICATION_ERROR=7
int32 ERROR_DEADMAN_TIMED_OUT=8
int32 ERROR_OVERSIZED_PAYLOAD=9
int32 ERROR_LOAD_ALREADY_ON_PALLET_FOR_PICK=10

float32 exceeded_distance
int32 error_enum

")



(provide :rt_mission_msgs/mobile_robot_pick_and_placeResult "ac52838d542856c95a94291f388cced0")


