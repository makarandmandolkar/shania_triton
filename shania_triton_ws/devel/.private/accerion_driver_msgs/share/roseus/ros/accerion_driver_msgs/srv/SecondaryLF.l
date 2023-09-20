;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::SecondaryLF)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'SecondaryLF (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::SECONDARYLF")
  (make-package "ACCERION_DRIVER_MSGS::SECONDARYLF"))
(unless (find-package "ACCERION_DRIVER_MSGS::SECONDARYLFREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::SECONDARYLFREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::SECONDARYLFRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::SECONDARYLFRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::SecondaryLFRequest
  :super ros::object
  :slots (_clusterID ))

(defmethod accerion_driver_msgs::SecondaryLFRequest
  (:init
   (&key
    ((:clusterID __clusterID) 0)
    )
   (send-super :init)
   (setq _clusterID (round __clusterID))
   self)
  (:clusterID
   (&optional __clusterID)
   (if __clusterID (setq _clusterID __clusterID)) _clusterID)
  (:serialization-length
   ()
   (+
    ;; uint16 _clusterID
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _clusterID
       (write-word _clusterID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _clusterID
     (setq _clusterID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass accerion_driver_msgs::SecondaryLFResponse
  :super ros::object
  :slots (_success _message _timeStamp _x _y _heading _closestPointX _closestPointY _line_heading _clusterID ))

(defmethod accerion_driver_msgs::SecondaryLFResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:timeStamp __timeStamp) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:heading __heading) 0.0)
    ((:closestPointX __closestPointX) 0.0)
    ((:closestPointY __closestPointY) 0.0)
    ((:line_heading __line_heading) 0.0)
    ((:clusterID __clusterID) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _timeStamp (round __timeStamp))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _heading (float __heading))
   (setq _closestPointX (float __closestPointX))
   (setq _closestPointY (float __closestPointY))
   (setq _line_heading (float __line_heading))
   (setq _clusterID (round __clusterID))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:closestPointX
   (&optional __closestPointX)
   (if __closestPointX (setq _closestPointX __closestPointX)) _closestPointX)
  (:closestPointY
   (&optional __closestPointY)
   (if __closestPointY (setq _closestPointY __closestPointY)) _closestPointY)
  (:line_heading
   (&optional __line_heading)
   (if __line_heading (setq _line_heading __line_heading)) _line_heading)
  (:clusterID
   (&optional __clusterID)
   (if __clusterID (setq _clusterID __clusterID)) _clusterID)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; uint64 _timeStamp
    8
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _heading
    4
    ;; float32 _closestPointX
    4
    ;; float32 _closestPointY
    4
    ;; float32 _line_heading
    4
    ;; uint16 _clusterID
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; uint64 _timeStamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timeStamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timeStamp) (= (length (_timeStamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timeStamp . bv) 0) 0) s)
              (write-long (ash (elt (_timeStamp . bv) 1) -1) s))
             ((and (class _timeStamp) (= (length (_timeStamp . bv)) 1)) ;; big1
              (write-long (elt (_timeStamp . bv) 0) s)
              (write-long (if (>= _timeStamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timeStamp s)(write-long (if (>= _timeStamp 0) 0 #xffffffff) s)))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _closestPointX
       (sys::poke _closestPointX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _closestPointY
       (sys::poke _closestPointY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _line_heading
       (sys::poke _line_heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _clusterID
       (write-word _clusterID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _timeStamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _timeStamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timeStamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _closestPointX
     (setq _closestPointX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _closestPointY
     (setq _closestPointY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _line_heading
     (setq _line_heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _clusterID
     (setq _clusterID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass accerion_driver_msgs::SecondaryLF
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::SecondaryLF :md5sum-) "941d90c566e891f5d4b78bfaff569951")
(setf (get accerion_driver_msgs::SecondaryLF :datatype-) "accerion_driver_msgs/SecondaryLF")
(setf (get accerion_driver_msgs::SecondaryLF :request) accerion_driver_msgs::SecondaryLFRequest)
(setf (get accerion_driver_msgs::SecondaryLF :response) accerion_driver_msgs::SecondaryLFResponse)

(defmethod accerion_driver_msgs::SecondaryLFRequest
  (:response () (instance accerion_driver_msgs::SecondaryLFResponse :init)))

(setf (get accerion_driver_msgs::SecondaryLFRequest :md5sum-) "941d90c566e891f5d4b78bfaff569951")
(setf (get accerion_driver_msgs::SecondaryLFRequest :datatype-) "accerion_driver_msgs/SecondaryLFRequest")
(setf (get accerion_driver_msgs::SecondaryLFRequest :definition-)
      "uint16 clusterID	      # uint16_t ID of the Cluster that you want the closest point of
---
bool success   	      # indicate successful run of triggered service
string message 	      # informational, e.g. for error messages
uint64 timeStamp             # Timestamp when the message was made
float32 x                    # Position of the sensor in meters x
float32 y                    # Position of the sensor in meters y
float32 heading              # Heading of the sensor in degrees
float32 closestPointX        # Closest point on line in meters x
float32 closestPointY        # Closest point on line in meters y
float32 line_heading         # heading of the line on closest point
uint16 clusterID             # ClusterID of the requested cluster line

")

(setf (get accerion_driver_msgs::SecondaryLFResponse :md5sum-) "941d90c566e891f5d4b78bfaff569951")
(setf (get accerion_driver_msgs::SecondaryLFResponse :datatype-) "accerion_driver_msgs/SecondaryLFResponse")
(setf (get accerion_driver_msgs::SecondaryLFResponse :definition-)
      "uint16 clusterID	      # uint16_t ID of the Cluster that you want the closest point of
---
bool success   	      # indicate successful run of triggered service
string message 	      # informational, e.g. for error messages
uint64 timeStamp             # Timestamp when the message was made
float32 x                    # Position of the sensor in meters x
float32 y                    # Position of the sensor in meters y
float32 heading              # Heading of the sensor in degrees
float32 closestPointX        # Closest point on line in meters x
float32 closestPointY        # Closest point on line in meters y
float32 line_heading         # heading of the line on closest point
uint16 clusterID             # ClusterID of the requested cluster line

")



(provide :accerion_driver_msgs/SecondaryLF "941d90c566e891f5d4b78bfaff569951")


