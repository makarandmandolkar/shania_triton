; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-msg)


;//! \htmlinclude DriftCorrectionDetails.msg.html

(cl:defclass <DriftCorrectionDetails> (roslisp-msg-protocol:ros-message)
  ((new_corrected_pose
    :reader new_corrected_pose
    :initarg :new_corrected_pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (correction_x
    :reader correction_x
    :initarg :correction_x
    :type cl:float
    :initform 0.0)
   (correction_y
    :reader correction_y
    :initarg :correction_y
    :type cl:float
    :initform 0.0)
   (correction_heading
    :reader correction_heading
    :initarg :correction_heading
    :type cl:float
    :initform 0.0)
   (error_heading_deg
    :reader error_heading_deg
    :initarg :error_heading_deg
    :type cl:float
    :initform 0.0)
   (correct_heading_deg
    :reader correct_heading_deg
    :initarg :correct_heading_deg
    :type cl:float
    :initform 0.0)
   (cumulative_traveled_distance
    :reader cumulative_traveled_distance
    :initarg :cumulative_traveled_distance
    :type cl:float
    :initform 0.0)
   (cumulative_traveled_rotation
    :reader cumulative_traveled_rotation
    :initarg :cumulative_traveled_rotation
    :type cl:float
    :initform 0.0)
   (error_percentage
    :reader error_percentage
    :initarg :error_percentage
    :type cl:float
    :initform 0.0)
   (cluster_id
    :reader cluster_id
    :initarg :cluster_id
    :type cl:fixnum
    :initform 0)
   (acq_quality_estimate
    :reader acq_quality_estimate
    :initarg :acq_quality_estimate
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:float
    :initform 0.0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:float
    :initform 0.0)
   (reserved3
    :reader reserved3
    :initarg :reserved3
    :type cl:float
    :initform 0.0))
)

(cl:defclass DriftCorrectionDetails (<DriftCorrectionDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriftCorrectionDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriftCorrectionDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-msg:<DriftCorrectionDetails> is deprecated: use accerion_driver_msgs-msg:DriftCorrectionDetails instead.")))

(cl:ensure-generic-function 'new_corrected_pose-val :lambda-list '(m))
(cl:defmethod new_corrected_pose-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:new_corrected_pose-val is deprecated.  Use accerion_driver_msgs-msg:new_corrected_pose instead.")
  (new_corrected_pose m))

(cl:ensure-generic-function 'correction_x-val :lambda-list '(m))
(cl:defmethod correction_x-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:correction_x-val is deprecated.  Use accerion_driver_msgs-msg:correction_x instead.")
  (correction_x m))

(cl:ensure-generic-function 'correction_y-val :lambda-list '(m))
(cl:defmethod correction_y-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:correction_y-val is deprecated.  Use accerion_driver_msgs-msg:correction_y instead.")
  (correction_y m))

(cl:ensure-generic-function 'correction_heading-val :lambda-list '(m))
(cl:defmethod correction_heading-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:correction_heading-val is deprecated.  Use accerion_driver_msgs-msg:correction_heading instead.")
  (correction_heading m))

(cl:ensure-generic-function 'error_heading_deg-val :lambda-list '(m))
(cl:defmethod error_heading_deg-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:error_heading_deg-val is deprecated.  Use accerion_driver_msgs-msg:error_heading_deg instead.")
  (error_heading_deg m))

(cl:ensure-generic-function 'correct_heading_deg-val :lambda-list '(m))
(cl:defmethod correct_heading_deg-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:correct_heading_deg-val is deprecated.  Use accerion_driver_msgs-msg:correct_heading_deg instead.")
  (correct_heading_deg m))

(cl:ensure-generic-function 'cumulative_traveled_distance-val :lambda-list '(m))
(cl:defmethod cumulative_traveled_distance-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:cumulative_traveled_distance-val is deprecated.  Use accerion_driver_msgs-msg:cumulative_traveled_distance instead.")
  (cumulative_traveled_distance m))

(cl:ensure-generic-function 'cumulative_traveled_rotation-val :lambda-list '(m))
(cl:defmethod cumulative_traveled_rotation-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:cumulative_traveled_rotation-val is deprecated.  Use accerion_driver_msgs-msg:cumulative_traveled_rotation instead.")
  (cumulative_traveled_rotation m))

(cl:ensure-generic-function 'error_percentage-val :lambda-list '(m))
(cl:defmethod error_percentage-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:error_percentage-val is deprecated.  Use accerion_driver_msgs-msg:error_percentage instead.")
  (error_percentage m))

(cl:ensure-generic-function 'cluster_id-val :lambda-list '(m))
(cl:defmethod cluster_id-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:cluster_id-val is deprecated.  Use accerion_driver_msgs-msg:cluster_id instead.")
  (cluster_id m))

(cl:ensure-generic-function 'acq_quality_estimate-val :lambda-list '(m))
(cl:defmethod acq_quality_estimate-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:acq_quality_estimate-val is deprecated.  Use accerion_driver_msgs-msg:acq_quality_estimate instead.")
  (acq_quality_estimate m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:reserved1-val is deprecated.  Use accerion_driver_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:reserved2-val is deprecated.  Use accerion_driver_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'reserved3-val :lambda-list '(m))
(cl:defmethod reserved3-val ((m <DriftCorrectionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:reserved3-val is deprecated.  Use accerion_driver_msgs-msg:reserved3 instead.")
  (reserved3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriftCorrectionDetails>) ostream)
  "Serializes a message object of type '<DriftCorrectionDetails>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_corrected_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'correction_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'correction_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'correction_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error_heading_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'correct_heading_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cumulative_traveled_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cumulative_traveled_rotation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error_percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cluster_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cluster_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acq_quality_estimate)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriftCorrectionDetails>) istream)
  "Deserializes a message object of type '<DriftCorrectionDetails>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_corrected_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'correction_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'correction_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'correction_heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_heading_deg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'correct_heading_deg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cumulative_traveled_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cumulative_traveled_rotation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_percentage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cluster_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cluster_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acq_quality_estimate)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriftCorrectionDetails>)))
  "Returns string type for a message object of type '<DriftCorrectionDetails>"
  "accerion_driver_msgs/DriftCorrectionDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriftCorrectionDetails)))
  "Returns string type for a message object of type 'DriftCorrectionDetails"
  "accerion_driver_msgs/DriftCorrectionDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriftCorrectionDetails>)))
  "Returns md5sum for a message object of type '<DriftCorrectionDetails>"
  "6dee6f706294700ef373c89c1963dda5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriftCorrectionDetails)))
  "Returns md5sum for a message object of type 'DriftCorrectionDetails"
  "6dee6f706294700ef373c89c1963dda5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriftCorrectionDetails>)))
  "Returns full string definition for message of type '<DriftCorrectionDetails>"
  (cl:format cl:nil "geometry_msgs/PoseWithCovariance new_corrected_pose  # corrected pose in reference frame~%~%float32 correction_x                    		# corrected position error [m] in +x direction in reference frame~%float32 correction_y                   		    # corrected position error [m] in +y direction in reference frame~%float32 correction_heading              		# corrected orientation error [rad] in +z direction in reference frame~%float32 error_heading_deg                  	    # orientation error [deg] in +z direction in reference frame~%float32 correct_heading_deg                 	# correct (new) orientation [deg] in +z direction in reference frame~%~%float32 cumulative_traveled_distance     		# cumulative traveled linear distance since last drift correction~%float32 cumulative_traveled_rotation     		# cumulative traveled rotational distance since last drift correction~%float32 error_percentage 			   		    # (preliminary) simple positional accuracy figure~%uint16   cluster_id 					   		# ID of the cluster on which the drift correction is based~%~%uint8   acq_quality_estimate             		# quality estimate~%~%float32 reserved1     		                    #~%float32 reserved2     		                    #~%float32 reserved3 			   		            #~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriftCorrectionDetails)))
  "Returns full string definition for message of type 'DriftCorrectionDetails"
  (cl:format cl:nil "geometry_msgs/PoseWithCovariance new_corrected_pose  # corrected pose in reference frame~%~%float32 correction_x                    		# corrected position error [m] in +x direction in reference frame~%float32 correction_y                   		    # corrected position error [m] in +y direction in reference frame~%float32 correction_heading              		# corrected orientation error [rad] in +z direction in reference frame~%float32 error_heading_deg                  	    # orientation error [deg] in +z direction in reference frame~%float32 correct_heading_deg                 	# correct (new) orientation [deg] in +z direction in reference frame~%~%float32 cumulative_traveled_distance     		# cumulative traveled linear distance since last drift correction~%float32 cumulative_traveled_rotation     		# cumulative traveled rotational distance since last drift correction~%float32 error_percentage 			   		    # (preliminary) simple positional accuracy figure~%uint16   cluster_id 					   		# ID of the cluster on which the drift correction is based~%~%uint8   acq_quality_estimate             		# quality estimate~%~%float32 reserved1     		                    #~%float32 reserved2     		                    #~%float32 reserved3 			   		            #~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriftCorrectionDetails>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_corrected_pose))
     4
     4
     4
     4
     4
     4
     4
     4
     2
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriftCorrectionDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'DriftCorrectionDetails
    (cl:cons ':new_corrected_pose (new_corrected_pose msg))
    (cl:cons ':correction_x (correction_x msg))
    (cl:cons ':correction_y (correction_y msg))
    (cl:cons ':correction_heading (correction_heading msg))
    (cl:cons ':error_heading_deg (error_heading_deg msg))
    (cl:cons ':correct_heading_deg (correct_heading_deg msg))
    (cl:cons ':cumulative_traveled_distance (cumulative_traveled_distance msg))
    (cl:cons ':cumulative_traveled_rotation (cumulative_traveled_rotation msg))
    (cl:cons ':error_percentage (error_percentage msg))
    (cl:cons ':cluster_id (cluster_id msg))
    (cl:cons ':acq_quality_estimate (acq_quality_estimate msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':reserved3 (reserved3 msg))
))
