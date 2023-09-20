;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::Logs)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'Logs (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::LOGS")
  (make-package "ACCERION_DRIVER_MSGS::LOGS"))
(unless (find-package "ACCERION_DRIVER_MSGS::LOGSREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::LOGSREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::LOGSRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::LOGSRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::LogsRequest
  :super ros::object
  :slots (_path _backupLogs ))

(defmethod accerion_driver_msgs::LogsRequest
  (:init
   (&key
    ((:path __path) "")
    ((:backupLogs __backupLogs) nil)
    )
   (send-super :init)
   (setq _path (string __path))
   (setq _backupLogs __backupLogs)
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:backupLogs
   (&optional __backupLogs)
   (if __backupLogs (setq _backupLogs __backupLogs)) _backupLogs)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ;; bool _backupLogs
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; bool _backupLogs
       (if _backupLogs (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _backupLogs
     (setq _backupLogs (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass accerion_driver_msgs::LogsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::LogsResponse
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

(defclass accerion_driver_msgs::Logs
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::Logs :md5sum-) "f7a75f40639a2346bf97e6154cb67762")
(setf (get accerion_driver_msgs::Logs :datatype-) "accerion_driver_msgs/Logs")
(setf (get accerion_driver_msgs::Logs :request) accerion_driver_msgs::LogsRequest)
(setf (get accerion_driver_msgs::Logs :response) accerion_driver_msgs::LogsResponse)

(defmethod accerion_driver_msgs::LogsRequest
  (:response () (instance accerion_driver_msgs::LogsResponse :init)))

(setf (get accerion_driver_msgs::LogsRequest :md5sum-) "f7a75f40639a2346bf97e6154cb67762")
(setf (get accerion_driver_msgs::LogsRequest :datatype-) "accerion_driver_msgs/LogsRequest")
(setf (get accerion_driver_msgs::LogsRequest :definition-)
      "string path                 # Path where the logs should be stored
bool backupLogs             # boolean, set to true if backup logs are to be retrieved.
---
bool success                # boolean that holds whether the request has been made
string message              # message that contains information about the request(success/failure etc.)
")

(setf (get accerion_driver_msgs::LogsResponse :md5sum-) "f7a75f40639a2346bf97e6154cb67762")
(setf (get accerion_driver_msgs::LogsResponse :datatype-) "accerion_driver_msgs/LogsResponse")
(setf (get accerion_driver_msgs::LogsResponse :definition-)
      "string path                 # Path where the logs should be stored
bool backupLogs             # boolean, set to true if backup logs are to be retrieved.
---
bool success                # boolean that holds whether the request has been made
string message              # message that contains information about the request(success/failure etc.)
")



(provide :accerion_driver_msgs/Logs "f7a75f40639a2346bf97e6154cb67762")


