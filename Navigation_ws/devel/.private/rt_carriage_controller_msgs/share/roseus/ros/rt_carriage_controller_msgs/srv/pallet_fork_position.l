;; Auto-generated. Do not edit!


(when (boundp 'rt_carriage_controller_msgs::pallet_fork_position)
  (if (not (find-package "RT_CARRIAGE_CONTROLLER_MSGS"))
    (make-package "RT_CARRIAGE_CONTROLLER_MSGS"))
  (shadow 'pallet_fork_position (find-package "RT_CARRIAGE_CONTROLLER_MSGS")))
(unless (find-package "RT_CARRIAGE_CONTROLLER_MSGS::PALLET_FORK_POSITION")
  (make-package "RT_CARRIAGE_CONTROLLER_MSGS::PALLET_FORK_POSITION"))
(unless (find-package "RT_CARRIAGE_CONTROLLER_MSGS::PALLET_FORK_POSITIONREQUEST")
  (make-package "RT_CARRIAGE_CONTROLLER_MSGS::PALLET_FORK_POSITIONREQUEST"))
(unless (find-package "RT_CARRIAGE_CONTROLLER_MSGS::PALLET_FORK_POSITIONRESPONSE")
  (make-package "RT_CARRIAGE_CONTROLLER_MSGS::PALLET_FORK_POSITIONRESPONSE"))

(in-package "ROS")





(defclass rt_carriage_controller_msgs::pallet_fork_positionRequest
  :super ros::object
  :slots ())

(defmethod rt_carriage_controller_msgs::pallet_fork_positionRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rt_carriage_controller_msgs::pallet_fork_positionResponse
  :super ros::object
  :slots (_offset _palletOnFork ))

(defmethod rt_carriage_controller_msgs::pallet_fork_positionResponse
  (:init
   (&key
    ((:offset __offset) 0.0)
    ((:palletOnFork __palletOnFork) nil)
    )
   (send-super :init)
   (setq _offset (float __offset))
   (setq _palletOnFork __palletOnFork)
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:palletOnFork
   (&optional __palletOnFork)
   (if __palletOnFork (setq _palletOnFork __palletOnFork)) _palletOnFork)
  (:serialization-length
   ()
   (+
    ;; float32 _offset
    4
    ;; bool _palletOnFork
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _palletOnFork
       (if _palletOnFork (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _palletOnFork
     (setq _palletOnFork (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rt_carriage_controller_msgs::pallet_fork_position
  :super ros::object
  :slots ())

(setf (get rt_carriage_controller_msgs::pallet_fork_position :md5sum-) "28a2169120952b9ccef27ea2cdcbc4e5")
(setf (get rt_carriage_controller_msgs::pallet_fork_position :datatype-) "rt_carriage_controller_msgs/pallet_fork_position")
(setf (get rt_carriage_controller_msgs::pallet_fork_position :request) rt_carriage_controller_msgs::pallet_fork_positionRequest)
(setf (get rt_carriage_controller_msgs::pallet_fork_position :response) rt_carriage_controller_msgs::pallet_fork_positionResponse)

(defmethod rt_carriage_controller_msgs::pallet_fork_positionRequest
  (:response () (instance rt_carriage_controller_msgs::pallet_fork_positionResponse :init)))

(setf (get rt_carriage_controller_msgs::pallet_fork_positionRequest :md5sum-) "28a2169120952b9ccef27ea2cdcbc4e5")
(setf (get rt_carriage_controller_msgs::pallet_fork_positionRequest :datatype-) "rt_carriage_controller_msgs/pallet_fork_positionRequest")
(setf (get rt_carriage_controller_msgs::pallet_fork_positionRequest :definition-)
      "---
float32 offset
bool palletOnFork

")

(setf (get rt_carriage_controller_msgs::pallet_fork_positionResponse :md5sum-) "28a2169120952b9ccef27ea2cdcbc4e5")
(setf (get rt_carriage_controller_msgs::pallet_fork_positionResponse :datatype-) "rt_carriage_controller_msgs/pallet_fork_positionResponse")
(setf (get rt_carriage_controller_msgs::pallet_fork_positionResponse :definition-)
      "---
float32 offset
bool palletOnFork

")



(provide :rt_carriage_controller_msgs/pallet_fork_position "28a2169120952b9ccef27ea2cdcbc4e5")


