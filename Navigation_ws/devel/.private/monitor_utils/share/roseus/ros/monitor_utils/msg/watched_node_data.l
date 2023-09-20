;; Auto-generated. Do not edit!


(when (boundp 'monitor_utils::watched_node_data)
  (if (not (find-package "MONITOR_UTILS"))
    (make-package "MONITOR_UTILS"))
  (shadow 'watched_node_data (find-package "MONITOR_UTILS")))
(unless (find-package "MONITOR_UTILS::WATCHED_NODE_DATA")
  (make-package "MONITOR_UTILS::WATCHED_NODE_DATA"))

(in-package "ROS")
;;//! \htmlinclude watched_node_data.msg.html


(defclass monitor_utils::watched_node_data
  :super ros::object
  :slots (_sequence _name _watch_rate _startup_duration _PID _instantiation_time _watched_topics _is_alive _is_hung _is_publishing _reboot_on_hang _reboot_on_death _reboot_on_publish_timeout _reboot_count _launch_script ))

(defmethod monitor_utils::watched_node_data
  (:init
   (&key
    ((:sequence __sequence) 0)
    ((:name __name) "")
    ((:watch_rate __watch_rate) 0)
    ((:startup_duration __startup_duration) 0)
    ((:PID __PID) 0)
    ((:instantiation_time __instantiation_time) 0.0)
    ((:watched_topics __watched_topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:is_alive __is_alive) nil)
    ((:is_hung __is_hung) nil)
    ((:is_publishing __is_publishing) nil)
    ((:reboot_on_hang __reboot_on_hang) nil)
    ((:reboot_on_death __reboot_on_death) nil)
    ((:reboot_on_publish_timeout __reboot_on_publish_timeout) nil)
    ((:reboot_count __reboot_count) 0)
    ((:launch_script __launch_script) "")
    )
   (send-super :init)
   (setq _sequence (round __sequence))
   (setq _name (string __name))
   (setq _watch_rate (round __watch_rate))
   (setq _startup_duration (round __startup_duration))
   (setq _PID (round __PID))
   (setq _instantiation_time (float __instantiation_time))
   (setq _watched_topics __watched_topics)
   (setq _is_alive __is_alive)
   (setq _is_hung __is_hung)
   (setq _is_publishing __is_publishing)
   (setq _reboot_on_hang __reboot_on_hang)
   (setq _reboot_on_death __reboot_on_death)
   (setq _reboot_on_publish_timeout __reboot_on_publish_timeout)
   (setq _reboot_count (round __reboot_count))
   (setq _launch_script (string __launch_script))
   self)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:watch_rate
   (&optional __watch_rate)
   (if __watch_rate (setq _watch_rate __watch_rate)) _watch_rate)
  (:startup_duration
   (&optional __startup_duration)
   (if __startup_duration (setq _startup_duration __startup_duration)) _startup_duration)
  (:PID
   (&optional __PID)
   (if __PID (setq _PID __PID)) _PID)
  (:instantiation_time
   (&optional __instantiation_time)
   (if __instantiation_time (setq _instantiation_time __instantiation_time)) _instantiation_time)
  (:watched_topics
   (&optional __watched_topics)
   (if __watched_topics (setq _watched_topics __watched_topics)) _watched_topics)
  (:is_alive
   (&optional __is_alive)
   (if __is_alive (setq _is_alive __is_alive)) _is_alive)
  (:is_hung
   (&optional __is_hung)
   (if __is_hung (setq _is_hung __is_hung)) _is_hung)
  (:is_publishing
   (&optional __is_publishing)
   (if __is_publishing (setq _is_publishing __is_publishing)) _is_publishing)
  (:reboot_on_hang
   (&optional __reboot_on_hang)
   (if __reboot_on_hang (setq _reboot_on_hang __reboot_on_hang)) _reboot_on_hang)
  (:reboot_on_death
   (&optional __reboot_on_death)
   (if __reboot_on_death (setq _reboot_on_death __reboot_on_death)) _reboot_on_death)
  (:reboot_on_publish_timeout
   (&optional __reboot_on_publish_timeout)
   (if __reboot_on_publish_timeout (setq _reboot_on_publish_timeout __reboot_on_publish_timeout)) _reboot_on_publish_timeout)
  (:reboot_count
   (&optional __reboot_count)
   (if __reboot_count (setq _reboot_count __reboot_count)) _reboot_count)
  (:launch_script
   (&optional __launch_script)
   (if __launch_script (setq _launch_script __launch_script)) _launch_script)
  (:serialization-length
   ()
   (+
    ;; int64 _sequence
    8
    ;; string _name
    4 (length _name)
    ;; int32 _watch_rate
    4
    ;; int32 _startup_duration
    4
    ;; int32 _PID
    4
    ;; float64 _instantiation_time
    8
    ;; string[] _watched_topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _watched_topics)) 4
    ;; bool _is_alive
    1
    ;; bool _is_hung
    1
    ;; bool _is_publishing
    1
    ;; bool _reboot_on_hang
    1
    ;; bool _reboot_on_death
    1
    ;; bool _reboot_on_publish_timeout
    1
    ;; int32 _reboot_count
    4
    ;; string _launch_script
    4 (length _launch_script)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sequence
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sequence (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sequence) (= (length (_sequence . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sequence . bv) 0) 0) s)
              (write-long (ash (elt (_sequence . bv) 1) -1) s))
             ((and (class _sequence) (= (length (_sequence . bv)) 1)) ;; big1
              (write-long (elt (_sequence . bv) 0) s)
              (write-long (if (>= _sequence 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sequence s)(write-long (if (>= _sequence 0) 0 #xffffffff) s)))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _watch_rate
       (write-long _watch_rate s)
     ;; int32 _startup_duration
       (write-long _startup_duration s)
     ;; int32 _PID
       (write-long _PID s)
     ;; float64 _instantiation_time
       (sys::poke _instantiation_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _watched_topics
     (write-long (length _watched_topics) s)
     (dolist (elem _watched_topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _is_alive
       (if _is_alive (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_hung
       (if _is_hung (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_publishing
       (if _is_publishing (write-byte -1 s) (write-byte 0 s))
     ;; bool _reboot_on_hang
       (if _reboot_on_hang (write-byte -1 s) (write-byte 0 s))
     ;; bool _reboot_on_death
       (if _reboot_on_death (write-byte -1 s) (write-byte 0 s))
     ;; bool _reboot_on_publish_timeout
       (if _reboot_on_publish_timeout (write-byte -1 s) (write-byte 0 s))
     ;; int32 _reboot_count
       (write-long _reboot_count s)
     ;; string _launch_script
       (write-long (length _launch_script) s) (princ _launch_script s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sequence
#+(or :alpha :irix6 :x86_64)
      (setf _sequence (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sequence (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _watch_rate
     (setq _watch_rate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _startup_duration
     (setq _startup_duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _PID
     (setq _PID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _instantiation_time
     (setq _instantiation_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _watched_topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _watched_topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _watched_topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _is_alive
     (setq _is_alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_hung
     (setq _is_hung (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_publishing
     (setq _is_publishing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reboot_on_hang
     (setq _reboot_on_hang (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reboot_on_death
     (setq _reboot_on_death (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reboot_on_publish_timeout
     (setq _reboot_on_publish_timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _reboot_count
     (setq _reboot_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _launch_script
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _launch_script (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get monitor_utils::watched_node_data :md5sum-) "81c3123a2ea294b2971a0476e03b9bf8")
(setf (get monitor_utils::watched_node_data :datatype-) "monitor_utils/watched_node_data")
(setf (get monitor_utils::watched_node_data :definition-)
      "int64 sequence
string name
int32 watch_rate
int32 startup_duration
int32 PID
float64 instantiation_time
string[] watched_topics
bool is_alive
bool is_hung
bool is_publishing
bool reboot_on_hang
bool reboot_on_death
bool reboot_on_publish_timeout
int32 reboot_count
string launch_script


")



(provide :monitor_utils/watched_node_data "81c3123a2ea294b2971a0476e03b9bf8")


