;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::FileTransfer)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'FileTransfer (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::FILETRANSFER")
  (make-package "ACCERION_DRIVER_MSGS::FILETRANSFER"))
(unless (find-package "ACCERION_DRIVER_MSGS::FILETRANSFERREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::FILETRANSFERREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::FILETRANSFERRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::FILETRANSFERRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::FileTransferRequest
  :super ros::object
  :slots (_path ))

(defmethod accerion_driver_msgs::FileTransferRequest
  (:init
   (&key
    ((:path __path) "")
    )
   (send-super :init)
   (setq _path (string __path))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::FileTransferResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::FileTransferResponse
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

(defclass accerion_driver_msgs::FileTransfer
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::FileTransfer :md5sum-) "a6bc470520bc753be0bc358804c232a4")
(setf (get accerion_driver_msgs::FileTransfer :datatype-) "accerion_driver_msgs/FileTransfer")
(setf (get accerion_driver_msgs::FileTransfer :request) accerion_driver_msgs::FileTransferRequest)
(setf (get accerion_driver_msgs::FileTransfer :response) accerion_driver_msgs::FileTransferResponse)

(defmethod accerion_driver_msgs::FileTransferRequest
  (:response () (instance accerion_driver_msgs::FileTransferResponse :init)))

(setf (get accerion_driver_msgs::FileTransferRequest :md5sum-) "a6bc470520bc753be0bc358804c232a4")
(setf (get accerion_driver_msgs::FileTransferRequest :datatype-) "accerion_driver_msgs/FileTransferRequest")
(setf (get accerion_driver_msgs::FileTransferRequest :definition-)
      "string path                 # Path where the file is located or should be stored
---
bool success                # boolean that holds whether the request has been made
string message              # message that contains information about the request(success/failure etc.)
")

(setf (get accerion_driver_msgs::FileTransferResponse :md5sum-) "a6bc470520bc753be0bc358804c232a4")
(setf (get accerion_driver_msgs::FileTransferResponse :datatype-) "accerion_driver_msgs/FileTransferResponse")
(setf (get accerion_driver_msgs::FileTransferResponse :definition-)
      "string path                 # Path where the file is located or should be stored
---
bool success                # boolean that holds whether the request has been made
string message              # message that contains information about the request(success/failure etc.)
")



(provide :accerion_driver_msgs/FileTransfer "a6bc470520bc753be0bc358804c232a4")


