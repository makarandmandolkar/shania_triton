;; Auto-generated. Do not edit!


(when (boundp 'rt_mission_msgs::user_input_request)
  (if (not (find-package "RT_MISSION_MSGS"))
    (make-package "RT_MISSION_MSGS"))
  (shadow 'user_input_request (find-package "RT_MISSION_MSGS")))
(unless (find-package "RT_MISSION_MSGS::USER_INPUT_REQUEST")
  (make-package "RT_MISSION_MSGS::USER_INPUT_REQUEST"))

(in-package "ROS")
;;//! \htmlinclude user_input_request.msg.html


(intern "*USER_INPUT_CONFIRMATION*" (find-package "RT_MISSION_MSGS::USER_INPUT_REQUEST"))
(shadow '*USER_INPUT_CONFIRMATION* (find-package "RT_MISSION_MSGS::USER_INPUT_REQUEST"))
(defconstant rt_mission_msgs::user_input_request::*USER_INPUT_CONFIRMATION* 0)
(intern "*USER_INPUT_PICK_LOCATION*" (find-package "RT_MISSION_MSGS::USER_INPUT_REQUEST"))
(shadow '*USER_INPUT_PICK_LOCATION* (find-package "RT_MISSION_MSGS::USER_INPUT_REQUEST"))
(defconstant rt_mission_msgs::user_input_request::*USER_INPUT_PICK_LOCATION* 1)
(intern "*USER_INPUT_PLACE_LOCATION*" (find-package "RT_MISSION_MSGS::USER_INPUT_REQUEST"))
(shadow '*USER_INPUT_PLACE_LOCATION* (find-package "RT_MISSION_MSGS::USER_INPUT_REQUEST"))
(defconstant rt_mission_msgs::user_input_request::*USER_INPUT_PLACE_LOCATION* 2)
(defclass rt_mission_msgs::user_input_request
  :super ros::object
  :slots (_user_input_msg _input_enum _message_handeled ))

(defmethod rt_mission_msgs::user_input_request
  (:init
   (&key
    ((:user_input_msg __user_input_msg) "")
    ((:input_enum __input_enum) 0)
    ((:message_handeled __message_handeled) nil)
    )
   (send-super :init)
   (setq _user_input_msg (string __user_input_msg))
   (setq _input_enum (round __input_enum))
   (setq _message_handeled __message_handeled)
   self)
  (:user_input_msg
   (&optional __user_input_msg)
   (if __user_input_msg (setq _user_input_msg __user_input_msg)) _user_input_msg)
  (:input_enum
   (&optional __input_enum)
   (if __input_enum (setq _input_enum __input_enum)) _input_enum)
  (:message_handeled
   (&optional __message_handeled)
   (if __message_handeled (setq _message_handeled __message_handeled)) _message_handeled)
  (:serialization-length
   ()
   (+
    ;; string _user_input_msg
    4 (length _user_input_msg)
    ;; int32 _input_enum
    4
    ;; bool _message_handeled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _user_input_msg
       (write-long (length _user_input_msg) s) (princ _user_input_msg s)
     ;; int32 _input_enum
       (write-long _input_enum s)
     ;; bool _message_handeled
       (if _message_handeled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _user_input_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_input_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _input_enum
     (setq _input_enum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _message_handeled
     (setq _message_handeled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rt_mission_msgs::user_input_request :md5sum-) "091c1a1726a1b2a56375b655091cb478")
(setf (get rt_mission_msgs::user_input_request :datatype-) "rt_mission_msgs/user_input_request")
(setf (get rt_mission_msgs::user_input_request :definition-)
      "string user_input_msg
int32 input_enum
int32 USER_INPUT_CONFIRMATION=0
int32 USER_INPUT_PICK_LOCATION=1
int32 USER_INPUT_PLACE_LOCATION=2
bool message_handeled

")



(provide :rt_mission_msgs/user_input_request "091c1a1726a1b2a56375b655091cb478")


