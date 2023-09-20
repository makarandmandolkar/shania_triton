; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-msg)


;//! \htmlinclude SubsetMapResult.msg.html

(cl:defclass <SubsetMapResult> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (failedIDs
    :reader failedIDs
    :initarg :failedIDs
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SubsetMapResult (<SubsetMapResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubsetMapResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubsetMapResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-msg:<SubsetMapResult> is deprecated: use accerion_driver_msgs-msg:SubsetMapResult instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <SubsetMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:done-val is deprecated.  Use accerion_driver_msgs-msg:done instead.")
  (done m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SubsetMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:success-val is deprecated.  Use accerion_driver_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SubsetMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:message-val is deprecated.  Use accerion_driver_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'failedIDs-val :lambda-list '(m))
(cl:defmethod failedIDs-val ((m <SubsetMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:failedIDs-val is deprecated.  Use accerion_driver_msgs-msg:failedIDs instead.")
  (failedIDs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubsetMapResult>) ostream)
  "Serializes a message object of type '<SubsetMapResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'failedIDs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'failedIDs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubsetMapResult>) istream)
  "Deserializes a message object of type '<SubsetMapResult>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'failedIDs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'failedIDs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubsetMapResult>)))
  "Returns string type for a message object of type '<SubsetMapResult>"
  "accerion_driver_msgs/SubsetMapResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubsetMapResult)))
  "Returns string type for a message object of type 'SubsetMapResult"
  "accerion_driver_msgs/SubsetMapResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubsetMapResult>)))
  "Returns md5sum for a message object of type '<SubsetMapResult>"
  "fb4f07909349905bd624c9f52bdc4c8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubsetMapResult)))
  "Returns md5sum for a message object of type 'SubsetMapResult"
  "fb4f07909349905bd624c9f52bdc4c8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubsetMapResult>)))
  "Returns full string definition for message of type '<SubsetMapResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result~%bool done                   # sets the action to a finite state~%bool success                # bool that holds whether the request was succesful~%string message              # message containing information about the result~%uint16[] failedIDs          # ID's of the clusters that could not be found and/or copied~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubsetMapResult)))
  "Returns full string definition for message of type 'SubsetMapResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result~%bool done                   # sets the action to a finite state~%bool success                # bool that holds whether the request was succesful~%string message              # message containing information about the result~%uint16[] failedIDs          # ID's of the clusters that could not be found and/or copied~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubsetMapResult>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'failedIDs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubsetMapResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SubsetMapResult
    (cl:cons ':done (done msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':failedIDs (failedIDs msg))
))
