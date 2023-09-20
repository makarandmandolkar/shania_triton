;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::SetBufferedRecoveryBufferLength)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'SetBufferedRecoveryBufferLength (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::SETBUFFEREDRECOVERYBUFFERLENGTH")
  (make-package "ACCERION_DRIVER_MSGS::SETBUFFEREDRECOVERYBUFFERLENGTH"))
(unless (find-package "ACCERION_DRIVER_MSGS::SETBUFFEREDRECOVERYBUFFERLENGTHREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::SETBUFFEREDRECOVERYBUFFERLENGTHREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::SETBUFFEREDRECOVERYBUFFERLENGTHRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::SETBUFFEREDRECOVERYBUFFERLENGTHRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::SetBufferedRecoveryBufferLengthRequest
  :super ros::object
  :slots (_bufferLength ))

(defmethod accerion_driver_msgs::SetBufferedRecoveryBufferLengthRequest
  (:init
   (&key
    ((:bufferLength __bufferLength) 0.0)
    )
   (send-super :init)
   (setq _bufferLength (float __bufferLength))
   self)
  (:bufferLength
   (&optional __bufferLength)
   (if __bufferLength (setq _bufferLength __bufferLength)) _bufferLength)
  (:serialization-length
   ()
   (+
    ;; float32 _bufferLength
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _bufferLength
       (sys::poke _bufferLength (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _bufferLength
     (setq _bufferLength (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass accerion_driver_msgs::SetBufferedRecoveryBufferLengthResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod accerion_driver_msgs::SetBufferedRecoveryBufferLengthResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _msg (string __msg))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::SetBufferedRecoveryBufferLength
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLength :md5sum-) "e14afd668301bde6c6dea0c523ebebaf")
(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLength :datatype-) "accerion_driver_msgs/SetBufferedRecoveryBufferLength")
(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLength :request) accerion_driver_msgs::SetBufferedRecoveryBufferLengthRequest)
(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLength :response) accerion_driver_msgs::SetBufferedRecoveryBufferLengthResponse)

(defmethod accerion_driver_msgs::SetBufferedRecoveryBufferLengthRequest
  (:response () (instance accerion_driver_msgs::SetBufferedRecoveryBufferLengthResponse :init)))

(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLengthRequest :md5sum-) "e14afd668301bde6c6dea0c523ebebaf")
(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLengthRequest :datatype-) "accerion_driver_msgs/SetBufferedRecoveryBufferLengthRequest")
(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLengthRequest :definition-)
      "float32 bufferLength		# specify the buffer length of recovery buffer
---
bool success               	# true if buffer length is correctly set
string msg                  # for info
")

(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLengthResponse :md5sum-) "e14afd668301bde6c6dea0c523ebebaf")
(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLengthResponse :datatype-) "accerion_driver_msgs/SetBufferedRecoveryBufferLengthResponse")
(setf (get accerion_driver_msgs::SetBufferedRecoveryBufferLengthResponse :definition-)
      "float32 bufferLength		# specify the buffer length of recovery buffer
---
bool success               	# true if buffer length is correctly set
string msg                  # for info
")



(provide :accerion_driver_msgs/SetBufferedRecoveryBufferLength "e14afd668301bde6c6dea0c523ebebaf")


