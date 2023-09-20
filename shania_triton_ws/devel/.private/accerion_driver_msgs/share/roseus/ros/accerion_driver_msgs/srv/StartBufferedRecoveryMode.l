;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::StartBufferedRecoveryMode)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'StartBufferedRecoveryMode (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::STARTBUFFEREDRECOVERYMODE")
  (make-package "ACCERION_DRIVER_MSGS::STARTBUFFEREDRECOVERYMODE"))
(unless (find-package "ACCERION_DRIVER_MSGS::STARTBUFFEREDRECOVERYMODEREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::STARTBUFFEREDRECOVERYMODEREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::STARTBUFFEREDRECOVERYMODERESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::STARTBUFFEREDRECOVERYMODERESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::StartBufferedRecoveryModeRequest
  :super ros::object
  :slots (_xPos _yPos _radius _fullMapSearch ))

(defmethod accerion_driver_msgs::StartBufferedRecoveryModeRequest
  (:init
   (&key
    ((:xPos __xPos) 0.0)
    ((:yPos __yPos) 0.0)
    ((:radius __radius) 0.0)
    ((:fullMapSearch __fullMapSearch) nil)
    )
   (send-super :init)
   (setq _xPos (float __xPos))
   (setq _yPos (float __yPos))
   (setq _radius (float __radius))
   (setq _fullMapSearch __fullMapSearch)
   self)
  (:xPos
   (&optional __xPos)
   (if __xPos (setq _xPos __xPos)) _xPos)
  (:yPos
   (&optional __yPos)
   (if __yPos (setq _yPos __yPos)) _yPos)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:fullMapSearch
   (&optional __fullMapSearch)
   (if __fullMapSearch (setq _fullMapSearch __fullMapSearch)) _fullMapSearch)
  (:serialization-length
   ()
   (+
    ;; float32 _xPos
    4
    ;; float32 _yPos
    4
    ;; float32 _radius
    4
    ;; bool _fullMapSearch
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _xPos
       (sys::poke _xPos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yPos
       (sys::poke _yPos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _fullMapSearch
       (if _fullMapSearch (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _xPos
     (setq _xPos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yPos
     (setq _yPos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _fullMapSearch
     (setq _fullMapSearch (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass accerion_driver_msgs::StartBufferedRecoveryModeResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod accerion_driver_msgs::StartBufferedRecoveryModeResponse
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

(defclass accerion_driver_msgs::StartBufferedRecoveryMode
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::StartBufferedRecoveryMode :md5sum-) "b55e14589ad6c01276c8060ce8703764")
(setf (get accerion_driver_msgs::StartBufferedRecoveryMode :datatype-) "accerion_driver_msgs/StartBufferedRecoveryMode")
(setf (get accerion_driver_msgs::StartBufferedRecoveryMode :request) accerion_driver_msgs::StartBufferedRecoveryModeRequest)
(setf (get accerion_driver_msgs::StartBufferedRecoveryMode :response) accerion_driver_msgs::StartBufferedRecoveryModeResponse)

(defmethod accerion_driver_msgs::StartBufferedRecoveryModeRequest
  (:response () (instance accerion_driver_msgs::StartBufferedRecoveryModeResponse :init)))

(setf (get accerion_driver_msgs::StartBufferedRecoveryModeRequest :md5sum-) "b55e14589ad6c01276c8060ce8703764")
(setf (get accerion_driver_msgs::StartBufferedRecoveryModeRequest :datatype-) "accerion_driver_msgs/StartBufferedRecoveryModeRequest")
(setf (get accerion_driver_msgs::StartBufferedRecoveryModeRequest :definition-)
      "float32 xPos			# specify the anchor x position
float32 yPos			# specify the anchor y position
float32 radius	        # specify the search radius
bool    fullMapSearch   # specify if full map search mode is on
---
bool success               	# true if buffered recovery mode is started
string msg                  # for info
")

(setf (get accerion_driver_msgs::StartBufferedRecoveryModeResponse :md5sum-) "b55e14589ad6c01276c8060ce8703764")
(setf (get accerion_driver_msgs::StartBufferedRecoveryModeResponse :datatype-) "accerion_driver_msgs/StartBufferedRecoveryModeResponse")
(setf (get accerion_driver_msgs::StartBufferedRecoveryModeResponse :definition-)
      "float32 xPos			# specify the anchor x position
float32 yPos			# specify the anchor y position
float32 radius	        # specify the search radius
bool    fullMapSearch   # specify if full map search mode is on
---
bool success               	# true if buffered recovery mode is started
string msg                  # for info
")



(provide :accerion_driver_msgs/StartBufferedRecoveryMode "b55e14589ad6c01276c8060ce8703764")


