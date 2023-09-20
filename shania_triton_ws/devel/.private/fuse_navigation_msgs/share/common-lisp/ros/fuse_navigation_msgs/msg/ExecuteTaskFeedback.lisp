; Auto-generated. Do not edit!


(cl:in-package fuse_navigation_msgs-msg)


;//! \htmlinclude ExecuteTaskFeedback.msg.html

(cl:defclass <ExecuteTaskFeedback> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (task_state
    :reader task_state
    :initarg :task_state
    :type cl:string
    :initform "")
   (action_index
    :reader action_index
    :initarg :action_index
    :type cl:integer
    :initform 0))
)

(cl:defclass ExecuteTaskFeedback (<ExecuteTaskFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteTaskFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteTaskFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fuse_navigation_msgs-msg:<ExecuteTaskFeedback> is deprecated: use fuse_navigation_msgs-msg:ExecuteTaskFeedback instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ExecuteTaskFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:status-val is deprecated.  Use fuse_navigation_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'task_state-val :lambda-list '(m))
(cl:defmethod task_state-val ((m <ExecuteTaskFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:task_state-val is deprecated.  Use fuse_navigation_msgs-msg:task_state instead.")
  (task_state m))

(cl:ensure-generic-function 'action_index-val :lambda-list '(m))
(cl:defmethod action_index-val ((m <ExecuteTaskFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:action_index-val is deprecated.  Use fuse_navigation_msgs-msg:action_index instead.")
  (action_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteTaskFeedback>) ostream)
  "Serializes a message object of type '<ExecuteTaskFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_state))
  (cl:let* ((signed (cl:slot-value msg 'action_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteTaskFeedback>) istream)
  "Deserializes a message object of type '<ExecuteTaskFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteTaskFeedback>)))
  "Returns string type for a message object of type '<ExecuteTaskFeedback>"
  "fuse_navigation_msgs/ExecuteTaskFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteTaskFeedback)))
  "Returns string type for a message object of type 'ExecuteTaskFeedback"
  "fuse_navigation_msgs/ExecuteTaskFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteTaskFeedback>)))
  "Returns md5sum for a message object of type '<ExecuteTaskFeedback>"
  "42a3a37e957109ca445ba30df675dde3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteTaskFeedback)))
  "Returns md5sum for a message object of type 'ExecuteTaskFeedback"
  "42a3a37e957109ca445ba30df675dde3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteTaskFeedback>)))
  "Returns full string definition for message of type '<ExecuteTaskFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string status # For general status messages~%string task_state~%int32 action_index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteTaskFeedback)))
  "Returns full string definition for message of type 'ExecuteTaskFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Feedback~%string status # For general status messages~%string task_state~%int32 action_index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteTaskFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'task_state))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteTaskFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteTaskFeedback
    (cl:cons ':status (status msg))
    (cl:cons ':task_state (task_state msg))
    (cl:cons ':action_index (action_index msg))
))
