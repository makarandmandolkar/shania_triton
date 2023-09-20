;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::DirSizePart)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'DirSizePart (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::DIRSIZEPART")
  (make-package "ACCERION_DRIVER_MSGS::DIRSIZEPART"))

(in-package "ROS")
;;//! \htmlinclude DirSizePart.msg.html


(defclass accerion_driver_msgs::DirSizePart
  :super ros::object
  :slots (_type _sizeInMB _nameLength _name ))

(defmethod accerion_driver_msgs::DirSizePart
  (:init
   (&key
    ((:type __type) 0)
    ((:sizeInMB __sizeInMB) 0)
    ((:nameLength __nameLength) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _sizeInMB (round __sizeInMB))
   (setq _nameLength (round __nameLength))
   (setq _name (string __name))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:sizeInMB
   (&optional __sizeInMB)
   (if __sizeInMB (setq _sizeInMB __sizeInMB)) _sizeInMB)
  (:nameLength
   (&optional __nameLength)
   (if __nameLength (setq _nameLength __nameLength)) _nameLength)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; uint16 _type
    2
    ;; uint32 _sizeInMB
    4
    ;; uint32 _nameLength
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _type
       (write-word _type s)
     ;; uint32 _sizeInMB
       (write-long _sizeInMB s)
     ;; uint32 _nameLength
       (write-long _nameLength s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _sizeInMB
     (setq _sizeInMB (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _nameLength
     (setq _nameLength (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get accerion_driver_msgs::DirSizePart :md5sum-) "148a4802f96912a7e6838d49c25793cf")
(setf (get accerion_driver_msgs::DirSizePart :datatype-) "accerion_driver_msgs/DirSizePart")
(setf (get accerion_driver_msgs::DirSizePart :definition-)
      "uint16 type
uint32 sizeInMB
uint32 nameLength
string name
")



(provide :accerion_driver_msgs/DirSizePart "148a4802f96912a7e6838d49c25793cf")


