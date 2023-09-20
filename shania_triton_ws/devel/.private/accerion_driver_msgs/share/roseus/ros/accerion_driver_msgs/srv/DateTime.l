;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::DateTime)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'DateTime (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::DATETIME")
  (make-package "ACCERION_DRIVER_MSGS::DATETIME"))
(unless (find-package "ACCERION_DRIVER_MSGS::DATETIMEREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::DATETIMEREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::DATETIMERESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::DATETIMERESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::DateTimeRequest
  :super ros::object
  :slots (_date _time ))

(defmethod accerion_driver_msgs::DateTimeRequest
  (:init
   (&key
    ((:date __date) "")
    ((:time __time) "")
    )
   (send-super :init)
   (setq _date (string __date))
   (setq _time (string __time))
   self)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; string _date
    4 (length _date)
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _date
       (write-long (length _date) s) (princ _date s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::DateTimeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::DateTimeResponse
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

(defclass accerion_driver_msgs::DateTime
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::DateTime :md5sum-) "22cec1150d9ca4f487f09d8d06d4e469")
(setf (get accerion_driver_msgs::DateTime :datatype-) "accerion_driver_msgs/DateTime")
(setf (get accerion_driver_msgs::DateTime :request) accerion_driver_msgs::DateTimeRequest)
(setf (get accerion_driver_msgs::DateTime :response) accerion_driver_msgs::DateTimeResponse)

(defmethod accerion_driver_msgs::DateTimeRequest
  (:response () (instance accerion_driver_msgs::DateTimeResponse :init)))

(setf (get accerion_driver_msgs::DateTimeRequest :md5sum-) "22cec1150d9ca4f487f09d8d06d4e469")
(setf (get accerion_driver_msgs::DateTimeRequest :datatype-) "accerion_driver_msgs/DateTimeRequest")
(setf (get accerion_driver_msgs::DateTimeRequest :definition-)
      "string date                 # dd/mm/yyyy
string time                 # hh:mm:ss
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::DateTimeResponse :md5sum-) "22cec1150d9ca4f487f09d8d06d4e469")
(setf (get accerion_driver_msgs::DateTimeResponse :datatype-) "accerion_driver_msgs/DateTimeResponse")
(setf (get accerion_driver_msgs::DateTimeResponse :definition-)
      "string date                 # dd/mm/yyyy
string time                 # hh:mm:ss
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/DateTime "22cec1150d9ca4f487f09d8d06d4e469")


