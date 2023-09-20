;; Auto-generated. Do not edit!


(when (boundp 'rt_carriage_controller_msgs::rt_carriage_controllerGoal)
  (if (not (find-package "RT_CARRIAGE_CONTROLLER_MSGS"))
    (make-package "RT_CARRIAGE_CONTROLLER_MSGS"))
  (shadow 'rt_carriage_controllerGoal (find-package "RT_CARRIAGE_CONTROLLER_MSGS")))
(unless (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL")
  (make-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))

(in-package "ROS")
;;//! \htmlinclude rt_carriage_controllerGoal.msg.html


(intern "*MOVE_UNDEFINED_REQUEST*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*MOVE_UNDEFINED_REQUEST* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*MOVE_UNDEFINED_REQUEST* 0)
(intern "*MOVE_ABSOLUTE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*MOVE_ABSOLUTE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*MOVE_ABSOLUTE* 1)
(intern "*MOVE_RELATIVE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*MOVE_RELATIVE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*MOVE_RELATIVE* 2)
(intern "*CALIBRATE_REACH*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*CALIBRATE_REACH* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*CALIBRATE_REACH* 3)
(intern "*CALIBRATE_LIFT*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*CALIBRATE_LIFT* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*CALIBRATE_LIFT* 4)
(intern "*CALIBRATE_TILT*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*CALIBRATE_TILT* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*CALIBRATE_TILT* 5)
(intern "*CALIBRATE_SIDESHIFT*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*CALIBRATE_SIDESHIFT* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*CALIBRATE_SIDESHIFT* 6)
(intern "*MISSION_PICK*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*MISSION_PICK* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*MISSION_PICK* 1)
(intern "*MISSION_PLACE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*MISSION_PLACE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*MISSION_PLACE* 2)
(intern "*SENSOR_NO_SENSE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*SENSOR_NO_SENSE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*SENSOR_NO_SENSE* 7)
(intern "*SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE* 8)
(intern "*SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE* 9)
(intern "*SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE* 10)
(intern "*SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE* 11)
(intern "*SENSOR_LIFT_UNTIL_LASER_READING*" (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(shadow '*SENSOR_LIFT_UNTIL_LASER_READING* (find-package "RT_CARRIAGE_CONTROLLER_MSGS::RT_CARRIAGE_CONTROLLERGOAL"))
(defconstant rt_carriage_controller_msgs::rt_carriage_controllerGoal::*SENSOR_LIFT_UNTIL_LASER_READING* 12)
(defclass rt_carriage_controller_msgs::rt_carriage_controllerGoal
  :super ros::object
  :slots (_move_type_enum _position_Goal _position_tolerance _mission_type_enum _sensor_type_enum _forktip_distance ))

(defmethod rt_carriage_controller_msgs::rt_carriage_controllerGoal
  (:init
   (&key
    ((:move_type_enum __move_type_enum) 0)
    ((:position_Goal __position_Goal) 0.0)
    ((:position_tolerance __position_tolerance) 0.0)
    ((:mission_type_enum __mission_type_enum) 0)
    ((:sensor_type_enum __sensor_type_enum) 0)
    ((:forktip_distance __forktip_distance) 0.0)
    )
   (send-super :init)
   (setq _move_type_enum (round __move_type_enum))
   (setq _position_Goal (float __position_Goal))
   (setq _position_tolerance (float __position_tolerance))
   (setq _mission_type_enum (round __mission_type_enum))
   (setq _sensor_type_enum (round __sensor_type_enum))
   (setq _forktip_distance (float __forktip_distance))
   self)
  (:move_type_enum
   (&optional __move_type_enum)
   (if __move_type_enum (setq _move_type_enum __move_type_enum)) _move_type_enum)
  (:position_Goal
   (&optional __position_Goal)
   (if __position_Goal (setq _position_Goal __position_Goal)) _position_Goal)
  (:position_tolerance
   (&optional __position_tolerance)
   (if __position_tolerance (setq _position_tolerance __position_tolerance)) _position_tolerance)
  (:mission_type_enum
   (&optional __mission_type_enum)
   (if __mission_type_enum (setq _mission_type_enum __mission_type_enum)) _mission_type_enum)
  (:sensor_type_enum
   (&optional __sensor_type_enum)
   (if __sensor_type_enum (setq _sensor_type_enum __sensor_type_enum)) _sensor_type_enum)
  (:forktip_distance
   (&optional __forktip_distance)
   (if __forktip_distance (setq _forktip_distance __forktip_distance)) _forktip_distance)
  (:serialization-length
   ()
   (+
    ;; int32 _move_type_enum
    4
    ;; float64 _position_Goal
    8
    ;; float32 _position_tolerance
    4
    ;; int32 _mission_type_enum
    4
    ;; int32 _sensor_type_enum
    4
    ;; float64 _forktip_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _move_type_enum
       (write-long _move_type_enum s)
     ;; float64 _position_Goal
       (sys::poke _position_Goal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _position_tolerance
       (sys::poke _position_tolerance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _mission_type_enum
       (write-long _mission_type_enum s)
     ;; int32 _sensor_type_enum
       (write-long _sensor_type_enum s)
     ;; float64 _forktip_distance
       (sys::poke _forktip_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _move_type_enum
     (setq _move_type_enum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _position_Goal
     (setq _position_Goal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _position_tolerance
     (setq _position_tolerance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _mission_type_enum
     (setq _mission_type_enum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sensor_type_enum
     (setq _sensor_type_enum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _forktip_distance
     (setq _forktip_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rt_carriage_controller_msgs::rt_carriage_controllerGoal :md5sum-) "7e6c7501f66c1b8ed00a522d5a5aab57")
(setf (get rt_carriage_controller_msgs::rt_carriage_controllerGoal :datatype-) "rt_carriage_controller_msgs/rt_carriage_controllerGoal")
(setf (get rt_carriage_controller_msgs::rt_carriage_controllerGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal
int32 MOVE_UNDEFINED_REQUEST=0
int32 MOVE_ABSOLUTE      =1
int32 MOVE_RELATIVE      =2
int32 CALIBRATE_REACH    =3
int32 CALIBRATE_LIFT     =4
int32 CALIBRATE_TILT     =5
int32 CALIBRATE_SIDESHIFT =6

int32 move_type_enum

float64 position_Goal
float32 position_tolerance
int32 mission_type_enum
int32 MISSION_PICK = 1
int32 MISSION_PLACE = 2
int32 SENSOR_NO_SENSE                              =7
int32 SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE     =8
int32 SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE         =9
int32 SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE  =10
int32 SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE =11
int32 SENSOR_LIFT_UNTIL_LASER_READING =12
int32 sensor_type_enum

float64 forktip_distance


")



(provide :rt_carriage_controller_msgs/rt_carriage_controllerGoal "7e6c7501f66c1b8ed00a522d5a5aab57")


