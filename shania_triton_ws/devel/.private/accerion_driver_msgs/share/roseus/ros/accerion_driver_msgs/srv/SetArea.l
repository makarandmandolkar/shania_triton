;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::SetArea)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'SetArea (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::SETAREA")
  (make-package "ACCERION_DRIVER_MSGS::SETAREA"))
(unless (find-package "ACCERION_DRIVER_MSGS::SETAREAREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::SETAREAREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::SETAREARESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::SETAREARESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::SetAreaRequest
  :super ros::object
  :slots (_desiredArea ))

(defmethod accerion_driver_msgs::SetAreaRequest
  (:init
   (&key
    ((:desiredArea __desiredArea) 0)
    )
   (send-super :init)
   (setq _desiredArea (round __desiredArea))
   self)
  (:desiredArea
   (&optional __desiredArea)
   (if __desiredArea (setq _desiredArea __desiredArea)) _desiredArea)
  (:serialization-length
   ()
   (+
    ;; uint16 _desiredArea
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _desiredArea
       (write-word _desiredArea s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _desiredArea
     (setq _desiredArea (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass accerion_driver_msgs::SetAreaResponse
  :super ros::object
  :slots (_success _activeArea _availbleAreas _message ))

(defmethod accerion_driver_msgs::SetAreaResponse
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

(defclass accerion_driver_msgs::SetArea
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::SetArea :md5sum-) "5a693ddcf3bdcdceea8d6dd1f06cc265")
(setf (get accerion_driver_msgs::SetArea :datatype-) "accerion_driver_msgs/SetArea")
(setf (get accerion_driver_msgs::SetArea :request) accerion_driver_msgs::SetAreaRequest)
(setf (get accerion_driver_msgs::SetArea :response) accerion_driver_msgs::SetAreaResponse)

(defmethod accerion_driver_msgs::SetAreaRequest
  (:response () (instance accerion_driver_msgs::SetAreaResponse :init)))

(setf (get accerion_driver_msgs::SetAreaRequest :md5sum-) "5a693ddcf3bdcdceea8d6dd1f06cc265")
(setf (get accerion_driver_msgs::SetAreaRequest :datatype-) "accerion_driver_msgs/SetAreaRequest")
(setf (get accerion_driver_msgs::SetAreaRequest :definition-)
      "uint16 desiredArea              # areaID to set in case of set
---
bool success                    # was the request succesful
uint16 activeArea   		    # contains the ID of the area that is currently selected
uint16[]  availbleAreas         # contains the ID's of all the existing areas, the first one being the active one
string message 				    # informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::SetAreaResponse :md5sum-) "5a693ddcf3bdcdceea8d6dd1f06cc265")
(setf (get accerion_driver_msgs::SetAreaResponse :datatype-) "accerion_driver_msgs/SetAreaResponse")
(setf (get accerion_driver_msgs::SetAreaResponse :definition-)
      "uint16 desiredArea              # areaID to set in case of set
---
bool success                    # was the request succesful
uint16 activeArea   		    # contains the ID of the area that is currently selected
uint16[]  availbleAreas         # contains the ID's of all the existing areas, the first one being the active one
string message 				    # informational, e.g. for error messages
")



(provide :accerion_driver_msgs/SetArea "5a693ddcf3bdcdceea8d6dd1f06cc265")


