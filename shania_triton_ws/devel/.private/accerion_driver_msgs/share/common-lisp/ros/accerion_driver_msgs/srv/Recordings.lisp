; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude Recordings-request.msg.html

(cl:defclass <Recordings-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (recordingIndexes
    :reader recordingIndexes
    :initarg :recordingIndexes
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Recordings-request (<Recordings-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recordings-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recordings-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<Recordings-request> is deprecated: use accerion_driver_msgs-srv:Recordings-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Recordings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:mode-val is deprecated.  Use accerion_driver_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'recordingIndexes-val :lambda-list '(m))
(cl:defmethod recordingIndexes-val ((m <Recordings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:recordingIndexes-val is deprecated.  Use accerion_driver_msgs-srv:recordingIndexes instead.")
  (recordingIndexes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recordings-request>) ostream)
  "Serializes a message object of type '<Recordings-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recordings-request>) istream)
  "Deserializes a message object of type '<Recordings-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recordings-request>)))
  "Returns string type for a service object of type '<Recordings-request>"
  "accerion_driver_msgs/RecordingsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recordings-request)))
  "Returns string type for a service object of type 'Recordings-request"
  "accerion_driver_msgs/RecordingsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recordings-request>)))
  "Returns md5sum for a message object of type '<Recordings-request>"
  "a50241c729b90d3d361ca09193e877ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recordings-request)))
  "Returns md5sum for a message object of type 'Recordings-request"
  "a50241c729b90d3d361ca09193e877ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recordings-request>)))
  "Returns full string definition for message of type '<Recordings-request>"
  (cl:format cl:nil "string mode                 # list(to retrieve list of recordings), delete(delete one or more recordings)~%uint8[]  recordingIndexes   # indexes of the recordings to be retrieved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recordings-request)))
  "Returns full string definition for message of type 'Recordings-request"
  (cl:format cl:nil "string mode                 # list(to retrieve list of recordings), delete(delete one or more recordings)~%uint8[]  recordingIndexes   # indexes of the recordings to be retrieved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recordings-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recordingIndexes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recordings-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Recordings-request
    (cl:cons ':mode (mode msg))
    (cl:cons ':recordingIndexes (recordingIndexes msg))
))
;//! \htmlinclude Recordings-response.msg.html

(cl:defclass <Recordings-response> (roslisp-msg-protocol:ros-message)
  ((recordings
    :reader recordings
    :initarg :recordings
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
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

(cl:defclass Recordings-response (<Recordings-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recordings-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recordings-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<Recordings-response> is deprecated: use accerion_driver_msgs-srv:Recordings-response instead.")))

(cl:ensure-generic-function 'recordings-val :lambda-list '(m))
(cl:defmethod recordings-val ((m <Recordings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:recordings-val is deprecated.  Use accerion_driver_msgs-srv:recordings instead.")
  (recordings m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Recordings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Recordings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:message-val is deprecated.  Use accerion_driver_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recordings-response>) ostream)
  "Serializes a message object of type '<Recordings-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recordings-response>) istream)
  "Deserializes a message object of type '<Recordings-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recordings-response>)))
  "Returns string type for a service object of type '<Recordings-response>"
  "accerion_driver_msgs/RecordingsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recordings-response)))
  "Returns string type for a service object of type 'Recordings-response"
  "accerion_driver_msgs/RecordingsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recordings-response>)))
  "Returns md5sum for a message object of type '<Recordings-response>"
  "a50241c729b90d3d361ca09193e877ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recordings-response)))
  "Returns md5sum for a message object of type 'Recordings-response"
  "a50241c729b90d3d361ca09193e877ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recordings-response>)))
  "Returns full string definition for message of type '<Recordings-response>"
  (cl:format cl:nil "string[] recordings 	    # names of the recordings on the sensor~%bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recordings-response)))
  "Returns full string definition for message of type 'Recordings-response"
  (cl:format cl:nil "string[] recordings 	    # names of the recordings on the sensor~%bool success                # boolean that holds whether the request has been made~%string message              # message that contains information about the request(success/failure etc.)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recordings-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recordings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recordings-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Recordings-response
    (cl:cons ':recordings (recordings msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Recordings)))
  'Recordings-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Recordings)))
  'Recordings-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recordings)))
  "Returns string type for a service object of type '<Recordings>"
  "accerion_driver_msgs/Recordings")