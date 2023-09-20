; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-msg)


;//! \htmlinclude DirSizePart.msg.html

(cl:defclass <DirSizePart> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (sizeInMB
    :reader sizeInMB
    :initarg :sizeInMB
    :type cl:integer
    :initform 0)
   (nameLength
    :reader nameLength
    :initarg :nameLength
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DirSizePart (<DirSizePart>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DirSizePart>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DirSizePart)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-msg:<DirSizePart> is deprecated: use accerion_driver_msgs-msg:DirSizePart instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DirSizePart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:type-val is deprecated.  Use accerion_driver_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'sizeInMB-val :lambda-list '(m))
(cl:defmethod sizeInMB-val ((m <DirSizePart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:sizeInMB-val is deprecated.  Use accerion_driver_msgs-msg:sizeInMB instead.")
  (sizeInMB m))

(cl:ensure-generic-function 'nameLength-val :lambda-list '(m))
(cl:defmethod nameLength-val ((m <DirSizePart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:nameLength-val is deprecated.  Use accerion_driver_msgs-msg:nameLength instead.")
  (nameLength m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DirSizePart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:name-val is deprecated.  Use accerion_driver_msgs-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DirSizePart>) ostream)
  "Serializes a message object of type '<DirSizePart>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sizeInMB)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sizeInMB)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sizeInMB)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sizeInMB)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nameLength)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nameLength)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nameLength)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nameLength)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DirSizePart>) istream)
  "Deserializes a message object of type '<DirSizePart>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sizeInMB)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sizeInMB)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sizeInMB)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sizeInMB)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nameLength)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'nameLength)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'nameLength)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'nameLength)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DirSizePart>)))
  "Returns string type for a message object of type '<DirSizePart>"
  "accerion_driver_msgs/DirSizePart")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DirSizePart)))
  "Returns string type for a message object of type 'DirSizePart"
  "accerion_driver_msgs/DirSizePart")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DirSizePart>)))
  "Returns md5sum for a message object of type '<DirSizePart>"
  "148a4802f96912a7e6838d49c25793cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DirSizePart)))
  "Returns md5sum for a message object of type 'DirSizePart"
  "148a4802f96912a7e6838d49c25793cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DirSizePart>)))
  "Returns full string definition for message of type '<DirSizePart>"
  (cl:format cl:nil "uint16 type~%uint32 sizeInMB~%uint32 nameLength~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DirSizePart)))
  "Returns full string definition for message of type 'DirSizePart"
  (cl:format cl:nil "uint16 type~%uint32 sizeInMB~%uint32 nameLength~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DirSizePart>))
  (cl:+ 0
     2
     4
     4
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DirSizePart>))
  "Converts a ROS message object to a list"
  (cl:list 'DirSizePart
    (cl:cons ':type (type msg))
    (cl:cons ':sizeInMB (sizeInMB msg))
    (cl:cons ':nameLength (nameLength msg))
    (cl:cons ':name (name msg))
))
