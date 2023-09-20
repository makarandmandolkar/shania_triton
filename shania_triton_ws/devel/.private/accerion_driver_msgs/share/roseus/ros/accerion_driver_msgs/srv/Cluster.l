;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::Cluster)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'Cluster (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::CLUSTER")
  (make-package "ACCERION_DRIVER_MSGS::CLUSTER"))
(unless (find-package "ACCERION_DRIVER_MSGS::CLUSTERREQUEST")
  (make-package "ACCERION_DRIVER_MSGS::CLUSTERREQUEST"))
(unless (find-package "ACCERION_DRIVER_MSGS::CLUSTERRESPONSE")
  (make-package "ACCERION_DRIVER_MSGS::CLUSTERRESPONSE"))

(in-package "ROS")





(defclass accerion_driver_msgs::ClusterRequest
  :super ros::object
  :slots (_cluster_id ))

(defmethod accerion_driver_msgs::ClusterRequest
  (:init
   (&key
    ((:cluster_id __cluster_id) 0)
    )
   (send-super :init)
   (setq _cluster_id (round __cluster_id))
   self)
  (:cluster_id
   (&optional __cluster_id)
   (if __cluster_id (setq _cluster_id __cluster_id)) _cluster_id)
  (:serialization-length
   ()
   (+
    ;; int32 _cluster_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cluster_id
       (write-long _cluster_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cluster_id
     (setq _cluster_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass accerion_driver_msgs::ClusterResponse
  :super ros::object
  :slots (_success _message ))

(defmethod accerion_driver_msgs::ClusterResponse
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

(defclass accerion_driver_msgs::Cluster
  :super ros::object
  :slots ())

(setf (get accerion_driver_msgs::Cluster :md5sum-) "187efee1840e64e37ab1b85788d1aa4c")
(setf (get accerion_driver_msgs::Cluster :datatype-) "accerion_driver_msgs/Cluster")
(setf (get accerion_driver_msgs::Cluster :request) accerion_driver_msgs::ClusterRequest)
(setf (get accerion_driver_msgs::Cluster :response) accerion_driver_msgs::ClusterResponse)

(defmethod accerion_driver_msgs::ClusterRequest
  (:response () (instance accerion_driver_msgs::ClusterResponse :init)))

(setf (get accerion_driver_msgs::ClusterRequest :md5sum-) "187efee1840e64e37ab1b85788d1aa4c")
(setf (get accerion_driver_msgs::ClusterRequest :datatype-) "accerion_driver_msgs/ClusterRequest")
(setf (get accerion_driver_msgs::ClusterRequest :definition-)
      "int32 cluster_id			# specify the cluster id. This can be used at the start of mapping, line following mode, cluster deletion etc.
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")

(setf (get accerion_driver_msgs::ClusterResponse :md5sum-) "187efee1840e64e37ab1b85788d1aa4c")
(setf (get accerion_driver_msgs::ClusterResponse :datatype-) "accerion_driver_msgs/ClusterResponse")
(setf (get accerion_driver_msgs::ClusterResponse :definition-)
      "int32 cluster_id			# specify the cluster id. This can be used at the start of mapping, line following mode, cluster deletion etc.
---
bool success   				# indicate successful run of triggered service
string message 				# informational, e.g. for error messages
")



(provide :accerion_driver_msgs/Cluster "187efee1840e64e37ab1b85788d1aa4c")


