;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::Recordings)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'Recordings (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::RECORDINGS")
  (make-package "ACCERION_DRIVER_MSGS::RECORDINGS"))
(unless (find-package "ACCERION_DRIVER_MSGS::RECORDINGSREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::RECORDINGSREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::RECORDINGSRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::RECORDINGSRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::RecordingsRequest
  :super ros::object
  :slots (_mode _recordingIndexes ))

(defmethod accerion_driver_msgs::RecordingsRequest
  (:init
   (&key
    ((:mode __mode) "")
    ((:recordingIndexes __recordingIndexes) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _recordingIndexes __recordingIndexes)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:recordingIndexes
   (&optional __recordingIndexes)
   (if __recordingIndexes (setq _recordingIndexes __recordingIndexes)) _recordingIndexes)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; uint8[] _recordingIndexes
    (* 1    (length _recordingIndexes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; uint8[] _recordingIndexes
     (write-long (length _recordingIndexes) s)
     (princ _recordingIndexes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _recordingIndexes
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _recordingIndexes (make-array n :element-type :char))
     (replace _recordingIndexes buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::RecordingsResponse
  :super ros::object
  :slots (_recordings _success _message ))

(defmethod accerion_driver_msgs::RecordingsResponse
  (:init
   (&key
    ((:recordings __recordings) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _recordings __recordings)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:recordings
   (&optional __recordings)
   (if __recordings (setq _recordings __recordings)) _recordings)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string[] _recordings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _recordings)) 4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _recordings
     (write-long (length _recordings) s)
     (dolist (elem _recordings)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _recordings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _recordings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _recordings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::Recordings
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::Recordings :md5sum-) "a50241c729b90d3d361ca09193e877ca")
(setf (get accerion_driver_msgs::Recordings :datatype-) "accerion_driver_msgs/Recordings")
(setf (get accerion_driver_msgs::Recordings :request) accerion_driver_msgs::RecordingsRequest)
(setf (get accerion_driver_msgs::Recordings :response) accerion_driver_msgs::RecordingsResponse)

(defmethod accerion_driver_msgs::RecordingsRequest
  (:response () (instance accerion_driver_msgs::RecordingsResponse :init)))

(setf (get accerion_driver_msgs::RecordingsRequest :md5sum-) "a50241c729b90d3d361ca09193e877ca")
(setf (get accerion_driver_msgs::RecordingsRequest :datatype-) "accerion_driver_msgs/RecordingsRequest")
(setf (get accerion_driver_msgs::RecordingsRequest :definition-)
      "string mode                 # list(to retrieve list of recordings), delete(delete one or more recordings)
uint8[]  recordingIndexes   # indexes of the recordings to be retrieved
---
string[] recordings 	    # names of the recordings on the sensor
bool success                # boolean that holds whether the request has been made
string message              # message that contains information about the request(success/failure etc.)
")

(setf (get accerion_driver_msgs::RecordingsResponse :md5sum-) "a50241c729b90d3d361ca09193e877ca")
(setf (get accerion_driver_msgs::RecordingsResponse :datatype-) "accerion_driver_msgs/RecordingsResponse")
(setf (get accerion_driver_msgs::RecordingsResponse :definition-)
      "string mode                 # list(to retrieve list of recordings), delete(delete one or more recordings)
uint8[]  recordingIndexes   # indexes of the recordings to be retrieved
---
string[] recordings 	    # names of the recordings on the sensor
bool success                # boolean that holds whether the request has been made
string message              # message that contains information about the request(success/failure etc.)
")



(provide :accerion_driver_msgs/Recordings "a50241c729b90d3d361ca09193e877ca")


