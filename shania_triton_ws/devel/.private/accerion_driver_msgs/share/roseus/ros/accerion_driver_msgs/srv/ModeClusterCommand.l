;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::ModeClusterCommand)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'ModeClusterCommand (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::MODECLUSTERCOMMAND")
  (make-package "ACCERION_DRIVER_MSGS::MODECLUSTERCOMMAND"))
(unless (find-package "ACCERION_DRIVER_MSGS::MODECLUSTERCOMMANDREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::MODECLUSTERCOMMANDREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::MODECLUSTERCOMMANDRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::MODECLUSTERCOMMANDRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::ModeClusterCommandRequest
  :super ros::object
  :slots (_mode _cluster_id _command ))

(defmethod accerion_driver_msgs::ModeClusterCommandRequest
  (:init
   (&key
    ((:mode __mode) "")
    ((:cluster_id __cluster_id) 0)
    ((:command __command) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _cluster_id (round __cluster_id))
   (setq _command (string __command))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:cluster_id
   (&optional __cluster_id)
   (if __cluster_id (setq _cluster_id __cluster_id)) _cluster_id)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; int32 _cluster_id
    4
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; int32 _cluster_id
       (write-long _cluster_id s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _cluster_id
     (setq _cluster_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass accerion_driver_msgs::ModeClusterCommandResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::ModeClusterCommandResponse
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

(defclass accerion_driver_msgs::ModeClusterCommand
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::ModeClusterCommand :md5sum-) "d1a13bdeb427203b52a0cb8459e490cc")
(setf (get accerion_driver_msgs::ModeClusterCommand :datatype-) "accerion_driver_msgs/ModeClusterCommand")
(setf (get accerion_driver_msgs::ModeClusterCommand :request) accerion_driver_msgs::ModeClusterCommandRequest)
(setf (get accerion_driver_msgs::ModeClusterCommand :response) accerion_driver_msgs::ModeClusterCommandResponse)

(defmethod accerion_driver_msgs::ModeClusterCommandRequest
  (:response () (instance accerion_driver_msgs::ModeClusterCommandResponse :init)))

(setf (get accerion_driver_msgs::ModeClusterCommandRequest :md5sum-) "d1a13bdeb427203b52a0cb8459e490cc")
(setf (get accerion_driver_msgs::ModeClusterCommandRequest :datatype-) "accerion_driver_msgs/ModeClusterCommandRequest")
(setf (get accerion_driver_msgs::ModeClusterCommandRequest :definition-)
      "string mode                 # [mapping, active_mapping, line_following]
int32 cluster_id			# specify the cluster id. This can be used at the start of mapping, line following mode etc
string command              # [start, stop] the desired mode
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::ModeClusterCommandResponse :md5sum-) "d1a13bdeb427203b52a0cb8459e490cc")
(setf (get accerion_driver_msgs::ModeClusterCommandResponse :datatype-) "accerion_driver_msgs/ModeClusterCommandResponse")
(setf (get accerion_driver_msgs::ModeClusterCommandResponse :definition-)
      "string mode                 # [mapping, active_mapping, line_following]
int32 cluster_id			# specify the cluster id. This can be used at the start of mapping, line following mode etc
string command              # [start, stop] the desired mode
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/ModeClusterCommand "d1a13bdeb427203b52a0cb8459e490cc")


