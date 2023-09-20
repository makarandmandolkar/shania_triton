; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-srv)


;//! \htmlinclude pallet_locations_write-request.msg.html

(cl:defclass <pallet_locations_write-request> (roslisp-msg-protocol:ros-message)
  ((pick_location_name
    :reader pick_location_name
    :initarg :pick_location_name
    :type cl:string
    :initform "")
   (place_location_name
    :reader place_location_name
    :initarg :place_location_name
    :type cl:string
    :initform "")
   (pallet_id
    :reader pallet_id
    :initarg :pallet_id
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:boolean
    :initform cl:nil)
   (payload_dimension
    :reader payload_dimension
    :initarg :payload_dimension
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass pallet_locations_write-request (<pallet_locations_write-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pallet_locations_write-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pallet_locations_write-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<pallet_locations_write-request> is deprecated: use rt_mission_msgs-srv:pallet_locations_write-request instead.")))

(cl:ensure-generic-function 'pick_location_name-val :lambda-list '(m))
(cl:defmethod pick_location_name-val ((m <pallet_locations_write-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:pick_location_name-val is deprecated.  Use rt_mission_msgs-srv:pick_location_name instead.")
  (pick_location_name m))

(cl:ensure-generic-function 'place_location_name-val :lambda-list '(m))
(cl:defmethod place_location_name-val ((m <pallet_locations_write-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:place_location_name-val is deprecated.  Use rt_mission_msgs-srv:place_location_name instead.")
  (place_location_name m))

(cl:ensure-generic-function 'pallet_id-val :lambda-list '(m))
(cl:defmethod pallet_id-val ((m <pallet_locations_write-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:pallet_id-val is deprecated.  Use rt_mission_msgs-srv:pallet_id instead.")
  (pallet_id m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <pallet_locations_write-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:priority-val is deprecated.  Use rt_mission_msgs-srv:priority instead.")
  (priority m))

(cl:ensure-generic-function 'payload_dimension-val :lambda-list '(m))
(cl:defmethod payload_dimension-val ((m <pallet_locations_write-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:payload_dimension-val is deprecated.  Use rt_mission_msgs-srv:payload_dimension instead.")
  (payload_dimension m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pallet_locations_write-request>) ostream)
  "Serializes a message object of type '<pallet_locations_write-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pick_location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pick_location_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'place_location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'place_location_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pallet_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pallet_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'priority) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'payload_dimension) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pallet_locations_write-request>) istream)
  "Deserializes a message object of type '<pallet_locations_write-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pick_location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'place_location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pallet_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pallet_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'priority) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'payload_dimension) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pallet_locations_write-request>)))
  "Returns string type for a service object of type '<pallet_locations_write-request>"
  "rt_mission_msgs/pallet_locations_writeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_locations_write-request)))
  "Returns string type for a service object of type 'pallet_locations_write-request"
  "rt_mission_msgs/pallet_locations_writeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pallet_locations_write-request>)))
  "Returns md5sum for a message object of type '<pallet_locations_write-request>"
  "a5b86be52d305e13b8e0c965235e45f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pallet_locations_write-request)))
  "Returns md5sum for a message object of type 'pallet_locations_write-request"
  "a5b86be52d305e13b8e0c965235e45f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pallet_locations_write-request>)))
  "Returns full string definition for message of type '<pallet_locations_write-request>"
  (cl:format cl:nil "string pick_location_name~%string place_location_name~%string pallet_id~%bool priority~%bool payload_dimension~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pallet_locations_write-request)))
  "Returns full string definition for message of type 'pallet_locations_write-request"
  (cl:format cl:nil "string pick_location_name~%string place_location_name~%string pallet_id~%bool priority~%bool payload_dimension~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pallet_locations_write-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pick_location_name))
     4 (cl:length (cl:slot-value msg 'place_location_name))
     4 (cl:length (cl:slot-value msg 'pallet_id))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pallet_locations_write-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pallet_locations_write-request
    (cl:cons ':pick_location_name (pick_location_name msg))
    (cl:cons ':place_location_name (place_location_name msg))
    (cl:cons ':pallet_id (pallet_id msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':payload_dimension (payload_dimension msg))
))
;//! \htmlinclude pallet_locations_write-response.msg.html

(cl:defclass <pallet_locations_write-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass pallet_locations_write-response (<pallet_locations_write-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pallet_locations_write-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pallet_locations_write-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-srv:<pallet_locations_write-response> is deprecated: use rt_mission_msgs-srv:pallet_locations_write-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <pallet_locations_write-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-srv:result-val is deprecated.  Use rt_mission_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pallet_locations_write-response>) ostream)
  "Serializes a message object of type '<pallet_locations_write-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pallet_locations_write-response>) istream)
  "Deserializes a message object of type '<pallet_locations_write-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pallet_locations_write-response>)))
  "Returns string type for a service object of type '<pallet_locations_write-response>"
  "rt_mission_msgs/pallet_locations_writeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_locations_write-response)))
  "Returns string type for a service object of type 'pallet_locations_write-response"
  "rt_mission_msgs/pallet_locations_writeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pallet_locations_write-response>)))
  "Returns md5sum for a message object of type '<pallet_locations_write-response>"
  "a5b86be52d305e13b8e0c965235e45f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pallet_locations_write-response)))
  "Returns md5sum for a message object of type 'pallet_locations_write-response"
  "a5b86be52d305e13b8e0c965235e45f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pallet_locations_write-response>)))
  "Returns full string definition for message of type '<pallet_locations_write-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pallet_locations_write-response)))
  "Returns full string definition for message of type 'pallet_locations_write-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pallet_locations_write-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pallet_locations_write-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pallet_locations_write-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pallet_locations_write)))
  'pallet_locations_write-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pallet_locations_write)))
  'pallet_locations_write-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pallet_locations_write)))
  "Returns string type for a service object of type '<pallet_locations_write>"
  "rt_mission_msgs/pallet_locations_write")