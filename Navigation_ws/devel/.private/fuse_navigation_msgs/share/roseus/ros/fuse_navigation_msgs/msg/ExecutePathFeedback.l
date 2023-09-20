;; Auto-generated. Do not edit!


(when (boundp 'fuse_navigation_msgs::ExecutePathFeedback)
  (if (not (find-package "FUSE_NAVIGATION_MSGS"))
    (make-package "FUSE_NAVIGATION_MSGS"))
  (shadow 'ExecutePathFeedback (find-package "FUSE_NAVIGATION_MSGS")))
(unless (find-package "FUSE_NAVIGATION_MSGS::EXECUTEPATHFEEDBACK")
  (make-package "FUSE_NAVIGATION_MSGS::EXECUTEPATHFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ExecutePathFeedback.msg.html


(defclass fuse_navigation_msgs::ExecutePathFeedback
  :super ros::object
  :slots (_status _completed_nodes _remaining_nodes _percent_complete _distance_to_end _distance_to_next_node ))

(defmethod fuse_navigation_msgs::ExecutePathFeedback
  (:init
   (&key
    ((:status __status) "")
    ((:completed_nodes __completed_nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:remaining_nodes __remaining_nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:percent_complete __percent_complete) 0.0)
    ((:distance_to_end __distance_to_end) 0.0)
    ((:distance_to_next_node __distance_to_next_node) 0.0)
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _completed_nodes __completed_nodes)
   (setq _remaining_nodes __remaining_nodes)
   (setq _percent_complete (float __percent_complete))
   (setq _distance_to_end (float __distance_to_end))
   (setq _distance_to_next_node (float __distance_to_next_node))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:completed_nodes
   (&optional __completed_nodes)
   (if __completed_nodes (setq _completed_nodes __completed_nodes)) _completed_nodes)
  (:remaining_nodes
   (&optional __remaining_nodes)
   (if __remaining_nodes (setq _remaining_nodes __remaining_nodes)) _remaining_nodes)
  (:percent_complete
   (&optional __percent_complete)
   (if __percent_complete (setq _percent_complete __percent_complete)) _percent_complete)
  (:distance_to_end
   (&optional __distance_to_end)
   (if __distance_to_end (setq _distance_to_end __distance_to_end)) _distance_to_end)
  (:distance_to_next_node
   (&optional __distance_to_next_node)
   (if __distance_to_next_node (setq _distance_to_next_node __distance_to_next_node)) _distance_to_next_node)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; string[] _completed_nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _completed_nodes)) 4
    ;; string[] _remaining_nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _remaining_nodes)) 4
    ;; float64 _percent_complete
    8
    ;; float64 _distance_to_end
    8
    ;; float64 _distance_to_next_node
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string[] _completed_nodes
     (write-long (length _completed_nodes) s)
     (dolist (elem _completed_nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _remaining_nodes
     (write-long (length _remaining_nodes) s)
     (dolist (elem _remaining_nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64 _percent_complete
       (sys::poke _percent_complete (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_to_end
       (sys::poke _distance_to_end (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_to_next_node
       (sys::poke _distance_to_next_node (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _completed_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _completed_nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _completed_nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _remaining_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remaining_nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _remaining_nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64 _percent_complete
     (setq _percent_complete (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_to_end
     (setq _distance_to_end (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_to_next_node
     (setq _distance_to_next_node (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fuse_navigation_msgs::ExecutePathFeedback :md5sum-) "9a7ee1c7269b2a6d4a5cae7a717b3329")
(setf (get fuse_navigation_msgs::ExecutePathFeedback :datatype-) "fuse_navigation_msgs/ExecutePathFeedback")
(setf (get fuse_navigation_msgs::ExecutePathFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback
string status
string[] completed_nodes # List of the completed node ids
string[] remaining_nodes # List of the nodes that have not yet been completed
float64 percent_complete # Percent of the full path distance that has been traversed (0-100)
float64 distance_to_end  # Distance in meters (along path) to the end of the path
float64 distance_to_next_node # Distance in meters (along path) to the next node

")



(provide :fuse_navigation_msgs/ExecutePathFeedback "9a7ee1c7269b2a6d4a5cae7a717b3329")


