;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::RemoveArea)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'RemoveArea (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::REMOVEAREA")
  (make-package "ACCERION_DRIVER_MSGS::REMOVEAREA"))
(unless (find-package "ACCERION_DRIVER_MSGS::REMOVEAREAREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::REMOVEAREAREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::REMOVEAREARESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::REMOVEAREARESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::RemoveAreaRequest
  :super ros::object
  :slots (_areaIDToBeRemoved _removeAll ))

(defmethod accerion_driver_msgs::RemoveAreaRequest
  (:init
   (&key
    ((:areaIDToBeRemoved __areaIDToBeRemoved) 0)
    ((:removeAll __removeAll) nil)
    )
   (send-super :init)
   (setq _areaIDToBeRemoved (round __areaIDToBeRemoved))
   (setq _removeAll __removeAll)
   self)
  (:areaIDToBeRemoved
   (&optional __areaIDToBeRemoved)
   (if __areaIDToBeRemoved (setq _areaIDToBeRemoved __areaIDToBeRemoved)) _areaIDToBeRemoved)
  (:removeAll
   (&optional __removeAll)
   (if __removeAll (setq _removeAll __removeAll)) _removeAll)
  (:serialization-length
   ()
   (+
    ;; uint16 _areaIDToBeRemoved
    2
    ;; bool _removeAll
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _areaIDToBeRemoved
       (write-word _areaIDToBeRemoved s)
     ;; bool _removeAll
       (if _removeAll (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _areaIDToBeRemoved
     (setq _areaIDToBeRemoved (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _removeAll
     (setq _removeAll (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass accerion_driver_msgs::RemoveAreaResponse
  :super ros::object
  :slots (_areaIDRemoved _success _message ))

(defmethod accerion_driver_msgs::RemoveAreaResponse
  (:init
   (&key
    ((:areaIDRemoved __areaIDRemoved) 0)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _areaIDRemoved (round __areaIDRemoved))
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:areaIDRemoved
   (&optional __areaIDRemoved)
   (if __areaIDRemoved (setq _areaIDRemoved __areaIDRemoved)) _areaIDRemoved)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint16 _areaIDRemoved
    2
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _areaIDRemoved
       (write-word _areaIDRemoved s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _areaIDRemoved
     (setq _areaIDRemoved (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::RemoveArea
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::RemoveArea :md5sum-) "881afa415578f35e809f2c9503522767")
(setf (get accerion_driver_msgs::RemoveArea :datatype-) "accerion_driver_msgs/RemoveArea")
(setf (get accerion_driver_msgs::RemoveArea :request) accerion_driver_msgs::RemoveAreaRequest)
(setf (get accerion_driver_msgs::RemoveArea :response) accerion_driver_msgs::RemoveAreaResponse)

(defmethod accerion_driver_msgs::RemoveAreaRequest
  (:response () (instance accerion_driver_msgs::RemoveAreaResponse :init)))

(setf (get accerion_driver_msgs::RemoveAreaRequest :md5sum-) "881afa415578f35e809f2c9503522767")
(setf (get accerion_driver_msgs::RemoveAreaRequest :datatype-) "accerion_driver_msgs/RemoveAreaRequest")
(setf (get accerion_driver_msgs::RemoveAreaRequest :definition-)
      "uint16 areaIDToBeRemoved      # Area ID to be removed
bool removeAll                # Remove all areas
---
uint16 areaIDRemoved        # Area ID that was removed (0xFFFF for all areas)
bool success                # indicate successful run of triggered service
string message 				# informational, e.g. for error messages

")

(setf (get accerion_driver_msgs::RemoveAreaResponse :md5sum-) "881afa415578f35e809f2c9503522767")
(setf (get accerion_driver_msgs::RemoveAreaResponse :datatype-) "accerion_driver_msgs/RemoveAreaResponse")
(setf (get accerion_driver_msgs::RemoveAreaResponse :definition-)
      "uint16 areaIDToBeRemoved      # Area ID to be removed
bool removeAll                # Remove all areas
---
uint16 areaIDRemoved        # Area ID that was removed (0xFFFF for all areas)
bool success                # indicate successful run of triggered service
string message 				# informational, e.g. for error messages

")



(provide :accerion_driver_msgs/RemoveArea "881afa415578f35e809f2c9503522767")


