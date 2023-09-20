;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::UDPSettings)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'UDPSettings (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::UDPSETTINGS")
  (make-package "ACCERION_DRIVER_MSGS::UDPSETTINGS"))
(unless (find-package "ACCERION_DRIVER_MSGS::UDPSETTINGSREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::UDPSETTINGSREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::UDPSETTINGSRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::UDPSETTINGSRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::UDPSettingsRequest
  :super ros::object
  :slots (_unicast_ip_address_first _unicast_ip_address_second _unicast_ip_address_third _unicast_ip_address_fourth _message_type _udp_mode ))

(defmethod accerion_driver_msgs::UDPSettingsRequest
  (:init
   (&key
    ((:unicast_ip_address_first __unicast_ip_address_first) 0)
    ((:unicast_ip_address_second __unicast_ip_address_second) 0)
    ((:unicast_ip_address_third __unicast_ip_address_third) 0)
    ((:unicast_ip_address_fourth __unicast_ip_address_fourth) 0)
    ((:message_type __message_type) 0)
    ((:udp_mode __udp_mode) 0)
    )
   (send-super :init)
   (setq _unicast_ip_address_first (round __unicast_ip_address_first))
   (setq _unicast_ip_address_second (round __unicast_ip_address_second))
   (setq _unicast_ip_address_third (round __unicast_ip_address_third))
   (setq _unicast_ip_address_fourth (round __unicast_ip_address_fourth))
   (setq _message_type (round __message_type))
   (setq _udp_mode (round __udp_mode))
   self)
  (:unicast_ip_address_first
   (&optional __unicast_ip_address_first)
   (if __unicast_ip_address_first (setq _unicast_ip_address_first __unicast_ip_address_first)) _unicast_ip_address_first)
  (:unicast_ip_address_second
   (&optional __unicast_ip_address_second)
   (if __unicast_ip_address_second (setq _unicast_ip_address_second __unicast_ip_address_second)) _unicast_ip_address_second)
  (:unicast_ip_address_third
   (&optional __unicast_ip_address_third)
   (if __unicast_ip_address_third (setq _unicast_ip_address_third __unicast_ip_address_third)) _unicast_ip_address_third)
  (:unicast_ip_address_fourth
   (&optional __unicast_ip_address_fourth)
   (if __unicast_ip_address_fourth (setq _unicast_ip_address_fourth __unicast_ip_address_fourth)) _unicast_ip_address_fourth)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:udp_mode
   (&optional __udp_mode)
   (if __udp_mode (setq _udp_mode __udp_mode)) _udp_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _unicast_ip_address_first
    1
    ;; uint8 _unicast_ip_address_second
    1
    ;; uint8 _unicast_ip_address_third
    1
    ;; uint8 _unicast_ip_address_fourth
    1
    ;; uint8 _message_type
    1
    ;; uint8 _udp_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _unicast_ip_address_first
       (write-byte _unicast_ip_address_first s)
     ;; uint8 _unicast_ip_address_second
       (write-byte _unicast_ip_address_second s)
     ;; uint8 _unicast_ip_address_third
       (write-byte _unicast_ip_address_third s)
     ;; uint8 _unicast_ip_address_fourth
       (write-byte _unicast_ip_address_fourth s)
     ;; uint8 _message_type
       (write-byte _message_type s)
     ;; uint8 _udp_mode
       (write-byte _udp_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _unicast_ip_address_first
     (setq _unicast_ip_address_first (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _unicast_ip_address_second
     (setq _unicast_ip_address_second (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _unicast_ip_address_third
     (setq _unicast_ip_address_third (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _unicast_ip_address_fourth
     (setq _unicast_ip_address_fourth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _message_type
     (setq _message_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _udp_mode
     (setq _udp_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass accerion_driver_msgs::UDPSettingsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::UDPSettingsResponse
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

(defclass accerion_driver_msgs::UDPSettings
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::UDPSettings :md5sum-) "2c5d16ab87b6ce14cf7e308187a2cd86")
(setf (get accerion_driver_msgs::UDPSettings :datatype-) "accerion_driver_msgs/UDPSettings")
(setf (get accerion_driver_msgs::UDPSettings :request) accerion_driver_msgs::UDPSettingsRequest)
(setf (get accerion_driver_msgs::UDPSettings :response) accerion_driver_msgs::UDPSettingsResponse)

(defmethod accerion_driver_msgs::UDPSettingsRequest
  (:response () (instance accerion_driver_msgs::UDPSettingsResponse :init)))

(setf (get accerion_driver_msgs::UDPSettingsRequest :md5sum-) "2c5d16ab87b6ce14cf7e308187a2cd86")
(setf (get accerion_driver_msgs::UDPSettingsRequest :datatype-) "accerion_driver_msgs/UDPSettingsRequest")
(setf (get accerion_driver_msgs::UDPSettingsRequest :definition-)
      "uint8 unicast_ip_address_first   # unicast target ip address first
uint8 unicast_ip_address_second  # unicast target ip address second
uint8 unicast_ip_address_third   # unicast target ip address third
uint8 unicast_ip_address_fourth   # unicast target ip address fourth
uint8  message_type         # 0x01: none, 0x02: only streaming, 0x03: only intermittent, 0x04: both streaming & intermittent messages
uint8  udp_mode             # 0x01:Broadcast, 0x02:Unicast, 0x03:Unicast no HB  
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::UDPSettingsResponse :md5sum-) "2c5d16ab87b6ce14cf7e308187a2cd86")
(setf (get accerion_driver_msgs::UDPSettingsResponse :datatype-) "accerion_driver_msgs/UDPSettingsResponse")
(setf (get accerion_driver_msgs::UDPSettingsResponse :definition-)
      "uint8 unicast_ip_address_first   # unicast target ip address first
uint8 unicast_ip_address_second  # unicast target ip address second
uint8 unicast_ip_address_third   # unicast target ip address third
uint8 unicast_ip_address_fourth   # unicast target ip address fourth
uint8  message_type         # 0x01: none, 0x02: only streaming, 0x03: only intermittent, 0x04: both streaming & intermittent messages
uint8  udp_mode             # 0x01:Broadcast, 0x02:Unicast, 0x03:Unicast no HB  
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/UDPSettings "2c5d16ab87b6ce14cf7e308187a2cd86")


