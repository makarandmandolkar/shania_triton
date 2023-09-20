; Auto-generated. Do not edit!


(cl:in-package fuse_navigation_msgs-msg)


;//! \htmlinclude TaskAction.msg.html

(cl:defclass <TaskAction> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (arguments
    :reader arguments
    :initarg :arguments
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass TaskAction (<TaskAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fuse_navigation_msgs-msg:<TaskAction> is deprecated: use fuse_navigation_msgs-msg:TaskAction instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TaskAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:name-val is deprecated.  Use fuse_navigation_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'arguments-val :lambda-list '(m))
(cl:defmethod arguments-val ((m <TaskAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:arguments-val is deprecated.  Use fuse_navigation_msgs-msg:arguments instead.")
  (arguments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskAction>) ostream)
  "Serializes a message object of type '<TaskAction>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arguments))))
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
   (cl:slot-value msg 'arguments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskAction>) istream)
  "Deserializes a message object of type '<TaskAction>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arguments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arguments)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskAction>)))
  "Returns string type for a message object of type '<TaskAction>"
  "fuse_navigation_msgs/TaskAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskAction)))
  "Returns string type for a message object of type 'TaskAction"
  "fuse_navigation_msgs/TaskAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskAction>)))
  "Returns md5sum for a message object of type '<TaskAction>"
  "c435bb0ff50e10a641eea4b6379dd80a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskAction)))
  "Returns md5sum for a message object of type 'TaskAction"
  "c435bb0ff50e10a641eea4b6379dd80a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskAction>)))
  "Returns full string definition for message of type '<TaskAction>"
  (cl:format cl:nil "# Represents an action as part of a larger agent task~%string name~%string[] arguments~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskAction)))
  "Returns full string definition for message of type 'TaskAction"
  (cl:format cl:nil "# Represents an action as part of a larger agent task~%string name~%string[] arguments~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskAction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arguments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskAction>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskAction
    (cl:cons ':name (name msg))
    (cl:cons ':arguments (arguments msg))
))
