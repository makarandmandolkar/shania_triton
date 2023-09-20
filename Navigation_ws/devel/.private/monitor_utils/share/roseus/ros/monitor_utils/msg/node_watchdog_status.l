;; Auto-generated. Do not edit!


(when (boundp 'monitor_utils::node_watchdog_status)
  (if (not (find-package "MONITOR_UTILS"))
    (make-package "MONITOR_UTILS"))
  (shadow 'node_watchdog_status (find-package "MONITOR_UTILS")))
(unless (find-package "MONITOR_UTILS::NODE_WATCHDOG_STATUS")
  (make-package "MONITOR_UTILS::NODE_WATCHDOG_STATUS"))

(in-package "ROS")
;;//! \htmlinclude node_watchdog_status.msg.html


(defclass monitor_utils::node_watchdog_status
  :super ros::object
  :slots (_sequence _my_node_name _ros_master_uri _is_ros_master_connected _watched_nodes _watch_rate _ping_rate ))

(defmethod monitor_utils::node_watchdog_status
  (:init
   (&key
    ((:sequence __sequence) 0)
    ((:my_node_name __my_node_name) "")
    ((:ros_master_uri __ros_master_uri) "")
    ((:is_ros_master_connected __is_ros_master_connected) nil)
    ((:watched_nodes __watched_nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:watch_rate __watch_rate) 0)
    ((:ping_rate __ping_rate) 0)
    )
   (send-super :init)
   (setq _sequence (round __sequence))
   (setq _my_node_name (string __my_node_name))
   (setq _ros_master_uri (string __ros_master_uri))
   (setq _is_ros_master_connected __is_ros_master_connected)
   (setq _watched_nodes __watched_nodes)
   (setq _watch_rate (round __watch_rate))
   (setq _ping_rate (round __ping_rate))
   self)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:my_node_name
   (&optional __my_node_name)
   (if __my_node_name (setq _my_node_name __my_node_name)) _my_node_name)
  (:ros_master_uri
   (&optional __ros_master_uri)
   (if __ros_master_uri (setq _ros_master_uri __ros_master_uri)) _ros_master_uri)
  (:is_ros_master_connected
   (&optional __is_ros_master_connected)
   (if __is_ros_master_connected (setq _is_ros_master_connected __is_ros_master_connected)) _is_ros_master_connected)
  (:watched_nodes
   (&optional __watched_nodes)
   (if __watched_nodes (setq _watched_nodes __watched_nodes)) _watched_nodes)
  (:watch_rate
   (&optional __watch_rate)
   (if __watch_rate (setq _watch_rate __watch_rate)) _watch_rate)
  (:ping_rate
   (&optional __ping_rate)
   (if __ping_rate (setq _ping_rate __ping_rate)) _ping_rate)
  (:serialization-length
   ()
   (+
    ;; int32 _sequence
    4
    ;; string _my_node_name
    4 (length _my_node_name)
    ;; string _ros_master_uri
    4 (length _ros_master_uri)
    ;; bool _is_ros_master_connected
    1
    ;; string[] _watched_nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _watched_nodes)) 4
    ;; int32 _watch_rate
    4
    ;; int32 _ping_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sequence
       (write-long _sequence s)
     ;; string _my_node_name
       (write-long (length _my_node_name) s) (princ _my_node_name s)
     ;; string _ros_master_uri
       (write-long (length _ros_master_uri) s) (princ _ros_master_uri s)
     ;; bool _is_ros_master_connected
       (if _is_ros_master_connected (write-byte -1 s) (write-byte 0 s))
     ;; string[] _watched_nodes
     (write-long (length _watched_nodes) s)
     (dolist (elem _watched_nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32 _watch_rate
       (write-long _watch_rate s)
     ;; int32 _ping_rate
       (write-long _ping_rate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sequence
     (setq _sequence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _my_node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _my_node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ros_master_uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ros_master_uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_ros_master_connected
     (setq _is_ros_master_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _watched_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _watched_nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _watched_nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32 _watch_rate
     (setq _watch_rate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ping_rate
     (setq _ping_rate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get monitor_utils::node_watchdog_status :md5sum-) "b5b891ace9dd6aa5540bc71f15a96b40")
(setf (get monitor_utils::node_watchdog_status :datatype-) "monitor_utils/node_watchdog_status")
(setf (get monitor_utils::node_watchdog_status :definition-)
      "int32 sequence
string my_node_name
string ros_master_uri
bool is_ros_master_connected
string[] watched_nodes
int32 watch_rate
int32 ping_rate
")



(provide :monitor_utils/node_watchdog_status "b5b891ace9dd6aa5540bc71f15a96b40")


