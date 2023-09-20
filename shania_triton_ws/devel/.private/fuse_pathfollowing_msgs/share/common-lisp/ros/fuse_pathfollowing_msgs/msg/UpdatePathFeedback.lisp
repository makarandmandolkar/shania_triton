; Auto-generated. Do not edit!


(cl:in-package fuse_pathfollowing_msgs-msg)


;//! \htmlinclude UpdatePathFeedback.msg.html

(cl:defclass <UpdatePathFeedback> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (completed_nodes
    :reader completed_nodes
    :initarg :completed_nodes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (percent_complete
    :reader percent_complete
    :initarg :percent_complete
    :type cl:float
    :initform 0.0)
   (distance_to_end
    :reader distance_to_end
    :initarg :distance_to_end
    :type cl:float
    :initform 0.0)
   (distance_to_next_node
    :reader distance_to_next_node
    :initarg :distance_to_next_node
    :type cl:float
    :initform 0.0))
)

(cl:defclass UpdatePathFeedback (<UpdatePathFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdatePathFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdatePathFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fuse_pathfollowing_msgs-msg:<UpdatePathFeedback> is deprecated: use fuse_pathfollowing_msgs-msg:UpdatePathFeedback instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UpdatePathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:status-val is deprecated.  Use fuse_pathfollowing_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'completed_nodes-val :lambda-list '(m))
(cl:defmethod completed_nodes-val ((m <UpdatePathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:completed_nodes-val is deprecated.  Use fuse_pathfollowing_msgs-msg:completed_nodes instead.")
  (completed_nodes m))

(cl:ensure-generic-function 'percent_complete-val :lambda-list '(m))
(cl:defmethod percent_complete-val ((m <UpdatePathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:percent_complete-val is deprecated.  Use fuse_pathfollowing_msgs-msg:percent_complete instead.")
  (percent_complete m))

(cl:ensure-generic-function 'distance_to_end-val :lambda-list '(m))
(cl:defmethod distance_to_end-val ((m <UpdatePathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:distance_to_end-val is deprecated.  Use fuse_pathfollowing_msgs-msg:distance_to_end instead.")
  (distance_to_end m))

(cl:ensure-generic-function 'distance_to_next_node-val :lambda-list '(m))
(cl:defmethod distance_to_next_node-val ((m <UpdatePathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_pathfollowing_msgs-msg:distance_to_next_node-val is deprecated.  Use fuse_pathfollowing_msgs-msg:distance_to_next_node instead.")
  (distance_to_next_node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdatePathFeedback>) ostream)
  "Serializes a message object of type '<UpdatePathFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'completed_nodes))))
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
   (cl:slot-value msg 'completed_nodes))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'percent_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_end))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_next_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdatePathFeedback>) istream)
  "Deserializes a message object of type '<UpdatePathFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'completed_nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'completed_nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent_complete) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_end) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_next_node) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdatePathFeedback>)))
  "Returns string type for a message object of type '<UpdatePathFeedback>"
  "fuse_pathfollowing_msgs/UpdatePathFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdatePathFeedback)))
  "Returns string type for a message object of type 'UpdatePathFeedback"
  "fuse_pathfollowing_msgs/UpdatePathFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdatePathFeedback>)))
  "Returns md5sum for a message object of type '<UpdatePathFeedback>"
  "44f1771366ed4f018f0b801737cd8b2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdatePathFeedback)))
  "Returns md5sum for a message object of type 'UpdatePathFeedback"
  "44f1771366ed4f018f0b801737cd8b2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdatePathFeedback>)))
  "Returns full string definition for message of type '<UpdatePathFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string status~%string[] completed_nodes # List of the completed node ids - excludes first node since it is never \"reached\" by the path follower~%float64 percent_complete # Percent of the full path distance that has been traversed (0-100)~%float64 distance_to_end  # Distance in meters (along path) to the end of the path~%float64 distance_to_next_node # Distance in meters (along path) to the next node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdatePathFeedback)))
  "Returns full string definition for message of type 'UpdatePathFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string status~%string[] completed_nodes # List of the completed node ids - excludes first node since it is never \"reached\" by the path follower~%float64 percent_complete # Percent of the full path distance that has been traversed (0-100)~%float64 distance_to_end  # Distance in meters (along path) to the end of the path~%float64 distance_to_next_node # Distance in meters (along path) to the next node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdatePathFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'completed_nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdatePathFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdatePathFeedback
    (cl:cons ':status (status msg))
    (cl:cons ':completed_nodes (completed_nodes msg))
    (cl:cons ':percent_complete (percent_complete msg))
    (cl:cons ':distance_to_end (distance_to_end msg))
    (cl:cons ':distance_to_next_node (distance_to_next_node msg))
))
