;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::ParentChildFrames)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'ParentChildFrames (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::PARENTCHILDFRAMES")
  (make-package "ACCERION_DRIVER_MSGS::PARENTCHILDFRAMES"))
(unless (find-package "ACCERION_DRIVER_MSGS::PARENTCHILDFRAMESREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::PARENTCHILDFRAMESREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::PARENTCHILDFRAMESRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::PARENTCHILDFRAMESRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::ParentChildFramesRequest
  :super ros::object
  :slots (_parent _child ))

(defmethod accerion_driver_msgs::ParentChildFramesRequest
  (:init
   (&key
    ((:parent __parent) "")
    ((:child __child) "")
    )
   (send-super :init)
   (setq _parent (string __parent))
   (setq _child (string __child))
   self)
  (:parent
   (&optional __parent)
   (if __parent (setq _parent __parent)) _parent)
  (:child
   (&optional __child)
   (if __child (setq _child __child)) _child)
  (:serialization-length
   ()
   (+
    ;; string _parent
    4 (length _parent)
    ;; string _child
    4 (length _child)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _parent
       (write-long (length _parent) s) (princ _parent s)
     ;; string _child
       (write-long (length _child) s) (princ _child s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _parent
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _child
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::ParentChildFramesResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::ParentChildFramesResponse
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

(defclass accerion_driver_msgs::ParentChildFrames
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::ParentChildFrames :md5sum-) "289a171e99d7db2cbd264d90af1d7948")
(setf (get accerion_driver_msgs::ParentChildFrames :datatype-) "accerion_driver_msgs/ParentChildFrames")
(setf (get accerion_driver_msgs::ParentChildFrames :request) accerion_driver_msgs::ParentChildFramesRequest)
(setf (get accerion_driver_msgs::ParentChildFrames :response) accerion_driver_msgs::ParentChildFramesResponse)

(defmethod accerion_driver_msgs::ParentChildFramesRequest
  (:response () (instance accerion_driver_msgs::ParentChildFramesResponse :init)))

(setf (get accerion_driver_msgs::ParentChildFramesRequest :md5sum-) "289a171e99d7db2cbd264d90af1d7948")
(setf (get accerion_driver_msgs::ParentChildFramesRequest :datatype-) "accerion_driver_msgs/ParentChildFramesRequest")
(setf (get accerion_driver_msgs::ParentChildFramesRequest :definition-)
      "string parent               # parent frame (e.g. map)
string child                # child frame (e.g. base_link)
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::ParentChildFramesResponse :md5sum-) "289a171e99d7db2cbd264d90af1d7948")
(setf (get accerion_driver_msgs::ParentChildFramesResponse :datatype-) "accerion_driver_msgs/ParentChildFramesResponse")
(setf (get accerion_driver_msgs::ParentChildFramesResponse :definition-)
      "string parent               # parent frame (e.g. map)
string child                # child frame (e.g. base_link)
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/ParentChildFrames "289a171e99d7db2cbd264d90af1d7948")


