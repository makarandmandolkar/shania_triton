;; Auto-generated. Do not edit!


(when (boundp 'fuse_navigation_msgs::TaskAction)
  (if (not (find-package "FUSE_NAVIGATION_MSGS"))
    (make-package "FUSE_NAVIGATION_MSGS"))
  (shadow 'TaskAction (find-package "FUSE_NAVIGATION_MSGS")))
(unless (find-package "FUSE_NAVIGATION_MSGS::TASKACTION")
  (make-package "FUSE_NAVIGATION_MSGS::TASKACTION"))

(in-package "ROS")
;;//! \htmlinclude TaskAction.msg.html


(defclass fuse_navigation_msgs::TaskAction
  :super ros::object
  :slots (_name _arguments ))

(defmethod fuse_navigation_msgs::TaskAction
  (:init
   (&key
    ((:name __name) "")
    ((:arguments __arguments) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _arguments __arguments)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:arguments
   (&optional __arguments)
   (if __arguments (setq _arguments __arguments)) _arguments)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string[] _arguments
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _arguments)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _arguments
     (write-long (length _arguments) s)
     (dolist (elem _arguments)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _arguments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arguments (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _arguments i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get fuse_navigation_msgs::TaskAction :md5sum-) "c435bb0ff50e10a641eea4b6379dd80a")
(setf (get fuse_navigation_msgs::TaskAction :datatype-) "fuse_navigation_msgs/TaskAction")
(setf (get fuse_navigation_msgs::TaskAction :definition-)
      "# Represents an action as part of a larger agent task
string name
string[] arguments
")



(provide :fuse_navigation_msgs/TaskAction "c435bb0ff50e10a641eea4b6379dd80a")


