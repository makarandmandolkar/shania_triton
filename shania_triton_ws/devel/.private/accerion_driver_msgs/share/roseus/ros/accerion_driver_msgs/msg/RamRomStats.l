;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::RamRomStats)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'RamRomStats (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::RAMROMSTATS")
  (make-package "ACCERION_DRIVER_MSGS::RAMROMSTATS"))

(in-package "ROS")
;;//! \htmlinclude RamRomStats.msg.html


(defclass accerion_driver_msgs::RamRomStats
  :super ros::object
  :slots (_romAvailable _romTotal _sdAvailable _sdTotal _ramUsed _ramTotal _parts ))

(defmethod accerion_driver_msgs::RamRomStats
  (:init
   (&key
    ((:romAvailable __romAvailable) 0)
    ((:romTotal __romTotal) 0)
    ((:sdAvailable __sdAvailable) 0)
    ((:sdTotal __sdTotal) 0)
    ((:ramUsed __ramUsed) 0)
    ((:ramTotal __ramTotal) 0)
    ((:parts __parts) (let (r) (dotimes (i 0) (push (instance accerion_driver_msgs::DirSizePart :init) r)) r))
    )
   (send-super :init)
   (setq _romAvailable (round __romAvailable))
   (setq _romTotal (round __romTotal))
   (setq _sdAvailable (round __sdAvailable))
   (setq _sdTotal (round __sdTotal))
   (setq _ramUsed (round __ramUsed))
   (setq _ramTotal (round __ramTotal))
   (setq _parts __parts)
   self)
  (:romAvailable
   (&optional __romAvailable)
   (if __romAvailable (setq _romAvailable __romAvailable)) _romAvailable)
  (:romTotal
   (&optional __romTotal)
   (if __romTotal (setq _romTotal __romTotal)) _romTotal)
  (:sdAvailable
   (&optional __sdAvailable)
   (if __sdAvailable (setq _sdAvailable __sdAvailable)) _sdAvailable)
  (:sdTotal
   (&optional __sdTotal)
   (if __sdTotal (setq _sdTotal __sdTotal)) _sdTotal)
  (:ramUsed
   (&optional __ramUsed)
   (if __ramUsed (setq _ramUsed __ramUsed)) _ramUsed)
  (:ramTotal
   (&optional __ramTotal)
   (if __ramTotal (setq _ramTotal __ramTotal)) _ramTotal)
  (:parts
   (&rest __parts)
   (if (keywordp (car __parts))
       (send* _parts __parts)
     (progn
       (if __parts (setq _parts (car __parts)))
       _parts)))
  (:serialization-length
   ()
   (+
    ;; uint32 _romAvailable
    4
    ;; uint32 _romTotal
    4
    ;; uint32 _sdAvailable
    4
    ;; uint32 _sdTotal
    4
    ;; uint16 _ramUsed
    2
    ;; uint16 _ramTotal
    2
    ;; accerion_driver_msgs/DirSizePart[] _parts
    (apply #'+ (send-all _parts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _romAvailable
       (write-long _romAvailable s)
     ;; uint32 _romTotal
       (write-long _romTotal s)
     ;; uint32 _sdAvailable
       (write-long _sdAvailable s)
     ;; uint32 _sdTotal
       (write-long _sdTotal s)
     ;; uint16 _ramUsed
       (write-word _ramUsed s)
     ;; uint16 _ramTotal
       (write-word _ramTotal s)
     ;; accerion_driver_msgs/DirSizePart[] _parts
     (write-long (length _parts) s)
     (dolist (elem _parts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _romAvailable
     (setq _romAvailable (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _romTotal
     (setq _romTotal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sdAvailable
     (setq _sdAvailable (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sdTotal
     (setq _sdTotal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _ramUsed
     (setq _ramUsed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ramTotal
     (setq _ramTotal (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; accerion_driver_msgs/DirSizePart[] _parts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parts (let (r) (dotimes (i n) (push (instance accerion_driver_msgs::DirSizePart :init) r)) r))
     (dolist (elem- _parts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get accerion_driver_msgs::RamRomStats :md5sum-) "7806d72dc3ef14ad7527222b80c652ff")
(setf (get accerion_driver_msgs::RamRomStats :datatype-) "accerion_driver_msgs/RamRomStats")
(setf (get accerion_driver_msgs::RamRomStats :definition-)
      "uint32 romAvailable
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
string name
")



(provide :accerion_driver_msgs/RamRomStats "7806d72dc3ef14ad7527222b80c652ff")


