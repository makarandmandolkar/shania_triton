; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-msg)


;//! \htmlinclude pallet_location.msg.html

(cl:defclass <pallet_location> (roslisp-msg-protocol:ros-message)
  ((location_name
    :reader location_name
    :initarg :location_name
    :type cl:string
    :initform "")
   (map_location
    :reader map_location
    :initarg :map_location
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (location_id
    :reader location_id
    :initarg :location_id
    :type cl:string
    :initform ""))
)

(cl:defclass pallet_location (<pallet_location>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pallet_location>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pallet_location)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-msg:<pallet_location> is deprecated: use rt_mission_msgs-msg:pallet_location instead.")))

(cl:ensure-generic-function 'location_name-val :lambda-list '(m))
(cl:defmethod location_name-val ((m <pallet_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:location_name-val is deprecated.  Use rt_mission_msgs-msg:location_name instead.")
  (location_name m))

(cl:ensure-generic-function 'map_location-val :lambda-list '(m))
(cl:defmethod map_location-val ((m <pallet_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:map_location-val is deprecated.  Use rt_mission_msgs-msg:map_location instead.")
  (map_location m))

(cl:ensure-generic-function 'location_id-val :lambda-list '(m))
(cl:defmethod location_id-val ((m <pallet_location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:location_id-val is deprecated.  Use rt_mission_msgs-msg:location_id instead.")
  (location_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pallet_location>) ostream)
  "Serializes a message object of type '<pallet_location>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_location) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pallet_location>) istream)
  "Deserializes a message object of type '<pallet_location>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_location) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pallet_location>)))
  "Returns string type for a message object of type '<pallet_location>"
  "rt_mission_msgs/pallet_location")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_location)))
  "Returns string type for a message object of type 'pallet_location"
  "rt_mission_msgs/pallet_location")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pallet_location>)))
  "Returns md5sum for a message object of type '<pallet_location>"
  "df6b2a914d117d0714ccbfe4bb9b70f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pallet_location)))
  "Returns md5sum for a message object of type 'pallet_location"
  "df6b2a914d117d0714ccbfe4bb9b70f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pallet_location>)))
  "Returns full string definition for message of type '<pallet_location>"
  (cl:format cl:nil "string location_name~%geometry_msgs/Pose map_location~%string location_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pallet_location)))
  "Returns full string definition for message of type 'pallet_location"
  (cl:format cl:nil "string location_name~%geometry_msgs/Pose map_location~%string location_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pallet_location>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_location))
     4 (cl:length (cl:slot-value msg 'location_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pallet_location>))
  "Converts a ROS message object to a list"
  (cl:list 'pallet_location
    (cl:cons ':location_name (location_name msg))
    (cl:cons ':map_location (map_location msg))
    (cl:cons ':location_id (location_id msg))
))
