;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::Pose)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'Pose (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::POSE")
  (make-package "ACCERION_DRIVER_MSGS::POSE"))
(unless (find-package "ACCERION_DRIVER_MSGS::POSEREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::POSEREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::POSERESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::POSERESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::PoseRequest
  :super ros::object
  :slots (_x _y _theta ))

(defmethod accerion_driver_msgs::PoseRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass accerion_driver_msgs::PoseResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::PoseResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::Pose
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::Pose :md5sum-) "dfb7cd6f8af42f100b5a4a6f098d57aa")
(setf (get accerion_driver_msgs::Pose :datatype-) "accerion_driver_msgs/Pose")
(setf (get accerion_driver_msgs::Pose :request) accerion_driver_msgs::PoseRequest)
(setf (get accerion_driver_msgs::Pose :response) accerion_driver_msgs::PoseResponse)

(defmethod accerion_driver_msgs::PoseRequest
  (:response () (instance accerion_driver_msgs::PoseResponse :init)))

(setf (get accerion_driver_msgs::PoseRequest :md5sum-) "dfb7cd6f8af42f100b5a4a6f098d57aa")
(setf (get accerion_driver_msgs::PoseRequest :datatype-) "accerion_driver_msgs/PoseRequest")
(setf (get accerion_driver_msgs::PoseRequest :definition-)
      "float32 x   		# x position [m]
float32 y			# y position [m]
float32 theta		# theta orientation [deg]
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::PoseResponse :md5sum-) "dfb7cd6f8af42f100b5a4a6f098d57aa")
(setf (get accerion_driver_msgs::PoseResponse :datatype-) "accerion_driver_msgs/PoseResponse")
(setf (get accerion_driver_msgs::PoseResponse :definition-)
      "float32 x   		# x position [m]
float32 y			# y position [m]
float32 theta		# theta orientation [deg]
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/Pose "dfb7cd6f8af42f100b5a4a6f098d57aa")


