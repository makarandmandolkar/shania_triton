;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::SensorDiagnostics)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'SensorDiagnostics (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::SENSORDIAGNOSTICS")
  (make-package "ACCERION_DRIVER_MSGS::SENSORDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude SensorDiagnostics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass accerion_driver_msgs::SensorDiagnostics
  :super ros::object
  :slots (_header _serial_number _raw_timestamp _modes_code _active_modes _warnings_code _active_warnings _errors_code _active_errors _status_code _active_status ))

(defmethod accerion_driver_msgs::SensorDiagnostics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:serial_number __serial_number) 0)
    ((:raw_timestamp __raw_timestamp) 0)
    ((:modes_code __modes_code) 0)
    ((:active_modes __active_modes) "")
    ((:warnings_code __warnings_code) 0)
    ((:active_warnings __active_warnings) "")
    ((:errors_code __errors_code) 0)
    ((:active_errors __active_errors) "")
    ((:status_code __status_code) 0)
    ((:active_status __active_status) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _serial_number (round __serial_number))
   (setq _raw_timestamp (round __raw_timestamp))
   (setq _modes_code (round __modes_code))
   (setq _active_modes (string __active_modes))
   (setq _warnings_code (round __warnings_code))
   (setq _active_warnings (string __active_warnings))
   (setq _errors_code (round __errors_code))
   (setq _active_errors (string __active_errors))
   (setq _status_code (round __status_code))
   (setq _active_status (string __active_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serial_number
   (&optional __serial_number)
   (if __serial_number (setq _serial_number __serial_number)) _serial_number)
  (:raw_timestamp
   (&optional __raw_timestamp)
   (if __raw_timestamp (setq _raw_timestamp __raw_timestamp)) _raw_timestamp)
  (:modes_code
   (&optional __modes_code)
   (if __modes_code (setq _modes_code __modes_code)) _modes_code)
  (:active_modes
   (&optional __active_modes)
   (if __active_modes (setq _active_modes __active_modes)) _active_modes)
  (:warnings_code
   (&optional __warnings_code)
   (if __warnings_code (setq _warnings_code __warnings_code)) _warnings_code)
  (:active_warnings
   (&optional __active_warnings)
   (if __active_warnings (setq _active_warnings __active_warnings)) _active_warnings)
  (:errors_code
   (&optional __errors_code)
   (if __errors_code (setq _errors_code __errors_code)) _errors_code)
  (:active_errors
   (&optional __active_errors)
   (if __active_errors (setq _active_errors __active_errors)) _active_errors)
  (:status_code
   (&optional __status_code)
   (if __status_code (setq _status_code __status_code)) _status_code)
  (:active_status
   (&optional __active_status)
   (if __active_status (setq _active_status __active_status)) _active_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _serial_number
    4
    ;; uint64 _raw_timestamp
    8
    ;; uint16 _modes_code
    2
    ;; string _active_modes
    4 (length _active_modes)
    ;; uint16 _warnings_code
    2
    ;; string _active_warnings
    4 (length _active_warnings)
    ;; uint32 _errors_code
    4
    ;; string _active_errors
    4 (length _active_errors)
    ;; uint8 _status_code
    1
    ;; string _active_status
    4 (length _active_status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _serial_number
       (write-long _serial_number s)
     ;; uint64 _raw_timestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _raw_timestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _raw_timestamp) (= (length (_raw_timestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_raw_timestamp . bv) 0) 0) s)
              (write-long (ash (elt (_raw_timestamp . bv) 1) -1) s))
             ((and (class _raw_timestamp) (= (length (_raw_timestamp . bv)) 1)) ;; big1
              (write-long (elt (_raw_timestamp . bv) 0) s)
              (write-long (if (>= _raw_timestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _raw_timestamp s)(write-long (if (>= _raw_timestamp 0) 0 #xffffffff) s)))
     ;; uint16 _modes_code
       (write-word _modes_code s)
     ;; string _active_modes
       (write-long (length _active_modes) s) (princ _active_modes s)
     ;; uint16 _warnings_code
       (write-word _warnings_code s)
     ;; string _active_warnings
       (write-long (length _active_warnings) s) (princ _active_warnings s)
     ;; uint32 _errors_code
       (write-long _errors_code s)
     ;; string _active_errors
       (write-long (length _active_errors) s) (princ _active_errors s)
     ;; uint8 _status_code
       (write-byte _status_code s)
     ;; string _active_status
       (write-long (length _active_status) s) (princ _active_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _serial_number
     (setq _serial_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _raw_timestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _raw_timestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _raw_timestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint16 _modes_code
     (setq _modes_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _active_modes
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_modes (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _warnings_code
     (setq _warnings_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _active_warnings
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_warnings (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _errors_code
     (setq _errors_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _active_errors
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_errors (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _status_code
     (setq _status_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _active_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get accerion_driver_msgs::SensorDiagnostics :md5sum-) "c4e775bb96850e70d26b61240e99cf8a")
(setf (get accerion_driver_msgs::SensorDiagnostics :datatype-) "accerion_driver_msgs/SensorDiagnostics")
(setf (get accerion_driver_msgs::SensorDiagnostics :definition-)
      "Header header           

uint32 serial_number
uint64 raw_timestamp

uint16 modes_code
string active_modes

uint16 warnings_code
string active_warnings

uint32 errors_code
string active_errors

uint8 status_code
string active_status


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :accerion_driver_msgs/SensorDiagnostics "c4e775bb96850e70d26b61240e99cf8a")


