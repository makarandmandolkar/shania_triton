;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::GetAreas)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'GetAreas (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::GETAREAS")
  (make-package "ACCERION_DRIVER_MSGS::GETAREAS"))
(unless (find-package "ACCERION_DRIVER_MSGS::GETAREASREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::GETAREASREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::GETAREASRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::GETAREASRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::GetAreasRequest
  :super ros::object
  :slots ())

(defmethod accerion_driver_msgs::GetAreasRequest
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

(defclass accerion_driver_msgs::GetAreasResponse
  :super ros::object
  :slots (_success _activeArea _availbleAreas _message ))

(defmethod accerion_driver_msgs::GetAreasResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:activeArea __activeArea) 0)
    ((:availbleAreas __availbleAreas) (make-array 0 :initial-element 0 :element-type :integer))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _activeArea (round __activeArea))
   (setq _availbleAreas __availbleAreas)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:activeArea
   (&optional __activeArea)
   (if __activeArea (setq _activeArea __activeArea)) _activeArea)
  (:availbleAreas
   (&optional __availbleAreas)
   (if __availbleAreas (setq _availbleAreas __availbleAreas)) _availbleAreas)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint16 _activeArea
    2
    ;; uint16[] _availbleAreas
    (* 2    (length _availbleAreas)) 4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _activeArea
       (write-word _activeArea s)
     ;; uint16[] _availbleAreas
     (write-long (length _availbleAreas) s)
     (dotimes (i (length _availbleAreas))
       (write-word (elt _availbleAreas i) s)
       )
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _activeArea
     (setq _activeArea (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16[] _availbleAreas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _availbleAreas (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _availbleAreas i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::GetAreas
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::GetAreas :md5sum-) "c78e2d446f78752232f22114cb77d34e")
(setf (get accerion_driver_msgs::GetAreas :datatype-) "accerion_driver_msgs/GetAreas")
(setf (get accerion_driver_msgs::GetAreas :request) accerion_driver_msgs::GetAreasRequest)
(setf (get accerion_driver_msgs::GetAreas :response) accerion_driver_msgs::GetAreasResponse)

(defmethod accerion_driver_msgs::GetAreasRequest
  (:response () (instance accerion_driver_msgs::GetAreasResponse :init)))

(setf (get accerion_driver_msgs::GetAreasRequest :md5sum-) "c78e2d446f78752232f22114cb77d34e")
(setf (get accerion_driver_msgs::GetAreasRequest :datatype-) "accerion_driver_msgs/GetAreasRequest")
(setf (get accerion_driver_msgs::GetAreasRequest :definition-)
      "---
bool success                    # was the request succesful
uint16 activeArea   		    # contains the ID of the area that is currently selected
uint16[]  availbleAreas         # contains the ID's of all the existing areas, the first one being the active one
string message 				    # informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::GetAreasResponse :md5sum-) "c78e2d446f78752232f22114cb77d34e")
(setf (get accerion_driver_msgs::GetAreasResponse :datatype-) "accerion_driver_msgs/GetAreasResponse")
(setf (get accerion_driver_msgs::GetAreasResponse :definition-)
      "---
bool success                    # was the request succesful
uint16 activeArea   		    # contains the ID of the area that is currently selected
uint16[]  availbleAreas         # contains the ID's of all the existing areas, the first one being the active one
string message 				    # informational, e.g. for error messages
")



(provide :accerion_driver_msgs/GetAreas "c78e2d446f78752232f22114cb77d34e")


