;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::ModeCommand)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'ModeCommand (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::MODECOMMAND")
  (make-package "ACCERION_DRIVER_MSGS::MODECOMMAND"))
(unless (find-package "ACCERION_DRIVER_MSGS::MODECOMMANDREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::MODECOMMANDREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::MODECOMMANDRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::MODECOMMANDRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::ModeCommandRequest
  :super ros::object
  :slots (_mode _command ))

(defmethod accerion_driver_msgs::ModeCommandRequest
  (:init
   (&key
    ((:mode __mode) "")
    ((:command __command) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _command (string __command))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::ModeCommandResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::ModeCommandResponse
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

(defclass accerion_driver_msgs::ModeCommand
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::ModeCommand :md5sum-) "2d42a209d30cf50843fdee58cc43f4db")
(setf (get accerion_driver_msgs::ModeCommand :datatype-) "accerion_driver_msgs/ModeCommand")
(setf (get accerion_driver_msgs::ModeCommand :request) accerion_driver_msgs::ModeCommandRequest)
(setf (get accerion_driver_msgs::ModeCommand :response) accerion_driver_msgs::ModeCommandResponse)

(defmethod accerion_driver_msgs::ModeCommandRequest
  (:response () (instance accerion_driver_msgs::ModeCommandResponse :init)))

(setf (get accerion_driver_msgs::ModeCommandRequest :md5sum-) "2d42a209d30cf50843fdee58cc43f4db")
(setf (get accerion_driver_msgs::ModeCommandRequest :datatype-) "accerion_driver_msgs/ModeCommandRequest")
(setf (get accerion_driver_msgs::ModeCommandRequest :definition-)
      "string mode                 # [localization, idle]
string command              # [start, stop] the desired mode
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::ModeCommandResponse :md5sum-) "2d42a209d30cf50843fdee58cc43f4db")
(setf (get accerion_driver_msgs::ModeCommandResponse :datatype-) "accerion_driver_msgs/ModeCommandResponse")
(setf (get accerion_driver_msgs::ModeCommandResponse :definition-)
      "string mode                 # [localization, idle]
string command              # [start, stop] the desired mode
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/ModeCommand "2d42a209d30cf50843fdee58cc43f4db")


