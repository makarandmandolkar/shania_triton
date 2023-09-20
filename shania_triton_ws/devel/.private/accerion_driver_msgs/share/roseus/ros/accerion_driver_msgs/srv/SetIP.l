;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::SetIP)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'SetIP (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::SETIP")
  (make-package "ACCERION_DRIVER_MSGS::SETIP"))
(unless (find-package "ACCERION_DRIVER_MSGS::SETIPREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::SETIPREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::SETIPRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::SETIPRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::SetIPRequest
  :super ros::object
  :slots (_ip _netmask _gateway ))

(defmethod accerion_driver_msgs::SetIPRequest
  (:init
   (&key
    ((:ip __ip) "")
    ((:netmask __netmask) "")
    ((:gateway __gateway) "")
    )
   (send-super :init)
   (setq _ip (string __ip))
   (setq _netmask (string __netmask))
   (setq _gateway (string __gateway))
   self)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:netmask
   (&optional __netmask)
   (if __netmask (setq _netmask __netmask)) _netmask)
  (:gateway
   (&optional __gateway)
   (if __gateway (setq _gateway __gateway)) _gateway)
  (:serialization-length
   ()
   (+
    ;; string _ip
    4 (length _ip)
    ;; string _netmask
    4 (length _netmask)
    ;; string _gateway
    4 (length _gateway)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; string _netmask
       (write-long (length _netmask) s) (princ _netmask s)
     ;; string _gateway
       (write-long (length _gateway) s) (princ _gateway s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _netmask
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _netmask (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gateway
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gateway (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::SetIPResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::SetIPResponse
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

(defclass accerion_driver_msgs::SetIP
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::SetIP :md5sum-) "9c529b52af66afe4e5b172389c998e06")
(setf (get accerion_driver_msgs::SetIP :datatype-) "accerion_driver_msgs/SetIP")
(setf (get accerion_driver_msgs::SetIP :request) accerion_driver_msgs::SetIPRequest)
(setf (get accerion_driver_msgs::SetIP :response) accerion_driver_msgs::SetIPResponse)

(defmethod accerion_driver_msgs::SetIPRequest
  (:response () (instance accerion_driver_msgs::SetIPResponse :init)))

(setf (get accerion_driver_msgs::SetIPRequest :md5sum-) "9c529b52af66afe4e5b172389c998e06")
(setf (get accerion_driver_msgs::SetIPRequest :datatype-) "accerion_driver_msgs/SetIPRequest")
(setf (get accerion_driver_msgs::SetIPRequest :definition-)
      "string ip                   # e.g. 192.168.2.10
string netmask              # e.g. 255.255.255.0
string gateway              # e.g. 192.168.2.0
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::SetIPResponse :md5sum-) "9c529b52af66afe4e5b172389c998e06")
(setf (get accerion_driver_msgs::SetIPResponse :datatype-) "accerion_driver_msgs/SetIPResponse")
(setf (get accerion_driver_msgs::SetIPResponse :definition-)
      "string ip                   # e.g. 192.168.2.10
string netmask              # e.g. 255.255.255.0
string gateway              # e.g. 192.168.2.0
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/SetIP "9c529b52af66afe4e5b172389c998e06")


