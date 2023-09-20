;; Auto-generated. Do not edit!


(when (boundp 'accerion_driver_msgs::DriftCorrectionDetails)
  (if (not (find-package "ACCERION_DRIVER_MSGS"))
    (make-package "ACCERION_DRIVER_MSGS"))
  (shadow 'DriftCorrectionDetails (find-package "ACCERION_DRIVER_MSGS")))
(unless (find-package "ACCERION_DRIVER_MSGS::DRIFTCORRECTIONDETAILS")
  (make-package "ACCERION_DRIVER_MSGS::DRIFTCORRECTIONDETAILS"))

(in-package "ROS")
;;//! \htmlinclude DriftCorrectionDetails.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass accerion_driver_msgs::DriftCorrectionDetails
  :super ros::object
  :slots (_new_corrected_pose _correction_x _correction_y _correction_heading _error_heading_deg _correct_heading_deg _cumulative_traveled_distance _cumulative_traveled_rotation _error_percentage _cluster_id _acq_quality_estimate _reserved1 _reserved2 _reserved3 ))

(defmethod accerion_driver_msgs::DriftCorrectionDetails
  (:init
   (&key
    ((:new_corrected_pose __new_corrected_pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:correction_x __correction_x) 0.0)
    ((:correction_y __correction_y) 0.0)
    ((:correction_heading __correction_heading) 0.0)
    ((:error_heading_deg __error_heading_deg) 0.0)
    ((:correct_heading_deg __correct_heading_deg) 0.0)
    ((:cumulative_traveled_distance __cumulative_traveled_distance) 0.0)
    ((:cumulative_traveled_rotation __cumulative_traveled_rotation) 0.0)
    ((:error_percentage __error_percentage) 0.0)
    ((:cluster_id __cluster_id) 0)
    ((:acq_quality_estimate __acq_quality_estimate) 0)
    ((:reserved1 __reserved1) 0.0)
    ((:reserved2 __reserved2) 0.0)
    ((:reserved3 __reserved3) 0.0)
    )
   (send-super :init)
   (setq _new_corrected_pose __new_corrected_pose)
   (setq _correction_x (float __correction_x))
   (setq _correction_y (float __correction_y))
   (setq _correction_heading (float __correction_heading))
   (setq _error_heading_deg (float __error_heading_deg))
   (setq _correct_heading_deg (float __correct_heading_deg))
   (setq _cumulative_traveled_distance (float __cumulative_traveled_distance))
   (setq _cumulative_traveled_rotation (float __cumulative_traveled_rotation))
   (setq _error_percentage (float __error_percentage))
   (setq _cluster_id (round __cluster_id))
   (setq _acq_quality_estimate (round __acq_quality_estimate))
   (setq _reserved1 (float __reserved1))
   (setq _reserved2 (float __reserved2))
   (setq _reserved3 (float __reserved3))
   self)
  (:new_corrected_pose
   (&rest __new_corrected_pose)
   (if (keywordp (car __new_corrected_pose))
       (send* _new_corrected_pose __new_corrected_pose)
     (progn
       (if __new_corrected_pose (setq _new_corrected_pose (car __new_corrected_pose)))
       _new_corrected_pose)))
  (:correction_x
   (&optional __correction_x)
   (if __correction_x (setq _correction_x __correction_x)) _correction_x)
  (:correction_y
   (&optional __correction_y)
   (if __correction_y (setq _correction_y __correction_y)) _correction_y)
  (:correction_heading
   (&optional __correction_heading)
   (if __correction_heading (setq _correction_heading __correction_heading)) _correction_heading)
  (:error_heading_deg
   (&optional __error_heading_deg)
   (if __error_heading_deg (setq _error_heading_deg __error_heading_deg)) _error_heading_deg)
  (:correct_heading_deg
   (&optional __correct_heading_deg)
   (if __correct_heading_deg (setq _correct_heading_deg __correct_heading_deg)) _correct_heading_deg)
  (:cumulative_traveled_distance
   (&optional __cumulative_traveled_distance)
   (if __cumulative_traveled_distance (setq _cumulative_traveled_distance __cumulative_traveled_distance)) _cumulative_traveled_distance)
  (:cumulative_traveled_rotation
   (&optional __cumulative_traveled_rotation)
   (if __cumulative_traveled_rotation (setq _cumulative_traveled_rotation __cumulative_traveled_rotation)) _cumulative_traveled_rotation)
  (:error_percentage
   (&optional __error_percentage)
   (if __error_percentage (setq _error_percentage __error_percentage)) _error_percentage)
  (:cluster_id
   (&optional __cluster_id)
   (if __cluster_id (setq _cluster_id __cluster_id)) _cluster_id)
  (:acq_quality_estimate
   (&optional __acq_quality_estimate)
   (if __acq_quality_estimate (setq _acq_quality_estimate __acq_quality_estimate)) _acq_quality_estimate)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:reserved3
   (&optional __reserved3)
   (if __reserved3 (setq _reserved3 __reserved3)) _reserved3)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseWithCovariance _new_corrected_pose
    (send _new_corrected_pose :serialization-length)
    ;; float32 _correction_x
    4
    ;; float32 _correction_y
    4
    ;; float32 _correction_heading
    4
    ;; float32 _error_heading_deg
    4
    ;; float32 _correct_heading_deg
    4
    ;; float32 _cumulative_traveled_distance
    4
    ;; float32 _cumulative_traveled_rotation
    4
    ;; float32 _error_percentage
    4
    ;; uint16 _cluster_id
    2
    ;; uint8 _acq_quality_estimate
    1
    ;; float32 _reserved1
    4
    ;; float32 _reserved2
    4
    ;; float32 _reserved3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseWithCovariance _new_corrected_pose
       (send _new_corrected_pose :serialize s)
     ;; float32 _correction_x
       (sys::poke _correction_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _correction_y
       (sys::poke _correction_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _correction_heading
       (sys::poke _correction_heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _error_heading_deg
       (sys::poke _error_heading_deg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _correct_heading_deg
       (sys::poke _correct_heading_deg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cumulative_traveled_distance
       (sys::poke _cumulative_traveled_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cumulative_traveled_rotation
       (sys::poke _cumulative_traveled_rotation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _error_percentage
       (sys::poke _error_percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _cluster_id
       (write-word _cluster_id s)
     ;; uint8 _acq_quality_estimate
       (write-byte _acq_quality_estimate s)
     ;; float32 _reserved1
       (sys::poke _reserved1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved2
       (sys::poke _reserved2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved3
       (sys::poke _reserved3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseWithCovariance _new_corrected_pose
     (send _new_corrected_pose :deserialize buf ptr-) (incf ptr- (send _new_corrected_pose :serialization-length))
   ;; float32 _correction_x
     (setq _correction_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _correction_y
     (setq _correction_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _correction_heading
     (setq _correction_heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _error_heading_deg
     (setq _error_heading_deg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _correct_heading_deg
     (setq _correct_heading_deg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cumulative_traveled_distance
     (setq _cumulative_traveled_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cumulative_traveled_rotation
     (setq _cumulative_traveled_rotation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _error_percentage
     (setq _error_percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _cluster_id
     (setq _cluster_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _acq_quality_estimate
     (setq _acq_quality_estimate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved3
     (setq _reserved3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get accerion_driver_msgs::DriftCorrectionDetails :md5sum-) "6dee6f706294700ef373c89c1963dda5")
(setf (get accerion_driver_msgs::DriftCorrectionDetails :datatype-) "accerion_driver_msgs/DriftCorrectionDetails")
(setf (get accerion_driver_msgs::DriftCorrectionDetails :definition-)
      "geometry_msgs/PoseWithCovariance new_corrected_pose  # corrected pose in reference frame

float32 correction_x                    		# corrected position error [m] in +x direction in reference frame
float32 correction_y                   		    # corrected position error [m] in +y direction in reference frame
float32 correction_heading              		# corrected orientation error [rad] in +z direction in reference frame
float32 error_heading_deg                  	    # orientation error [deg] in +z direction in reference frame
float32 correct_heading_deg                 	# correct (new) orientation [deg] in +z direction in reference frame

float32 cumulative_traveled_distance     		# cumulative traveled linear distance since last drift correction
float32 cumulative_traveled_rotation     		# cumulative traveled rotational distance since last drift correction
float32 error_percentage 			   		    # (preliminary) simple positional accuracy figure
uint16   cluster_id 					   		# ID of the cluster on which the drift correction is based

uint8   acq_quality_estimate             		# quality estimate

float32 reserved1     		                    #
float32 reserved2     		                    #
float32 reserved3 			   		            #
================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :accerion_driver_msgs/DriftCorrectionDetails "6dee6f706294700ef373c89c1963dda5")


