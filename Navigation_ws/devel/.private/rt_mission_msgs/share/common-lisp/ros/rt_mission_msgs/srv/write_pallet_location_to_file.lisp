; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-srv)


;//! \htmlinclude write_pallet_location_to_file-request.msg.html

(cl:defclass <write_pallet_location_to_file-request> (roslisp-msg-protocol:ros-message)
  ((pallet_name
    :reader pallet_name
    :initarg :pallet_name
    :type cl:string
    :initform "")
   (pallet_pose_in_map
    :reader pallet_pose_in_map
    :initarg :pallet_pose_in_map
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass write_pallet_location_to_file-request (<write_pallet_location_to_file-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <write_pallet_location_to_file-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'write_pallet_location_to_file-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<write_pallet_location_to_file-request> is deprecated: use rt_mission_msgs-srv:write_pallet_location_to_file-request instead.")))

(cl:ensure-generic-function 'pallet_name-val :lambda-list '(m))
(cl:defmethod pallet_name-val ((m <write_pallet_location_to_file-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:pallet_name-val is deprecated.  Use rt_mission_msgs-srv:pallet_name instead.")
  (pallet_name m))

(cl:ensure-generic-function 'pallet_pose_in_map-val :lambda-list '(m))
(cl:defmethod pallet_pose_in_map-val ((m <write_pallet_location_to_file-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:pallet_pose_in_map-val is deprecated.  Use rt_mission_msgs-srv:pallet_pose_in_map instead.")
  (pallet_pose_in_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <write_pallet_location_to_file-request>) ostream)
  "Serializes a message object of type '<write_pallet_location_to_file-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pallet_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pallet_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pallet_pose_in_map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <write_pallet_location_to_file-request>) istream)
  "Deserializes a message object of type '<write_pallet_location_to_file-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pallet_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pallet_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pallet_pose_in_map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<write_pallet_location_to_file-request>)))
  "Returns string type for a service object of type '<write_pallet_location_to_file-request>"
  "rt_mission_msgs/write_pallet_location_to_fileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'write_pallet_location_to_file-request)))
  "Returns string type for a service object of type 'write_pallet_location_to_file-request"
  "rt_mission_msgs/write_pallet_location_to_fileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<write_pallet_location_to_file-request>)))
  "Returns md5sum for a message object of type '<write_pallet_location_to_file-request>"
  "2e0b45a83177fcfa3bdfed4d23c370e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'write_pallet_location_to_file-request)))
  "Returns md5sum for a message object of type 'write_pallet_location_to_file-request"
  "2e0b45a83177fcfa3bdfed4d23c370e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<write_pallet_location_to_file-request>)))
  "Returns full string definition for message of type '<write_pallet_location_to_file-request>"
  (cl:format cl:nil "string pallet_name~%geometry_msgs/Pose pallet_pose_in_map~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'write_pallet_location_to_file-request)))
  "Returns full string definition for message of type 'write_pallet_location_to_file-request"
  (cl:format cl:nil "string pallet_name~%geometry_msgs/Pose pallet_pose_in_map~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <write_pallet_location_to_file-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pallet_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pallet_pose_in_map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <write_pallet_location_to_file-request>))
  "Converts a ROS message object to a list"
  (cl:list 'write_pallet_location_to_file-request
    (cl:cons ':pallet_name (pallet_name msg))
    (cl:cons ':pallet_pose_in_map (pallet_pose_in_map msg))
))
;//! \htmlinclude write_pallet_location_to_file-response.msg.html

(cl:defclass <write_pallet_location_to_file-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass write_pallet_location_to_file-response (<write_pallet_location_to_file-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <write_pallet_location_to_file-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'write_pallet_location_to_file-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<write_pallet_location_to_file-response> is deprecated: use rt_mission_msgs-srv:write_pallet_location_to_file-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <write_pallet_location_to_file-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:result-val is deprecated.  Use rt_mission_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <write_pallet_location_to_file-response>) ostream)
  "Serializes a message object of type '<write_pallet_location_to_file-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <write_pallet_location_to_file-response>) istream)
  "Deserializes a message object of type '<write_pallet_location_to_file-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<write_pallet_location_to_file-response>)))
  "Returns string type for a service object of type '<write_pallet_location_to_file-response>"
  "rt_mission_msgs/write_pallet_location_to_fileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'write_pallet_location_to_file-response)))
  "Returns string type for a service object of type 'write_pallet_location_to_file-response"
  "rt_mission_msgs/write_pallet_location_to_fileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<write_pallet_location_to_file-response>)))
  "Returns md5sum for a message object of type '<write_pallet_location_to_file-response>"
  "2e0b45a83177fcfa3bdfed4d23c370e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'write_pallet_location_to_file-response)))
  "Returns md5sum for a message object of type 'write_pallet_location_to_file-response"
  "2e0b45a83177fcfa3bdfed4d23c370e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<write_pallet_location_to_file-response>)))
  "Returns full string definition for message of type '<write_pallet_location_to_file-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'write_pallet_location_to_file-response)))
  "Returns full string definition for message of type 'write_pallet_location_to_file-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <write_pallet_location_to_file-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <write_pallet_location_to_file-response>))
  "Converts a ROS message object to a list"
  (cl:list 'write_pallet_location_to_file-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'write_pallet_location_to_file)))
  'write_pallet_location_to_file-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'write_pallet_location_to_file)))
  'write_pallet_location_to_file-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'write_pallet_location_to_file)))
  "Returns string type for a service object of type '<write_pallet_location_to_file>"
  "rt_mission_msgs/write_pallet_location_to_file")