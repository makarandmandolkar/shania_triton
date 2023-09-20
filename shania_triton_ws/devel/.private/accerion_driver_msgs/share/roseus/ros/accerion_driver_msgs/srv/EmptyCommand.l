;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::EmptyCommand)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'EmptyCommand (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::EMPTYCOMMAND")
  (make-package "ACCERION_DRIVER_MSGS::EMPTYCOMMAND"))
(unless (find-package "ACCERION_DRIVER_MSGS::EMPTYCOMMANDREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::EMPTYCOMMANDREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::EMPTYCOMMANDRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::EMPTYCOMMANDRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::EmptyCommandRequest
  :super ros::object
  :slots ())

(defmethod accerion_driver_msgs::EmptyCommandRequest
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

(defclass accerion_driver_msgs::EmptyCommandResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::EmptyCommandResponse
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

(defclass accerion_driver_msgs::EmptyCommand
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::EmptyCommand :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get accerion_driver_msgs::EmptyCommand :datatype-) "accerion_driver_msgs/EmptyCommand")
(setf (get accerion_driver_msgs::EmptyCommand :request) accerion_driver_msgs::EmptyCommandRequest)
(setf (get accerion_driver_msgs::EmptyCommand :response) accerion_driver_msgs::EmptyCommandResponse)

(defmethod accerion_driver_msgs::EmptyCommandRequest
  (:response () (instance accerion_driver_msgs::EmptyCommandResponse :init)))

(setf (get accerion_driver_msgs::EmptyCommandRequest :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get accerion_driver_msgs::EmptyCommandRequest :datatype-) "accerion_driver_msgs/EmptyCommandRequest")
(setf (get accerion_driver_msgs::EmptyCommandRequest :definition-)
      "---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::EmptyCommandResponse :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get accerion_driver_msgs::EmptyCommandResponse :datatype-) "accerion_driver_msgs/EmptyCommandResponse")
(setf (get accerion_driver_msgs::EmptyCommandResponse :definition-)
      "---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/EmptyCommand "937c9679a518e3a18d831e57125ea522")


