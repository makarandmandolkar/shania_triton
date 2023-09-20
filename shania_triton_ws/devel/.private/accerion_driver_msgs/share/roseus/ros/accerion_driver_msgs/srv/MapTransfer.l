;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::MapTransfer)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'MapTransfer (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::MAPTRANSFER")
  (make-package "ACCERION_DRIVER_MSGS::MAPTRANSFER"))
(unless (find-package "ACCERION_DRIVER_MSGS::MAPTRANSFERREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::MAPTRANSFERREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::MAPTRANSFERRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::MAPTRANSFERRESPONSE"))

(in-package "ROS")





(intern "*REPLACE*" (find-package "ACCERION_DRIVER_MSGS::MAPTRANSFERREQUEST"))
(shadow '*REPLACE* (find-package "ACCERION_DRIVER_MSGS::MAPTRANSFERREQUEST"))
(defconstant accerion_driver_msgs::MapTransferRequest::*REPLACE* 0)
(intern "*MERGE*" (find-package "ACCERION_DRIVER_MSGS::MAPTRANSFERREQUEST"))
(shadow '*MERGE* (find-package "ACCERION_DRIVER_MSGS::MAPTRANSFERREQUEST"))
(defconstant accerion_driver_msgs::MapTransferRequest::*MERGE* 1)
(intern "*UPDATE*" (find-package "ACCERION_DRIVER_MSGS::MAPTRANSFERREQUEST"))
(shadow '*UPDATE* (find-package "ACCERION_DRIVER_MSGS::MAPTRANSFERREQUEST"))
(defconstant accerion_driver_msgs::MapTransferRequest::*UPDATE* 2)
(defclass accerion_driver_msgs::MapTransferRequest
  :super ros::object
  :slots (_path _placement_mode ))

(defmethod accerion_driver_msgs::MapTransferRequest
  (:init
   (&key
    ((:path __path) "")
    ((:placement_mode __placement_mode) 0)
    )
   (send-super :init)
   (setq _path (string __path))
   (setq _placement_mode (round __placement_mode))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:placement_mode
   (&optional __placement_mode)
   (if __placement_mode (setq _placement_mode __placement_mode)) _placement_mode)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ;; uint8 _placement_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; uint8 _placement_mode
       (write-byte _placement_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _placement_mode
     (setq _placement_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass accerion_driver_msgs::MapTransferResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::MapTransferResponse
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

(defclass accerion_driver_msgs::MapTransfer
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::MapTransfer :md5sum-) "d4d6ab770f960bd602399ac9d578e6ee")
(setf (get accerion_driver_msgs::MapTransfer :datatype-) "accerion_driver_msgs/MapTransfer")
(setf (get accerion_driver_msgs::MapTransfer :request) accerion_driver_msgs::MapTransferRequest)
(setf (get accerion_driver_msgs::MapTransfer :response) accerion_driver_msgs::MapTransferResponse)

(defmethod accerion_driver_msgs::MapTransferRequest
  (:response () (instance accerion_driver_msgs::MapTransferResponse :init)))

(setf (get accerion_driver_msgs::MapTransferRequest :md5sum-) "d4d6ab770f960bd602399ac9d578e6ee")
(setf (get accerion_driver_msgs::MapTransferRequest :datatype-) "accerion_driver_msgs/MapTransferRequest")
(setf (get accerion_driver_msgs::MapTransferRequest :definition-)
      "string path                 # Path where the file is located or should be stored
uint8 placement_mode        # In case of a map, 0 = replace, 1 = merge, 2 = update
uint8 REPLACE = 0
uint8 MERGE = 1
uint8 UPDATE = 2
---
bool success                # boolean that holds whether the request has been made
string message              # message that contains information about the request(success/failure etc.)
")

(setf (get accerion_driver_msgs::MapTransferResponse :md5sum-) "d4d6ab770f960bd602399ac9d578e6ee")
(setf (get accerion_driver_msgs::MapTransferResponse :datatype-) "accerion_driver_msgs/MapTransferResponse")
(setf (get accerion_driver_msgs::MapTransferResponse :definition-)
      "string path                 # Path where the file is located or should be stored
uint8 placement_mode        # In case of a map, 0 = replace, 1 = merge, 2 = update
uint8 REPLACE = 0
uint8 MERGE = 1
uint8 UPDATE = 2
---
bool success                # boolean that holds whether the request has been made
string message              # message that contains information about the request(success/failure etc.)
")



(provide :accerion_driver_msgs/MapTransfer "d4d6ab770f960bd602399ac9d578e6ee")


