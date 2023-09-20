;; Auto-generated. Do not edit!


(when (boundp 'fuse_pathfollowing_msgs::PIDMetrics)
  (if (not (find-package "FUSE_PATHFOLLOWING_MSGS"))
    (make-package "FUSE_PATHFOLLOWING_MSGS"))
  (shadow 'PIDMetrics (find-package "FUSE_PATHFOLLOWING_MSGS")))
(unless (find-package "FUSE_PATHFOLLOWING_MSGS::PIDMETRICS")
  (make-package "FUSE_PATHFOLLOWING_MSGS::PIDMETRICS"))

(in-package "ROS")
;;//! \htmlinclude PIDMetrics.msg.html


(defclass fuse_pathfollowing_msgs::PIDMetrics
  :super ros::object
  :slots (_p_effort _i_effort _d_effort _total_effort ))

(defmethod fuse_pathfollowing_msgs::PIDMetrics
  (:init
   (&key
    ((:p_effort __p_effort) 0.0)
    ((:i_effort __i_effort) 0.0)
    ((:d_effort __d_effort) 0.0)
    ((:total_effort __total_effort) 0.0)
    )
   (send-super :init)
   (setq _p_effort (float __p_effort))
   (setq _i_effort (float __i_effort))
   (setq _d_effort (float __d_effort))
   (setq _total_effort (float __total_effort))
   self)
  (:p_effort
   (&optional __p_effort)
   (if __p_effort (setq _p_effort __p_effort)) _p_effort)
  (:i_effort
   (&optional __i_effort)
   (if __i_effort (setq _i_effort __i_effort)) _i_effort)
  (:d_effort
   (&optional __d_effort)
   (if __d_effort (setq _d_effort __d_effort)) _d_effort)
  (:total_effort
   (&optional __total_effort)
   (if __total_effort (setq _total_effort __total_effort)) _total_effort)
  (:serialization-length
   ()
   (+
    ;; float64 _p_effort
    8
    ;; float64 _i_effort
    8
    ;; float64 _d_effort
    8
    ;; float64 _total_effort
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _p_effort
       (sys::poke _p_effort (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _i_effort
       (sys::poke _i_effort (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d_effort
       (sys::poke _d_effort (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_effort
       (sys::poke _total_effort (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _p_effort
     (setq _p_effort (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _i_effort
     (setq _i_effort (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d_effort
     (setq _d_effort (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_effort
     (setq _total_effort (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fuse_pathfollowing_msgs::PIDMetrics :md5sum-) "b5f1ade5268ff3fd49169efd23b304bd")
(setf (get fuse_pathfollowing_msgs::PIDMetrics :datatype-) "fuse_pathfollowing_msgs/PIDMetrics")
(setf (get fuse_pathfollowing_msgs::PIDMetrics :definition-)
      "float64 p_effort
float64 i_effort
float64 d_effort
float64 total_effort
")



(provide :fuse_pathfollowing_msgs/PIDMetrics "b5f1ade5268ff3fd49169efd23b304bd")


