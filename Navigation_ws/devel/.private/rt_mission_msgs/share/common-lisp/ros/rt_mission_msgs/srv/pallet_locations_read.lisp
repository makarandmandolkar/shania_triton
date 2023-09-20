; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-srv)


;//! \htmlinclude pallet_locations_read-request.msg.html

(cl:defclass <pallet_locations_read-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass pallet_locations_read-request (<pallet_locations_read-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pallet_locations_read-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pallet_locations_read-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<pallet_locations_read-request> is deprecated: use rt_mission_msgs-srv:pallet_locations_read-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pallet_locations_read-request>) ostream)
  "Serializes a message object of type '<pallet_locations_read-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pallet_locations_read-request>) istream)
  "Deserializes a message object of type '<pallet_locations_read-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pallet_locations_read-request>)))
  "Returns string type for a service object of type '<pallet_locations_read-request>"
  "rt_mission_msgs/pallet_locations_readRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_locations_read-request)))
  "Returns string type for a service object of type 'pallet_locations_read-request"
  "rt_mission_msgs/pallet_locations_readRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pallet_locations_read-request>)))
  "Returns md5sum for a message object of type '<pallet_locations_read-request>"
  "dd7004084a8c6b852a1a973d12608609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pallet_locations_read-request)))
  "Returns md5sum for a message object of type 'pallet_locations_read-request"
  "dd7004084a8c6b852a1a973d12608609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pallet_locations_read-request>)))
  "Returns full string definition for message of type '<pallet_locations_read-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pallet_locations_read-request)))
  "Returns full string definition for message of type 'pallet_locations_read-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pallet_locations_read-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pallet_locations_read-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pallet_locations_read-request
))
;//! \htmlinclude pallet_locations_read-response.msg.html

(cl:defclass <pallet_locations_read-response> (roslisp-msg-protocol:ros-message)
  ((pallet_location_names
    :reader pallet_location_names
    :initarg :pallet_location_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (pallet_ids
    :reader pallet_ids
    :initarg :pallet_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass pallet_locations_read-response (<pallet_locations_read-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pallet_locations_read-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pallet_locations_read-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<pallet_locations_read-response> is deprecated: use rt_mission_msgs-srv:pallet_locations_read-response instead.")))

(cl:ensure-generic-function 'pallet_location_names-val :lambda-list '(m))
(cl:defmethod pallet_location_names-val ((m <pallet_locations_read-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:pallet_location_names-val is deprecated.  Use rt_mission_msgs-srv:pallet_location_names instead.")
  (pallet_location_names m))

(cl:ensure-generic-function 'pallet_ids-val :lambda-list '(m))
(cl:defmethod pallet_ids-val ((m <pallet_locations_read-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:pallet_ids-val is deprecated.  Use rt_mission_msgs-srv:pallet_ids instead.")
  (pallet_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pallet_locations_read-response>) ostream)
  "Serializes a message object of type '<pallet_locations_read-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pallet_location_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'pallet_location_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pallet_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'pallet_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pallet_locations_read-response>) istream)
  "Deserializes a message object of type '<pallet_locations_read-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pallet_location_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pallet_location_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pallet_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pallet_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pallet_locations_read-response>)))
  "Returns string type for a service object of type '<pallet_locations_read-response>"
  "rt_mission_msgs/pallet_locations_readResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_locations_read-response)))
  "Returns string type for a service object of type 'pallet_locations_read-response"
  "rt_mission_msgs/pallet_locations_readResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pallet_locations_read-response>)))
  "Returns md5sum for a message object of type '<pallet_locations_read-response>"
  "dd7004084a8c6b852a1a973d12608609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pallet_locations_read-response)))
  "Returns md5sum for a message object of type 'pallet_locations_read-response"
  "dd7004084a8c6b852a1a973d12608609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pallet_locations_read-response>)))
  "Returns full string definition for message of type '<pallet_locations_read-response>"
  (cl:format cl:nil "string[] pallet_location_names~%string[] pallet_ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pallet_locations_read-response)))
  "Returns full string definition for message of type 'pallet_locations_read-response"
  (cl:format cl:nil "string[] pallet_location_names~%string[] pallet_ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pallet_locations_read-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pallet_location_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pallet_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pallet_locations_read-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pallet_locations_read-response
    (cl:cons ':pallet_location_names (pallet_location_names msg))
    (cl:cons ':pallet_ids (pallet_ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pallet_locations_read)))
  'pallet_locations_read-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pallet_locations_read)))
  'pallet_locations_read-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_locations_read)))
  "Returns string type for a service object of type '<pallet_locations_read>"
  "rt_mission_msgs/pallet_locations_read")