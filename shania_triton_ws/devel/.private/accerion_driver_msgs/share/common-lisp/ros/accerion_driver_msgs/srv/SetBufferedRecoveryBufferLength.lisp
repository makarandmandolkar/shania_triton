; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-srv)


;//! \htmlinclude SetBufferedRecoveryBufferLength-request.msg.html

(cl:defclass <SetBufferedRecoveryBufferLength-request> (roslisp-msg-protocol:ros-message)
  ((bufferLength
    :reader bufferLength
    :initarg :bufferLength
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetBufferedRecoveryBufferLength-request (<SetBufferedRecoveryBufferLength-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBufferedRecoveryBufferLength-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBufferedRecoveryBufferLength-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<SetBufferedRecoveryBufferLength-request> is deprecated: use accerion_driver_msgs-srv:SetBufferedRecoveryBufferLength-request instead.")))

(cl:ensure-generic-function 'bufferLength-val :lambda-list '(m))
(cl:defmethod bufferLength-val ((m <SetBufferedRecoveryBufferLength-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:bufferLength-val is deprecated.  Use accerion_driver_msgs-srv:bufferLength instead.")
  (bufferLength m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBufferedRecoveryBufferLength-request>) ostream)
  "Serializes a message object of type '<SetBufferedRecoveryBufferLength-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bufferLength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBufferedRecoveryBufferLength-request>) istream)
  "Deserializes a message object of type '<SetBufferedRecoveryBufferLength-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bufferLength) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBufferedRecoveryBufferLength-request>)))
  "Returns string type for a service object of type '<SetBufferedRecoveryBufferLength-request>"
  "accerion_driver_msgs/SetBufferedRecoveryBufferLengthRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBufferedRecoveryBufferLength-request)))
  "Returns string type for a service object of type 'SetBufferedRecoveryBufferLength-request"
  "accerion_driver_msgs/SetBufferedRecoveryBufferLengthRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBufferedRecoveryBufferLength-request>)))
  "Returns md5sum for a message object of type '<SetBufferedRecoveryBufferLength-request>"
  "e14afd668301bde6c6dea0c523ebebaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBufferedRecoveryBufferLength-request)))
  "Returns md5sum for a message object of type 'SetBufferedRecoveryBufferLength-request"
  "e14afd668301bde6c6dea0c523ebebaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBufferedRecoveryBufferLength-request>)))
  "Returns full string definition for message of type '<SetBufferedRecoveryBufferLength-request>"
  (cl:format cl:nil "float32 bufferLength		# specify the buffer length of recovery buffer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBufferedRecoveryBufferLength-request)))
  "Returns full string definition for message of type 'SetBufferedRecoveryBufferLength-request"
  (cl:format cl:nil "float32 bufferLength		# specify the buffer length of recovery buffer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBufferedRecoveryBufferLength-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBufferedRecoveryBufferLength-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBufferedRecoveryBufferLength-request
    (cl:cons ':bufferLength (bufferLength msg))
))
;//! \htmlinclude SetBufferedRecoveryBufferLength-response.msg.html

(cl:defclass <SetBufferedRecoveryBufferLength-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass SetBufferedRecoveryBufferLength-response (<SetBufferedRecoveryBufferLength-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBufferedRecoveryBufferLength-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBufferedRecoveryBufferLength-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-srv:<SetBufferedRecoveryBufferLength-response> is deprecated: use accerion_driver_msgs-srv:SetBufferedRecoveryBufferLength-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetBufferedRecoveryBufferLength-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:success-val is deprecated.  Use accerion_driver_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SetBufferedRecoveryBufferLength-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-srv:msg-val is deprecated.  Use accerion_driver_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBufferedRecoveryBufferLength-response>) ostream)
  "Serializes a message object of type '<SetBufferedRecoveryBufferLength-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBufferedRecoveryBufferLength-response>) istream)
  "Deserializes a message object of type '<SetBufferedRecoveryBufferLength-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBufferedRecoveryBufferLength-response>)))
  "Returns string type for a service object of type '<SetBufferedRecoveryBufferLength-response>"
  "accerion_driver_msgs/SetBufferedRecoveryBufferLengthResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBufferedRecoveryBufferLength-response)))
  "Returns string type for a service object of type 'SetBufferedRecoveryBufferLength-response"
  "accerion_driver_msgs/SetBufferedRecoveryBufferLengthResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBufferedRecoveryBufferLength-response>)))
  "Returns md5sum for a message object of type '<SetBufferedRecoveryBufferLength-response>"
  "e14afd668301bde6c6dea0c523ebebaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBufferedRecoveryBufferLength-response)))
  "Returns md5sum for a message object of type 'SetBufferedRecoveryBufferLength-response"
  "e14afd668301bde6c6dea0c523ebebaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBufferedRecoveryBufferLength-response>)))
  "Returns full string definition for message of type '<SetBufferedRecoveryBufferLength-response>"
  (cl:format cl:nil "bool success               	# true if buffer length is correctly set~%string msg                  # for info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBufferedRecoveryBufferLength-response)))
  "Returns full string definition for message of type 'SetBufferedRecoveryBufferLength-response"
  (cl:format cl:nil "bool success               	# true if buffer length is correctly set~%string msg                  # for info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBufferedRecoveryBufferLength-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBufferedRecoveryBufferLength-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBufferedRecoveryBufferLength-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBufferedRecoveryBufferLength)))
  'SetBufferedRecoveryBufferLength-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBufferedRecoveryBufferLength)))
  'SetBufferedRecoveryBufferLength-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBufferedRecoveryBufferLength)))
  "Returns string type for a service object of type '<SetBufferedRecoveryBufferLength>"
  "accerion_driver_msgs/SetBufferedRecoveryBufferLength")