; Auto-generated. Do not edit!


(cl:in-package fuse_navigation_msgs-msg)


;//! \htmlinclude ExecutePathGoal.msg.html

(cl:defclass <ExecutePathGoal> (roslisp-msg-protocol:ros-message)
  ((id_type_enum
    :reader id_type_enum
    :initarg :id_type_enum
    :type cl:fixnum
    :initform 0)
   (nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (append
    :reader append
    :initarg :append
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ExecutePathGoal (<ExecutePathGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutePathGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutePathGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fuse_navigation_msgs-msg:<ExecutePathGoal> is deprecated: use fuse_navigation_msgs-msg:ExecutePathGoal instead.")))

(cl:ensure-generic-function 'id_type_enum-val :lambda-list '(m))
(cl:defmethod id_type_enum-val ((m <ExecutePathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:id_type_enum-val is deprecated.  Use fuse_navigation_msgs-msg:id_type_enum instead.")
  (id_type_enum m))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <ExecutePathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:nodes-val is deprecated.  Use fuse_navigation_msgs-msg:nodes instead.")
  (nodes m))

(cl:ensure-generic-function 'append-val :lambda-list '(m))
(cl:defmethod append-val ((m <ExecutePathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:append-val is deprecated.  Use fuse_navigation_msgs-msg:append instead.")
  (append m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ExecutePathGoal>)))
    "Constants for message type '<ExecutePathGoal>"
  '((:ID_TYPE_NODE_INDEX . 0)
    (:ID_TYPE_NODE_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ExecutePathGoal)))
    "Constants for message type 'ExecutePathGoal"
  '((:ID_TYPE_NODE_INDEX . 0)
    (:ID_TYPE_NODE_ID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutePathGoal>) ostream)
  "Serializes a message object of type '<ExecutePathGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_type_enum)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes))))
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
   (cl:slot-value msg 'nodes))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'append) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutePathGoal>) istream)
  "Deserializes a message object of type '<ExecutePathGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id_type_enum)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:slot-value msg 'append) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutePathGoal>)))
  "Returns string type for a message object of type '<ExecutePathGoal>"
  "fuse_navigation_msgs/ExecutePathGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePathGoal)))
  "Returns string type for a message object of type 'ExecutePathGoal"
  "fuse_navigation_msgs/ExecutePathGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutePathGoal>)))
  "Returns md5sum for a message object of type '<ExecutePathGoal>"
  "56048e3d1a74f5550c8af38fee5cf8c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutePathGoal)))
  "Returns md5sum for a message object of type 'ExecutePathGoal"
  "56048e3d1a74f5550c8af38fee5cf8c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutePathGoal>)))
  "Returns full string definition for message of type '<ExecutePathGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## Action used to command the vehicle to execute a path of nodes~%~%# Defines the type NodeID~%uint8 id_type_enum~%# Possible types~%uint8 ID_TYPE_NODE_INDEX = 0 # Indicates that the node ids are the human-readable indices shown in the UI~%uint8 ID_TYPE_NODE_ID    = 1 # Indicates that the node ids are the unique IDs used by the internal data structure~%~%# Goal~%string[] nodes # IDs of desired nodes, in order~%bool append # If true, new nodes are appended to the current mission. If false, replace the current mission~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutePathGoal)))
  "Returns full string definition for message of type 'ExecutePathGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## Action used to command the vehicle to execute a path of nodes~%~%# Defines the type NodeID~%uint8 id_type_enum~%# Possible types~%uint8 ID_TYPE_NODE_INDEX = 0 # Indicates that the node ids are the human-readable indices shown in the UI~%uint8 ID_TYPE_NODE_ID    = 1 # Indicates that the node ids are the unique IDs used by the internal data structure~%~%# Goal~%string[] nodes # IDs of desired nodes, in order~%bool append # If true, new nodes are appended to the current mission. If false, replace the current mission~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutePathGoal>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutePathGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutePathGoal
    (cl:cons ':id_type_enum (id_type_enum msg))
    (cl:cons ':nodes (nodes msg))
    (cl:cons ':append (append msg))
))
