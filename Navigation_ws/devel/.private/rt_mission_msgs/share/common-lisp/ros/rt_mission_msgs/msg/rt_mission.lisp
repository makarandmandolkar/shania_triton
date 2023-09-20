; Auto-generated. Do not edit!


(cl:in-package rt_mission_msgs-msg)


;//! \htmlinclude rt_mission.msg.html

(cl:defclass <rt_mission> (roslisp-msg-protocol:ros-message)
  ((task_enum
    :reader task_enum
    :initarg :task_enum
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (pick_location_name
    :reader pick_location_name
    :initarg :pick_location_name
    :type cl:string
    :initform "")
   (place_location_name
    :reader place_location_name
    :initarg :place_location_name
    :type cl:string
    :initform "")
   (pick_stage_name
    :reader pick_stage_name
    :initarg :pick_stage_name
    :type cl:string
    :initform "")
   (place_stage_name
    :reader place_stage_name
    :initarg :place_stage_name
    :type cl:string
    :initform "")
   (pick_location
    :reader pick_location
    :initarg :pick_location
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pick_stage_location
    :reader pick_stage_location
    :initarg :pick_stage_location
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (place_location
    :reader place_location
    :initarg :place_location
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (place_stage_location
    :reader place_stage_location
    :initarg :place_stage_location
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pallet_id
    :reader pallet_id
    :initarg :pallet_id
    :type cl:string
    :initform "")
   (pick_slot_height
    :reader pick_slot_height
    :initarg :pick_slot_height
    :type cl:float
    :initform 0.0)
   (place_slot_height
    :reader place_slot_height
    :initarg :place_slot_height
    :type cl:float
    :initform 0.0)
   (pick_approach_direction
    :reader pick_approach_direction
    :initarg :pick_approach_direction
    :type cl:string
    :initform "")
   (place_approach_direction
    :reader place_approach_direction
    :initarg :place_approach_direction
    :type cl:string
    :initform "")
   (pick_edge_case_direction
    :reader pick_edge_case_direction
    :initarg :pick_edge_case_direction
    :type cl:string
    :initform "")
   (place_edge_case_direction
    :reader place_edge_case_direction
    :initarg :place_edge_case_direction
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:boolean
    :initform cl:nil)
   (payload_dimension
    :reader payload_dimension
    :initarg :payload_dimension
    :type cl:boolean
    :initform cl:nil)
   (mission_complete_time
    :reader mission_complete_time
    :initarg :mission_complete_time
    :type cl:float
    :initform 0.0)
   (mission_distance
    :reader mission_distance
    :initarg :mission_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass rt_mission (<rt_mission>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rt_mission>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rt_mission)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rt_mission_msgs-msg:<rt_mission> is deprecated: use rt_mission_msgs-msg:rt_mission instead.")))

(cl:ensure-generic-function 'task_enum-val :lambda-list '(m))
(cl:defmethod task_enum-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:task_enum-val is deprecated.  Use rt_mission_msgs-msg:task_enum instead.")
  (task_enum m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:status-val is deprecated.  Use rt_mission_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'pick_location_name-val :lambda-list '(m))
(cl:defmethod pick_location_name-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:pick_location_name-val is deprecated.  Use rt_mission_msgs-msg:pick_location_name instead.")
  (pick_location_name m))

(cl:ensure-generic-function 'place_location_name-val :lambda-list '(m))
(cl:defmethod place_location_name-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:place_location_name-val is deprecated.  Use rt_mission_msgs-msg:place_location_name instead.")
  (place_location_name m))

(cl:ensure-generic-function 'pick_stage_name-val :lambda-list '(m))
(cl:defmethod pick_stage_name-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:pick_stage_name-val is deprecated.  Use rt_mission_msgs-msg:pick_stage_name instead.")
  (pick_stage_name m))

(cl:ensure-generic-function 'place_stage_name-val :lambda-list '(m))
(cl:defmethod place_stage_name-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:place_stage_name-val is deprecated.  Use rt_mission_msgs-msg:place_stage_name instead.")
  (place_stage_name m))

(cl:ensure-generic-function 'pick_location-val :lambda-list '(m))
(cl:defmethod pick_location-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:pick_location-val is deprecated.  Use rt_mission_msgs-msg:pick_location instead.")
  (pick_location m))

(cl:ensure-generic-function 'pick_stage_location-val :lambda-list '(m))
(cl:defmethod pick_stage_location-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:pick_stage_location-val is deprecated.  Use rt_mission_msgs-msg:pick_stage_location instead.")
  (pick_stage_location m))

(cl:ensure-generic-function 'place_location-val :lambda-list '(m))
(cl:defmethod place_location-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:place_location-val is deprecated.  Use rt_mission_msgs-msg:place_location instead.")
  (place_location m))

(cl:ensure-generic-function 'place_stage_location-val :lambda-list '(m))
(cl:defmethod place_stage_location-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:place_stage_location-val is deprecated.  Use rt_mission_msgs-msg:place_stage_location instead.")
  (place_stage_location m))

(cl:ensure-generic-function 'pallet_id-val :lambda-list '(m))
(cl:defmethod pallet_id-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:pallet_id-val is deprecated.  Use rt_mission_msgs-msg:pallet_id instead.")
  (pallet_id m))

(cl:ensure-generic-function 'pick_slot_height-val :lambda-list '(m))
(cl:defmethod pick_slot_height-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:pick_slot_height-val is deprecated.  Use rt_mission_msgs-msg:pick_slot_height instead.")
  (pick_slot_height m))

(cl:ensure-generic-function 'place_slot_height-val :lambda-list '(m))
(cl:defmethod place_slot_height-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:place_slot_height-val is deprecated.  Use rt_mission_msgs-msg:place_slot_height instead.")
  (place_slot_height m))

(cl:ensure-generic-function 'pick_approach_direction-val :lambda-list '(m))
(cl:defmethod pick_approach_direction-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:pick_approach_direction-val is deprecated.  Use rt_mission_msgs-msg:pick_approach_direction instead.")
  (pick_approach_direction m))

(cl:ensure-generic-function 'place_approach_direction-val :lambda-list '(m))
(cl:defmethod place_approach_direction-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:place_approach_direction-val is deprecated.  Use rt_mission_msgs-msg:place_approach_direction instead.")
  (place_approach_direction m))

(cl:ensure-generic-function 'pick_edge_case_direction-val :lambda-list '(m))
(cl:defmethod pick_edge_case_direction-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:pick_edge_case_direction-val is deprecated.  Use rt_mission_msgs-msg:pick_edge_case_direction instead.")
  (pick_edge_case_direction m))

(cl:ensure-generic-function 'place_edge_case_direction-val :lambda-list '(m))
(cl:defmethod place_edge_case_direction-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:place_edge_case_direction-val is deprecated.  Use rt_mission_msgs-msg:place_edge_case_direction instead.")
  (place_edge_case_direction m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:priority-val is deprecated.  Use rt_mission_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'payload_dimension-val :lambda-list '(m))
(cl:defmethod payload_dimension-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:payload_dimension-val is deprecated.  Use rt_mission_msgs-msg:payload_dimension instead.")
  (payload_dimension m))

(cl:ensure-generic-function 'mission_complete_time-val :lambda-list '(m))
(cl:defmethod mission_complete_time-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:mission_complete_time-val is deprecated.  Use rt_mission_msgs-msg:mission_complete_time instead.")
  (mission_complete_time m))

(cl:ensure-generic-function 'mission_distance-val :lambda-list '(m))
(cl:defmethod mission_distance-val ((m <rt_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rt_mission_msgs-msg:mission_distance-val is deprecated.  Use rt_mission_msgs-msg:mission_distance instead.")
  (mission_distance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<rt_mission>)))
    "Constants for message type '<rt_mission>"
  '((:TASK_PICK_AND_PLACE . 0)
    (:TASK_PICK . 1)
    (:TASK_PLACE . 2)
    (:TASK_CHARGE_ROBOT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'rt_mission)))
    "Constants for message type 'rt_mission"
  '((:TASK_PICK_AND_PLACE . 0)
    (:TASK_PICK . 1)
    (:TASK_PLACE . 2)
    (:TASK_CHARGE_ROBOT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rt_mission>) ostream)
  "Serializes a message object of type '<rt_mission>"
  (cl:let* ((signed (cl:slot-value msg 'task_enum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pick_location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pick_location_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'place_location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'place_location_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pick_stage_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pick_stage_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'place_stage_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'place_stage_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pick_location) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pick_stage_location) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'place_location) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'place_stage_location) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pallet_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pallet_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pick_slot_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'place_slot_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pick_approach_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pick_approach_direction))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'place_approach_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'place_approach_direction))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pick_edge_case_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pick_edge_case_direction))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'place_edge_case_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'place_edge_case_direction))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'priority) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'payload_dimension) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mission_complete_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mission_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rt_mission>) istream)
  "Deserializes a message object of type '<rt_mission>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_enum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
      (cl:setf (cl:slot-value msg 'pick_location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pick_location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'place_location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_stage_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pick_stage_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_stage_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'place_stage_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pick_location) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pick_stage_location) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'place_location) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'place_stage_location) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pallet_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pallet_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pick_slot_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'place_slot_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_approach_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pick_approach_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_approach_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'place_approach_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pick_edge_case_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pick_edge_case_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_edge_case_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'place_edge_case_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'priority) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'payload_dimension) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mission_complete_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mission_distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rt_mission>)))
  "Returns string type for a message object of type '<rt_mission>"
  "rt_mission_msgs/rt_mission")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rt_mission)))
  "Returns string type for a message object of type 'rt_mission"
  "rt_mission_msgs/rt_mission")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rt_mission>)))
  "Returns md5sum for a message object of type '<rt_mission>"
  "4ada315410efb79e7745f34310db12a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rt_mission)))
  "Returns md5sum for a message object of type 'rt_mission"
  "4ada315410efb79e7745f34310db12a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rt_mission>)))
  "Returns full string definition for message of type '<rt_mission>"
  (cl:format cl:nil "int32 task_enum~%int32 TASK_PICK_AND_PLACE=0~%int32 TASK_PICK=1~%int32 TASK_PLACE=2~%int32 TASK_CHARGE_ROBOT=3~%string status~%string pick_location_name~%string place_location_name~%string pick_stage_name~%string place_stage_name~%geometry_msgs/Pose pick_location~%geometry_msgs/Pose pick_stage_location~%geometry_msgs/Pose place_location~%geometry_msgs/Pose place_stage_location~%string pallet_id~%float32 pick_slot_height~%float32 place_slot_height~%string pick_approach_direction~%string place_approach_direction~%string pick_edge_case_direction~%string place_edge_case_direction~%bool priority~%bool payload_dimension~%float32 mission_complete_time~%float32 mission_distance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rt_mission)))
  "Returns full string definition for message of type 'rt_mission"
  (cl:format cl:nil "int32 task_enum~%int32 TASK_PICK_AND_PLACE=0~%int32 TASK_PICK=1~%int32 TASK_PLACE=2~%int32 TASK_CHARGE_ROBOT=3~%string status~%string pick_location_name~%string place_location_name~%string pick_stage_name~%string place_stage_name~%geometry_msgs/Pose pick_location~%geometry_msgs/Pose pick_stage_location~%geometry_msgs/Pose place_location~%geometry_msgs/Pose place_stage_location~%string pallet_id~%float32 pick_slot_height~%float32 place_slot_height~%string pick_approach_direction~%string place_approach_direction~%string pick_edge_case_direction~%string place_edge_case_direction~%bool priority~%bool payload_dimension~%float32 mission_complete_time~%float32 mission_distance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rt_mission>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'pick_location_name))
     4 (cl:length (cl:slot-value msg 'place_location_name))
     4 (cl:length (cl:slot-value msg 'pick_stage_name))
     4 (cl:length (cl:slot-value msg 'place_stage_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pick_location))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pick_stage_location))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'place_location))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'place_stage_location))
     4 (cl:length (cl:slot-value msg 'pallet_id))
     4
     4
     4 (cl:length (cl:slot-value msg 'pick_approach_direction))
     4 (cl:length (cl:slot-value msg 'place_approach_direction))
     4 (cl:length (cl:slot-value msg 'pick_edge_case_direction))
     4 (cl:length (cl:slot-value msg 'place_edge_case_direction))
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rt_mission>))
  "Converts a ROS message object to a list"
  (cl:list 'rt_mission
    (cl:cons ':task_enum (task_enum msg))
    (cl:cons ':status (status msg))
    (cl:cons ':pick_location_name (pick_location_name msg))
    (cl:cons ':place_location_name (place_location_name msg))
    (cl:cons ':pick_stage_name (pick_stage_name msg))
    (cl:cons ':place_stage_name (place_stage_name msg))
    (cl:cons ':pick_location (pick_location msg))
    (cl:cons ':pick_stage_location (pick_stage_location msg))
    (cl:cons ':place_location (place_location msg))
    (cl:cons ':place_stage_location (place_stage_location msg))
    (cl:cons ':pallet_id (pallet_id msg))
    (cl:cons ':pick_slot_height (pick_slot_height msg))
    (cl:cons ':place_slot_height (place_slot_height msg))
    (cl:cons ':pick_approach_direction (pick_approach_direction msg))
    (cl:cons ':place_approach_direction (place_approach_direction msg))
    (cl:cons ':pick_edge_case_direction (pick_edge_case_direction msg))
    (cl:cons ':place_edge_case_direction (place_edge_case_direction msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':payload_dimension (payload_dimension msg))
    (cl:cons ':mission_complete_time (mission_complete_time msg))
    (cl:cons ':mission_distance (mission_distance msg))
))
