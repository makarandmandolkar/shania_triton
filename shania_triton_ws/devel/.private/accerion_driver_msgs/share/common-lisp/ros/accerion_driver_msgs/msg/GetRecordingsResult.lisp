; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-msg)


;//! \htmlinclude GetRecordingsResult.msg.html

(cl:defclass <GetRecordingsResult> (roslisp-msg-protocol:ros-message)
  ((recordings
    :reader recordings
    :initarg :recordings
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (done
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
    :initform ""))
)

(cl:defclass GetRecordingsResult (<GetRecordingsResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRecordingsResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRecordingsResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-msg:<GetRecordingsResult> is deprecated: use accerion_driver_msgs-msg:GetRecordingsResult instead.")))

(cl:ensure-generic-function 'recordings-val :lambda-list '(m))
(cl:defmethod recordings-val ((m <GetRecordingsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:recordings-val is deprecated.  Use accerion_driver_msgs-msg:recordings instead.")
  (recordings m))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <GetRecordingsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:done-val is deprecated.  Use accerion_driver_msgs-msg:done instead.")
  (done m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetRecordingsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:success-val is deprecated.  Use accerion_driver_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetRecordingsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:message-val is deprecated.  Use accerion_driver_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRecordingsResult>) ostream)
  "Serializes a message object of type '<GetRecordingsResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'recordings))))
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
   (cl:slot-value msg 'recordings))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRecordingsResult>) istream)
  "Deserializes a message object of type '<GetRecordingsResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'recordings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'recordings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRecordingsResult>)))
  "Returns string type for a message object of type '<GetRecordingsResult>"
  "accerion_driver_msgs/GetRecordingsResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRecordingsResult)))
  "Returns string type for a message object of type 'GetRecordingsResult"
  "accerion_driver_msgs/GetRecordingsResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRecordingsResult>)))
  "Returns md5sum for a message object of type '<GetRecordingsResult>"
  "592b29fce47652d4ecfd82dcf834c677")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRecordingsResult)))
  "Returns md5sum for a message object of type 'GetRecordingsResult"
  "592b29fce47652d4ecfd82dcf834c677")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRecordingsResult>)))
  "Returns full string definition for message of type '<GetRecordingsResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result~%string[] recordings 	    # names of the recordings on the sensor~%bool done                   # sets the action to a finite state~%bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRecordingsResult)))
  "Returns full string definition for message of type 'GetRecordingsResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# result~%string[] recordings 	    # names of the recordings on the sensor~%bool done                   # sets the action to a finite state~%bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRecordingsResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recordings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRecordingsResult>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRecordingsResult
    (cl:cons ':recordings (recordings msg))
    (cl:cons ':done (done msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
