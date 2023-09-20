; Auto-generated. Do not edit!


(cl:in-package accerion_driver_msgs-msg)


;//! \htmlinclude RamRomStats.msg.html

(cl:defclass <RamRomStats> (roslisp-msg-protocol:ros-message)
  ((romAvailable
    :reader romAvailable
    :initarg :romAvailable
    :type cl:integer
    :initform 0)
   (romTotal
    :reader romTotal
    :initarg :romTotal
    :type cl:integer
    :initform 0)
   (sdAvailable
    :reader sdAvailable
    :initarg :sdAvailable
    :type cl:integer
    :initform 0)
   (sdTotal
    :reader sdTotal
    :initarg :sdTotal
    :type cl:integer
    :initform 0)
   (ramUsed
    :reader ramUsed
    :initarg :ramUsed
    :type cl:fixnum
    :initform 0)
   (ramTotal
    :reader ramTotal
    :initarg :ramTotal
    :type cl:fixnum
    :initform 0)
   (parts
    :reader parts
    :initarg :parts
    :type (cl:vector accerion_driver_msgs-msg:DirSizePart)
   :initform (cl:make-array 0 :element-type 'accerion_driver_msgs-msg:DirSizePart :initial-element (cl:make-instance 'accerion_driver_msgs-msg:DirSizePart))))
)

(cl:defclass RamRomStats (<RamRomStats>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RamRomStats>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RamRomStats)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name accerion_driver_msgs-msg:<RamRomStats> is deprecated: use accerion_driver_msgs-msg:RamRomStats instead.")))

(cl:ensure-generic-function 'romAvailable-val :lambda-list '(m))
(cl:defmethod romAvailable-val ((m <RamRomStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:romAvailable-val is deprecated.  Use accerion_driver_msgs-msg:romAvailable instead.")
  (romAvailable m))

(cl:ensure-generic-function 'romTotal-val :lambda-list '(m))
(cl:defmethod romTotal-val ((m <RamRomStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:romTotal-val is deprecated.  Use accerion_driver_msgs-msg:romTotal instead.")
  (romTotal m))

(cl:ensure-generic-function 'sdAvailable-val :lambda-list '(m))
(cl:defmethod sdAvailable-val ((m <RamRomStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:sdAvailable-val is deprecated.  Use accerion_driver_msgs-msg:sdAvailable instead.")
  (sdAvailable m))

(cl:ensure-generic-function 'sdTotal-val :lambda-list '(m))
(cl:defmethod sdTotal-val ((m <RamRomStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:sdTotal-val is deprecated.  Use accerion_driver_msgs-msg:sdTotal instead.")
  (sdTotal m))

(cl:ensure-generic-function 'ramUsed-val :lambda-list '(m))
(cl:defmethod ramUsed-val ((m <RamRomStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:ramUsed-val is deprecated.  Use accerion_driver_msgs-msg:ramUsed instead.")
  (ramUsed m))

(cl:ensure-generic-function 'ramTotal-val :lambda-list '(m))
(cl:defmethod ramTotal-val ((m <RamRomStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:ramTotal-val is deprecated.  Use accerion_driver_msgs-msg:ramTotal instead.")
  (ramTotal m))

(cl:ensure-generic-function 'parts-val :lambda-list '(m))
(cl:defmethod parts-val ((m <RamRomStats>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader accerion_driver_msgs-msg:parts-val is deprecated.  Use accerion_driver_msgs-msg:parts instead.")
  (parts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RamRomStats>) ostream)
  "Serializes a message object of type '<RamRomStats>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'romAvailable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'romAvailable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'romAvailable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'romAvailable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'romTotal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'romTotal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'romTotal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'romTotal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sdAvailable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sdAvailable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sdAvailable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sdAvailable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sdTotal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sdTotal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sdTotal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sdTotal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ramUsed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ramUsed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ramTotal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ramTotal)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RamRomStats>) istream)
  "Deserializes a message object of type '<RamRomStats>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'romAvailable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'romAvailable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'romAvailable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'romAvailable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'romTotal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'romTotal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'romTotal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'romTotal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sdAvailable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sdAvailable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sdAvailable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sdAvailable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sdTotal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sdTotal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sdTotal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sdTotal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ramUsed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ramUsed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ramTotal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ramTotal)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'accerion_driver_msgs-msg:DirSizePart))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RamRomStats>)))
  "Returns string type for a message object of type '<RamRomStats>"
  "accerion_driver_msgs/RamRomStats")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RamRomStats)))
  "Returns string type for a message object of type 'RamRomStats"
  "accerion_driver_msgs/RamRomStats")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RamRomStats>)))
  "Returns md5sum for a message object of type '<RamRomStats>"
  "7806d72dc3ef14ad7527222b80c652ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RamRomStats)))
  "Returns md5sum for a message object of type 'RamRomStats"
  "7806d72dc3ef14ad7527222b80c652ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RamRomStats>)))
  "Returns full string definition for message of type '<RamRomStats>"
  (cl:format cl:nil "uint32 romAvailable~%uint32 romTotal~%uint32 sdAvailable~%uint32 sdTotal~%uint16 ramUsed~%uint16 ramTotal~%DirSizePart[] parts~%================================================================================~%MSG: accerion_driver_msgs/DirSizePart~%uint16 type~%uint32 sizeInMB~%uint32 nameLength~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RamRomStats)))
  "Returns full string definition for message of type 'RamRomStats"
  (cl:format cl:nil "uint32 romAvailable~%uint32 romTotal~%uint32 sdAvailable~%uint32 sdTotal~%uint16 ramUsed~%uint16 ramTotal~%DirSizePart[] parts~%================================================================================~%MSG: accerion_driver_msgs/DirSizePart~%uint16 type~%uint32 sizeInMB~%uint32 nameLength~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RamRomStats>))
  (cl:+ 0
     4
     4
     4
     4
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RamRomStats>))
  "Converts a ROS message object to a list"
  (cl:list 'RamRomStats
    (cl:cons ':romAvailable (romAvailable msg))
    (cl:cons ':romTotal (romTotal msg))
    (cl:cons ':sdAvailable (sdAvailable msg))
    (cl:cons ':sdTotal (sdTotal msg))
    (cl:cons ':ramUsed (ramUsed msg))
    (cl:cons ':ramTotal (ramTotal msg))
    (cl:cons ':parts (parts msg))
))
