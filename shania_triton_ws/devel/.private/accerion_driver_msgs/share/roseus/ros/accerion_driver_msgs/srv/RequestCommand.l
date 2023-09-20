;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::RequestCommand)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'RequestCommand (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::REQUESTCOMMAND")
  (make-package "ACCERION_DRIVER_MSGS::REQUESTCOMMAND"))
(unless (find-package "ACCERION_DRIVER_MSGS::REQUESTCOMMANDREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::REQUESTCOMMANDREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::REQUESTCOMMANDRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::REQUESTCOMMANDRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::RequestCommandRequest
  :super ros::object
  :slots (_request_command ))

(defmethod accerion_driver_msgs::RequestCommandRequest
  (:init
   (&key
    ((:request_command __request_command) "")
    )
   (send-super :init)
   (setq _request_command (string __request_command))
   self)
  (:request_command
   (&optional __request_command)
   (if __request_command (setq _request_command __request_command)) _request_command)
  (:serialization-length
   ()
   (+
    ;; string _request_command
    4 (length _request_command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request_command
       (write-long (length _request_command) s) (princ _request_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request_command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request_command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::RequestCommandResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::RequestCommandResponse
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

(defclass accerion_driver_msgs::RequestCommand
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::RequestCommand :md5sum-) "cf56f3660399cfb3343059395c1263ca")
(setf (get accerion_driver_msgs::RequestCommand :datatype-) "accerion_driver_msgs/RequestCommand")
(setf (get accerion_driver_msgs::RequestCommand :request) accerion_driver_msgs::RequestCommandRequest)
(setf (get accerion_driver_msgs::RequestCommand :response) accerion_driver_msgs::RequestCommandResponse)

(defmethod accerion_driver_msgs::RequestCommandRequest
  (:response () (instance accerion_driver_msgs::RequestCommandResponse :init)))

(setf (get accerion_driver_msgs::RequestCommandRequest :md5sum-) "cf56f3660399cfb3343059395c1263ca")
(setf (get accerion_driver_msgs::RequestCommandRequest :datatype-) "accerion_driver_msgs/RequestCommandRequest")
(setf (get accerion_driver_msgs::RequestCommandRequest :definition-)
      "string request_command      # [map, etc] the desired info
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::RequestCommandResponse :md5sum-) "cf56f3660399cfb3343059395c1263ca")
(setf (get accerion_driver_msgs::RequestCommandResponse :datatype-) "accerion_driver_msgs/RequestCommandResponse")
(setf (get accerion_driver_msgs::RequestCommandResponse :definition-)
      "string request_command      # [map, etc] the desired info
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/RequestCommand "cf56f3660399cfb3343059395c1263ca")


