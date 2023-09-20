;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::RamRomStatsSRV)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'RamRomStatsSRV (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::RAMROMSTATSSRV")
  (make-package "ACCERION_DRIVER_MSGS::RAMROMSTATSSRV"))
(unless (find-package "ACCERION_DRIVER_MSGS::RAMROMSTATSSRVREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::RAMROMSTATSSRVREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::RAMROMSTATSSRVRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::RAMROMSTATSSRVRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::RamRomStatsSRVRequest
  :super ros::object
  :slots ())

(defmethod accerion_driver_msgs::RamRomStatsSRVRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass accerion_driver_msgs::RamRomStatsSRVResponse
  :super ros::object
  :slots (_success _stats ))

(defmethod accerion_driver_msgs::RamRomStatsSRVResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:stats __stats) (instance accerion_driver_msgs::RamRomStats :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _stats __stats)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:stats
   (&rest __stats)
   (if (keywordp (car __stats))
       (send* _stats __stats)
     (progn
       (if __stats (setq _stats (car __stats)))
       _stats)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; accerion_driver_msgs/RamRomStats _stats
    (send _stats :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; accerion_driver_msgs/RamRomStats _stats
       (send _stats :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; accerion_driver_msgs/RamRomStats _stats
     (send _stats :deserialize buf ptr-) (incf ptr- (send _stats :serialization-length))
   ;;
   self)
  )

(defclass accerion_driver_msgs::RamRomStatsSRV
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::RamRomStatsSRV :md5sum-) "f929a081cee331427f8c52eba3b62cee")
(setf (get accerion_driver_msgs::RamRomStatsSRV :datatype-) "accerion_driver_msgs/RamRomStatsSRV")
(setf (get accerion_driver_msgs::RamRomStatsSRV :request) accerion_driver_msgs::RamRomStatsSRVRequest)
(setf (get accerion_driver_msgs::RamRomStatsSRV :response) accerion_driver_msgs::RamRomStatsSRVResponse)

(defmethod accerion_driver_msgs::RamRomStatsSRVRequest
  (:response () (instance accerion_driver_msgs::RamRomStatsSRVResponse :init)))

(setf (get accerion_driver_msgs::RamRomStatsSRVRequest :md5sum-) "f929a081cee331427f8c52eba3b62cee")
(setf (get accerion_driver_msgs::RamRomStatsSRVRequest :datatype-) "accerion_driver_msgs/RamRomStatsSRVRequest")
(setf (get accerion_driver_msgs::RamRomStatsSRVRequest :definition-)
      "---
bool success   				# indicate successful run of triggered service
RamRomStats stats

================================================================================
MSG: accerion_driver_msgs/RamRomStats
uint32 romAvailable
uint32 romTotal
uint32 sdAvailable
uint32 sdTotal
uint16 ramUsed
uint16 ramTotal
DirSizePart[] parts
================================================================================
MSG: accerion_driver_msgs/DirSizePart
uint16 type
uint32 sizeInMB
uint32 nameLength
")

(setf (get accerion_driver_msgs::RamRomStatsSRVResponse :md5sum-) "f929a081cee331427f8c52eba3b62cee")
(setf (get accerion_driver_msgs::RamRomStatsSRVResponse :datatype-) "accerion_driver_msgs/RamRomStatsSRVResponse")
(setf (get accerion_driver_msgs::RamRomStatsSRVResponse :definition-)
      "---
bool success   				# indicate successful run of triggered service
RamRomStats stats

================================================================================
MSG: accerion_driver_msgs/RamRomStats
uint32 romAvailable
uint32 romTotal
uint32 sdAvailable
uint32 sdTotal
uint16 ramUsed
uint16 ramTotal
DirSizePart[] parts
================================================================================
MSG: accerion_driver_msgs/DirSizePart
uint16 type
uint32 sizeInMB
uint32 nameLength
")



(provide :accerion_driver_msgs/RamRomStatsSRV "f929a081cee331427f8c52eba3b62cee")


