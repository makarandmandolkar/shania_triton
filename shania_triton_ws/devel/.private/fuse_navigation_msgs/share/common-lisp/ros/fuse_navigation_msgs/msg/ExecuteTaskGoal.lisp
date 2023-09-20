; Auto-generated. Do not edit!


(cl:in-package fuse_navigation_msgs-msg)


;//! \htmlinclude ExecuteTaskGoal.msg.html

(cl:defclass <ExecuteTaskGoal> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:string
    :initform "")
   (agent_id
    :reader agent_id
    :initarg :agent_id
    :type cl:string
    :initform "")
   (action_plan
    :reader action_plan
    :initarg :action_plan
    :type (cl:vector fuse_navigation_msgs-msg:TaskAction)
   :initform (cl:make-array 0 :element-type 'fuse_navigation_msgs-msg:TaskAction :initial-element (cl:make-instance 'fuse_navigation_msgs-msg:TaskAction))))
)

(cl:defclass ExecuteTaskGoal (<ExecuteTaskGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteTaskGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteTaskGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fuse_navigation_msgs-msg:<ExecuteTaskGoal> is deprecated: use fuse_navigation_msgs-msg:ExecuteTaskGoal instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <ExecuteTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:task_id-val is deprecated.  Use fuse_navigation_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'agent_id-val :lambda-list '(m))
(cl:defmethod agent_id-val ((m <ExecuteTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:agent_id-val is deprecated.  Use fuse_navigation_msgs-msg:agent_id instead.")
  (agent_id m))

(cl:ensure-generic-function 'action_plan-val :lambda-list '(m))
(cl:defmethod action_plan-val ((m <ExecuteTaskGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fuse_navigation_msgs-msg:action_plan-val is deprecated.  Use fuse_navigation_msgs-msg:action_plan instead.")
  (action_plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteTaskGoal>) ostream)
  "Serializes a message object of type '<ExecuteTaskGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agent_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agent_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action_plan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'action_plan))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteTaskGoal>) istream)
  "Deserializes a message object of type '<ExecuteTaskGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agent_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agent_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action_plan) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action_plan)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fuse_navigation_msgs-msg:TaskAction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteTaskGoal>)))
  "Returns string type for a message object of type '<ExecuteTaskGoal>"
  "fuse_navigation_msgs/ExecuteTaskGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteTaskGoal)))
  "Returns string type for a message object of type 'ExecuteTaskGoal"
  "fuse_navigation_msgs/ExecuteTaskGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteTaskGoal>)))
  "Returns md5sum for a message object of type '<ExecuteTaskGoal>"
  "61e0bad8ee9b5e9931c6026164f872c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteTaskGoal)))
  "Returns md5sum for a message object of type 'ExecuteTaskGoal"
  "61e0bad8ee9b5e9931c6026164f872c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteTaskGoal>)))
  "Returns full string definition for message of type '<ExecuteTaskGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## Action used to send a task/mission for the agent to execute~%~%# Goal~%string task_id~%string agent_id~%TaskAction[] action_plan~%~%================================================================================~%MSG: fuse_navigation_msgs/TaskAction~%# Represents an action as part of a larger agent task~%string name~%string[] arguments~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteTaskGoal)))
  "Returns full string definition for message of type 'ExecuteTaskGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## Action used to send a task/mission for the agent to execute~%~%# Goal~%string task_id~%string agent_id~%TaskAction[] action_plan~%~%================================================================================~%MSG: fuse_navigation_msgs/TaskAction~%# Represents an action as part of a larger agent task~%string name~%string[] arguments~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteTaskGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_id))
     4 (cl:length (cl:slot-value msg 'agent_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action_plan) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteTaskGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteTaskGoal
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':agent_id (agent_id msg))
    (cl:cons ':action_plan (action_plan msg))
))
