; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude Cluster-request.msg.html

(cl:defclass <Cluster-request> (roslisp-msg-protocol:ros-message)
  ((cluster_id
    :reader cluster_id
    :initarg :cluster_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Cluster-request (<Cluster-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cluster-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cluster-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<Cluster-request> is deprecated: use accerion_driver_msgs-srv:Cluster-request instead.")))

(cl:ensure-generic-function 'cluster_id-val :lambda-list '(m))
(cl:defmethod cluster_id-val ((m <Cluster-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:cluster_id-val is deprecated.  Use accerion_driver_msgs-srv:cluster_id instead.")
  (cluster_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cluster-request>) ostream)
  "Serializes a message object of type '<Cluster-request>"
  (cl:let* ((signed (cl:slot-value msg 'cluster_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cluster-request>) istream)
  "Deserializes a message object of type '<Cluster-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cluster_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cluster-request>)))
  "Returns string type for a service object of type '<Cluster-request>"
  "accerion_driver_msgs/ClusterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cluster-request)))
  "Returns string type for a service object of type 'Cluster-request"
  "accerion_driver_msgs/ClusterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cluster-request>)))
  "Returns md5sum for a message object of type '<Cluster-request>"
  "187efee1840e64e37ab1b85788d1aa4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cluster-request)))
  "Returns md5sum for a message object of type 'Cluster-request"
  "187efee1840e64e37ab1b85788d1aa4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cluster-request>)))
  "Returns full string definition for message of type '<Cluster-request>"
  (cl:format cl:nil "int32 cluster_id			# specify the cluster id. This can be used at the start of mapping, line following mode, cluster deletion etc.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cluster-request)))
  "Returns full string definition for message of type 'Cluster-request"
  (cl:format cl:nil "int32 cluster_id			# specify the cluster id. This can be used at the start of mapping, line following mode, cluster deletion etc.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cluster-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cluster-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Cluster-request
    (cl:cons ':cluster_id (cluster_id msg))
))
;//! \htmlinclude Cluster-response.msg.html

(cl:defclass <Cluster-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Cluster-response (<Cluster-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cluster-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cluster-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<Cluster-response> is deprecated: use accerion_driver_msgs-srv:Cluster-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Cluster-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Cluster-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cluster-response>) ostream)
  "Serializes a message object of type '<Cluster-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cluster-response>) istream)
  "Deserializes a message object of type '<Cluster-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cluster-response>)))
  "Returns string type for a service object of type '<Cluster-response>"
  "accerion_driver_msgs/ClusterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cluster-response)))
  "Returns string type for a service object of type 'Cluster-response"
  "accerion_driver_msgs/ClusterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cluster-response>)))
  "Returns md5sum for a message object of type '<Cluster-response>"
  "187efee1840e64e37ab1b85788d1aa4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cluster-response)))
  "Returns md5sum for a message object of type 'Cluster-response"
  "187efee1840e64e37ab1b85788d1aa4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cluster-response>)))
  "Returns full string definition for message of type '<Cluster-response>"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cluster-response)))
  "Returns full string definition for message of type 'Cluster-response"
  (cl:format cl:nil "bool success   				# indicate successful run of triggered service~%string message 				# informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cluster-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cluster-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Cluster-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Cluster)))
  'Cluster-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Cluster)))
  'Cluster-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cluster)))
  "Returns string type for a service object of type '<Cluster>"
  "accerion_driver_msgs/Cluster")