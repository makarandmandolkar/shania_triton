;; Auto-generated. Do not edit!


(when (boundp 'monitor_utils::node_watchdog_service)
  (if (not (find-package "MONITOR_UTILS"))
    (make-package "MONITOR_UTILS"))
  (shadow 'node_watchdog_service (find-package "MONITOR_UTILS")))
(unless (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICE")
  (make-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICE"))
(unless (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST")
  (make-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST"))
(unless (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICERESPONSE")
  (make-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICERESPONSE"))

(in-package "ROS")





(intern "*COMMAND_ADD_WATCHED_NODE*" (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST"))
(shadow '*COMMAND_ADD_WATCHED_NODE* (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST"))
(defconstant monitor_utils::node_watchdog_serviceRequest::*COMMAND_ADD_WATCHED_NODE* 1)
(intern "*COMMAND_REMOVE_WATCHED_NODE*" (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST"))
(shadow '*COMMAND_REMOVE_WATCHED_NODE* (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST"))
(defconstant monitor_utils::node_watchdog_serviceRequest::*COMMAND_REMOVE_WATCHED_NODE* 2)
(intern "*COMMAND_KILL_WATCHED_NODE*" (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST"))
(shadow '*COMMAND_KILL_WATCHED_NODE* (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST"))
(defconstant monitor_utils::node_watchdog_serviceRequest::*COMMAND_KILL_WATCHED_NODE* 3)
(intern "*COMMAND_LAUNCH_WATCHED_NODE*" (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST"))
(shadow '*COMMAND_LAUNCH_WATCHED_NODE* (find-package "MONITOR_UTILS::NODE_WATCHDOG_SERVICEREQUEST"))
(defconstant monitor_utils::node_watchdog_serviceRequest::*COMMAND_LAUNCH_WATCHED_NODE* 4)
(defclass monitor_utils::node_watchdog_serviceRequest
  :super ros::object
  :slots (_node_name _command_type_enum _watch_rate _startup_duration _watched_topics_timeout _watched_topics _reboot_on_hang _reboot_on_death _reboot_on_publish_timeout _launch_script ))

(defmethod monitor_utils::node_watchdog_serviceRequest
  (:init
   (&key
    ((:node_name __node_name) "")
    ((:command_type_enum __command_type_enum) 0)
    ((:watch_rate __watch_rate) 0)
    ((:startup_duration __startup_duration) 0)
    ((:watched_topics_timeout __watched_topics_timeout) 0)
    ((:watched_topics __watched_topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:reboot_on_hang __reboot_on_hang) nil)
    ((:reboot_on_death __reboot_on_death) nil)
    ((:reboot_on_publish_timeout __reboot_on_publish_timeout) nil)
    ((:launch_script __launch_script) "")
    )
   (send-super :init)
   (setq _node_name (string __node_name))
   (setq _command_type_enum (round __command_type_enum))
   (setq _watch_rate (round __watch_rate))
   (setq _startup_duration (round __startup_duration))
   (setq _watched_topics_timeout (round __watched_topics_timeout))
   (setq _watched_topics __watched_topics)
   (setq _reboot_on_hang __reboot_on_hang)
   (setq _reboot_on_death __reboot_on_death)
   (setq _reboot_on_publish_timeout __reboot_on_publish_timeout)
   (setq _launch_script (string __launch_script))
   self)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:command_type_enum
   (&optional __command_type_enum)
   (if __command_type_enum (setq _command_type_enum __command_type_enum)) _command_type_enum)
  (:watch_rate
   (&optional __watch_rate)
   (if __watch_rate (setq _watch_rate __watch_rate)) _watch_rate)
  (:startup_duration
   (&optional __startup_duration)
   (if __startup_duration (setq _startup_duration __startup_duration)) _startup_duration)
  (:watched_topics_timeout
   (&optional __watched_topics_timeout)
   (if __watched_topics_timeout (setq _watched_topics_timeout __watched_topics_timeout)) _watched_topics_timeout)
  (:watched_topics
   (&optional __watched_topics)
   (if __watched_topics (setq _watched_topics __watched_topics)) _watched_topics)
  (:reboot_on_hang
   (&optional __reboot_on_hang)
   (if __reboot_on_hang (setq _reboot_on_hang __reboot_on_hang)) _reboot_on_hang)
  (:reboot_on_death
   (&optional __reboot_on_death)
   (if __reboot_on_death (setq _reboot_on_death __reboot_on_death)) _reboot_on_death)
  (:reboot_on_publish_timeout
   (&optional __reboot_on_publish_timeout)
   (if __reboot_on_publish_timeout (setq _reboot_on_publish_timeout __reboot_on_publish_timeout)) _reboot_on_publish_timeout)
  (:launch_script
   (&optional __launch_script)
   (if __launch_script (setq _launch_script __launch_script)) _launch_script)
  (:serialization-length
   ()
   (+
    ;; string _node_name
    4 (length _node_name)
    ;; int16 _command_type_enum
    2
    ;; int32 _watch_rate
    4
    ;; int32 _startup_duration
    4
    ;; int32 _watched_topics_timeout
    4
    ;; string[] _watched_topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _watched_topics)) 4
    ;; bool _reboot_on_hang
    1
    ;; bool _reboot_on_death
    1
    ;; bool _reboot_on_publish_timeout
    1
    ;; string _launch_script
    4 (length _launch_script)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;; int16 _command_type_enum
       (write-word _command_type_enum s)
     ;; int32 _watch_rate
       (write-long _watch_rate s)
     ;; int32 _startup_duration
       (write-long _startup_duration s)
     ;; int32 _watched_topics_timeout
       (write-long _watched_topics_timeout s)
     ;; string[] _watched_topics
     (write-long (length _watched_topics) s)
     (dolist (elem _watched_topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool _reboot_on_hang
       (if _reboot_on_hang (write-byte -1 s) (write-byte 0 s))
     ;; bool _reboot_on_death
       (if _reboot_on_death (write-byte -1 s) (write-byte 0 s))
     ;; bool _reboot_on_publish_timeout
       (if _reboot_on_publish_timeout (write-byte -1 s) (write-byte 0 s))
     ;; string _launch_script
       (write-long (length _launch_script) s) (princ _launch_script s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _command_type_enum
     (setq _command_type_enum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _watch_rate
     (setq _watch_rate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _startup_duration
     (setq _startup_duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _watched_topics_timeout
     (setq _watched_topics_timeout (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _watched_topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _watched_topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _watched_topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool _reboot_on_hang
     (setq _reboot_on_hang (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reboot_on_death
     (setq _reboot_on_death (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reboot_on_publish_timeout
     (setq _reboot_on_publish_timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _launch_script
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _launch_script (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass monitor_utils::node_watchdog_serviceResponse
  :super ros::object
  :slots (_success ))

(defmethod monitor_utils::node_watchdog_serviceResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass monitor_utils::node_watchdog_service
  :super ros::object
  :slots ())

(setf (get monitor_utils::node_watchdog_service :md5sum-) "966c5e764adcdb27f4f871b3066bf913")
(setf (get monitor_utils::node_watchdog_service :datatype-) "monitor_utils/node_watchdog_service")
(setf (get monitor_utils::node_watchdog_service :request) monitor_utils::node_watchdog_serviceRequest)
(setf (get monitor_utils::node_watchdog_service :response) monitor_utils::node_watchdog_serviceResponse)

(defmethod monitor_utils::node_watchdog_serviceRequest
  (:response () (instance monitor_utils::node_watchdog_serviceResponse :init)))

(setf (get monitor_utils::node_watchdog_serviceRequest :md5sum-) "966c5e764adcdb27f4f871b3066bf913")
(setf (get monitor_utils::node_watchdog_serviceRequest :datatype-) "monitor_utils/node_watchdog_serviceRequest")
(setf (get monitor_utils::node_watchdog_serviceRequest :definition-)
      "#request
string node_name
int16 COMMAND_ADD_WATCHED_NODE=1
int16 COMMAND_REMOVE_WATCHED_NODE=2
int16 COMMAND_KILL_WATCHED_NODE=3
int16 COMMAND_LAUNCH_WATCHED_NODE=4
int16 command_type_enum

# If you are adding a node, these values are used
int32 watch_rate
int32 startup_duration
int32 watched_topics_timeout
string[] watched_topics
bool reboot_on_hang
bool reboot_on_death
bool reboot_on_publish_timeout
string launch_script

---
#response
bool success
")

(setf (get monitor_utils::node_watchdog_serviceResponse :md5sum-) "966c5e764adcdb27f4f871b3066bf913")
(setf (get monitor_utils::node_watchdog_serviceResponse :datatype-) "monitor_utils/node_watchdog_serviceResponse")
(setf (get monitor_utils::node_watchdog_serviceResponse :definition-)
      "#request
string node_name
int16 COMMAND_ADD_WATCHED_NODE=1
int16 COMMAND_REMOVE_WATCHED_NODE=2
int16 COMMAND_KILL_WATCHED_NODE=3
int16 COMMAND_LAUNCH_WATCHED_NODE=4
int16 command_type_enum

# If you are adding a node, these values are used
int32 watch_rate
int32 startup_duration
int32 watched_topics_timeout
string[] watched_topics
bool reboot_on_hang
bool reboot_on_death
bool reboot_on_publish_timeout
string launch_script

---
#response
bool success
")



(provide :monitor_utils/node_watchdog_service "966c5e764adcdb27f4f871b3066bf913")


