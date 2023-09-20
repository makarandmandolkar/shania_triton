;; Auto-generated. Do not edit!


(when (boundp 'rt_carriage_controller_msgs::rt_carriage_controllerResult)
  (if (not (find-package "RT_CARRIAGE_CONTROLLER_MSGS"))
    (make-package "RT_CARRIAGE_CONTROLLER_MSGS"))
  (shadow 'rt_carriage_controllerResult (find-package "RT_CARRIAGE_CONTROLLER_MSGS")))
(unless (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT")
  (make-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))

(in-package "ROS")
;;//! \htmlinclude rt_carriage_controllerResult.msg.html


(intern "*ERROR_EXCEEDED_TRAVEL*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(shadow '*ERROR_EXCEEDED_TRAVEL* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerResult::*ERROR_EXCEEDED_TRAVEL* 0)
(intern "*ERROR_TIMEOUT*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(shadow '*ERROR_TIMEOUT* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerResult::*ERROR_TIMEOUT* 1)
(intern "*ERROR_UNDEFINED_MOVE_TYPE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(shadow '*ERROR_UNDEFINED_MOVE_TYPE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerResult::*ERROR_UNDEFINED_MOVE_TYPE* 2)
(intern "*ERROR_UNDEFINED_SENSOR_TYPE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(shadow '*ERROR_UNDEFINED_SENSOR_TYPE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerResult::*ERROR_UNDEFINED_SENSOR_TYPE* 3)
(intern "*ERROR_STALL_DETECTED*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(shadow '*ERROR_STALL_DETECTED* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerResult::*ERROR_STALL_DETECTED* 4)
(intern "*ERROR_DEADMAN_IS_OFF*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(shadow '*ERROR_DEADMAN_IS_OFF* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERRESULT"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerResult::*ERROR_DEADMAN_IS_OFF* 5)
(defclass rt_carriage_controller_msgs::rt_carriage_controllerResult
  :super ros::object
  :slots (_success_Result _error_enum _exceeded_distance _allowable_distance _final_position ))

(defmethod rt_carriage_controller_msgs::rt_carriage_controllerResult
  (:init
   (&key
    ((:success_Result __success_Result) nil)
    ((:error_enum __error_enum) 0)
    ((:exceeded_distance __exceeded_distance) 0.0)
    ((:allowable_distance __allowable_distance) 0.0)
    ((:final_position __final_position) 0.0)
    )
   (send-super :init)
   (setq _success_Result __success_Result)
   (setq _error_enum (round __error_enum))
   (setq _exceeded_distance (float __exceeded_distance))
   (setq _allowable_distance (float __allowable_distance))
   (setq _final_position (float __final_position))
   self)
  (:success_Result
   (&optional __success_Result)
   (if __success_Result (setq _success_Result __success_Result)) _success_Result)
  (:error_enum
   (&optional __error_enum)
   (if __error_enum (setq _error_enum __error_enum)) _error_enum)
  (:exceeded_distance
   (&optional __exceeded_distance)
   (if __exceeded_distance (setq _exceeded_distance __exceeded_distance)) _exceeded_distance)
  (:allowable_distance
   (&optional __allowable_distance)
   (if __allowable_distance (setq _allowable_distance __allowable_distance)) _allowable_distance)
  (:final_position
   (&optional __final_position)
   (if __final_position (setq _final_position __final_position)) _final_position)
  (:serialization-length
   ()
   (+
    ;; bool _success_Result
    1
    ;; int32 _error_enum
    4
    ;; float64 _exceeded_distance
    8
    ;; float64 _allowable_distance
    8
    ;; float64 _final_position
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success_Result
       (if _success_Result (write-byte -1 s) (write-byte 0 s))
     ;; int32 _error_enum
       (write-long _error_enum s)
     ;; float64 _exceeded_distance
       (sys::poke _exceeded_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _allowable_distance
       (sys::poke _allowable_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_position
       (sys::poke _final_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success_Result
     (setq _success_Result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _error_enum
     (setq _error_enum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _exceeded_distance
     (setq _exceeded_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _allowable_distance
     (setq _allowable_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_position
     (setq _final_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rt_carriage_controller_msgs::rt_carriage_controllerResult :md5sum-) "d9a785add0c2594557fbcf2f8da28b75")
(setf (get rt_carriage_controller_msgs::rt_carriage_controllerResult :datatype-) "rt_carriage_controller_msgs/rt_carriage_controllerResult")
(setf (get rt_carriage_controller_msgs::rt_carriage_controllerResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
bool success_Result

int32 ERROR_EXCEEDED_TRAVEL=0
int32 ERROR_TIMEOUT=1
int32 ERROR_UNDEFINED_MOVE_TYPE=2
int32 ERROR_UNDEFINED_SENSOR_TYPE=3
int32 ERROR_STALL_DETECTED=4
int32 ERROR_DEADMAN_IS_OFF=5

int32 error_enum

float64 exceeded_distance
float64 allowable_distance
float64 final_position

")



(provide :rt_carriage_controller_msgs/rt_carriage_controllerResult "d9a785add0c2594557fbcf2f8da28b75")


