; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-msg)


;//! \htmlinclude GetRecordingsGoal.msg.html

(cl:defclass <GetRecordingsGoal> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (recordingIndexes
    :reader recordingIndexes
    :initarg :recordingIndexes
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass GetRecordingsGoal (<GetRecordingsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRecordingsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRecordingsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-msg:<GetRecordingsGoal> is deprecated: use accerion_driver_msgs-msg:GetRecordingsGoal instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GetRecordingsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:mode-val is deprecated.  Use accerion_driver_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'recordingIndexes-val :lambda-list '(m))
(cl:defmethod recordingIndexes-val ((m <GetRecordingsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:recordingIndexes-val is deprecated.  Use accerion_driver_msgs-msg:recordingIndexes instead.")
  (recordingIndexes m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <GetRecordingsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:path-val is deprecated.  Use accerion_driver_msgs-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRecordingsGoal>) ostream)
  "Serializes a message object of type '<GetRecordingsGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'recordingIndexes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'recordingIndexes))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRecordingsGoal>) istream)
  "Deserializes a message object of type '<GetRecordingsGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'recordingIndexes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'recordingIndexes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRecordingsGoal>)))
  "Returns string type for a message object of type '<GetRecordingsGoal>"
  "accerion_driver_msgs/GetRecordingsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRecordingsGoal)))
  "Returns string type for a message object of type 'GetRecordingsGoal"
  "accerion_driver_msgs/GetRecordingsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRecordingsGoal>)))
  "Returns md5sum for a message object of type '<GetRecordingsGoal>"
  "0d868aed50984bd5795d668d45d213f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRecordingsGoal)))
  "Returns md5sum for a message object of type 'GetRecordingsGoal"
  "0d868aed50984bd5795d668d45d213f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRecordingsGoal>)))
  "Returns full string definition for message of type '<GetRecordingsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%string mode                 # list(to retrieve list of recordings), download(to retrieve one or more recordings), delete(delete one or more recordings)~%uint8[]  recordingIndexes   # indexes of the recordings to be retrieved~%string path                 # Path to store the recordings~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRecordingsGoal)))
  "Returns full string definition for message of type 'GetRecordingsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# goal~%string mode                 # list(to retrieve list of recordings), download(to retrieve one or more recordings), delete(delete one or more recordings)~%uint8[]  recordingIndexes   # indexes of the recordings to be retrieved~%string path                 # Path to store the recordings~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRecordingsGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recordingIndexes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRecordingsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRecordingsGoal
    (cl:cons ':mode (mode msg))
    (cl:cons ':recordingIndexes (recordingIndexes msg))
    (cl:cons ':path (path msg))
))
