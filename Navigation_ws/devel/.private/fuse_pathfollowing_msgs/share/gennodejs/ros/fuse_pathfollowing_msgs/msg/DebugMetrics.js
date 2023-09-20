// Auto-generated. Do not edit!

// (in-package fuse_pathfollowing_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PIDMetrics = require('./PIDMetrics.js');
let nav_msgs = _finder('nav_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DebugMetrics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_navodom = null;
      this.vehicle_heading = null;
      this.vehicle_linear_speed = null;
      this.vehicle_body_vel = null;
      this.path_position = null;
      this.distance_along_path = null;
      this.desired_speed = null;
      this.safe_speed = null;
      this.current_speed = null;
      this.terminal_speed = null;
      this.path_heading = null;
      this.desired_heading = null;
      this.feed_forward_yawrate = null;
      this.alpha_nominal_heading = null;
      this.alpha_path_error = null;
      this.path_velocity = null;
      this.correction_velocity = null;
      this.nominal_speed = null;
      this.path_error = null;
      this.path_heading_error = null;
      this.desired_heading_error = null;
      this.dt = null;
      this.cmd_vel = null;
      this.yaw_pid = null;
      this.terminal_vel_pid = null;
      this.correction_vel_pid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_navodom')) {
        this.vehicle_navodom = initObj.vehicle_navodom
      }
      else {
        this.vehicle_navodom = new nav_msgs.msg.Odometry();
      }
      if (initObj.hasOwnProperty('vehicle_heading')) {
        this.vehicle_heading = initObj.vehicle_heading
      }
      else {
        this.vehicle_heading = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_linear_speed')) {
        this.vehicle_linear_speed = initObj.vehicle_linear_speed
      }
      else {
        this.vehicle_linear_speed = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_body_vel')) {
        this.vehicle_body_vel = initObj.vehicle_body_vel
      }
      else {
        this.vehicle_body_vel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('path_position')) {
        this.path_position = initObj.path_position
      }
      else {
        this.path_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('distance_along_path')) {
        this.distance_along_path = initObj.distance_along_path
      }
      else {
        this.distance_along_path = 0.0;
      }
      if (initObj.hasOwnProperty('desired_speed')) {
        this.desired_speed = initObj.desired_speed
      }
      else {
        this.desired_speed = 0.0;
      }
      if (initObj.hasOwnProperty('safe_speed')) {
        this.safe_speed = initObj.safe_speed
      }
      else {
        this.safe_speed = 0.0;
      }
      if (initObj.hasOwnProperty('current_speed')) {
        this.current_speed = initObj.current_speed
      }
      else {
        this.current_speed = 0.0;
      }
      if (initObj.hasOwnProperty('terminal_speed')) {
        this.terminal_speed = initObj.terminal_speed
      }
      else {
        this.terminal_speed = 0.0;
      }
      if (initObj.hasOwnProperty('path_heading')) {
        this.path_heading = initObj.path_heading
      }
      else {
        this.path_heading = 0.0;
      }
      if (initObj.hasOwnProperty('desired_heading')) {
        this.desired_heading = initObj.desired_heading
      }
      else {
        this.desired_heading = 0.0;
      }
      if (initObj.hasOwnProperty('feed_forward_yawrate')) {
        this.feed_forward_yawrate = initObj.feed_forward_yawrate
      }
      else {
        this.feed_forward_yawrate = 0.0;
      }
      if (initObj.hasOwnProperty('alpha_nominal_heading')) {
        this.alpha_nominal_heading = initObj.alpha_nominal_heading
      }
      else {
        this.alpha_nominal_heading = 0.0;
      }
      if (initObj.hasOwnProperty('alpha_path_error')) {
        this.alpha_path_error = initObj.alpha_path_error
      }
      else {
        this.alpha_path_error = 0.0;
      }
      if (initObj.hasOwnProperty('path_velocity')) {
        this.path_velocity = initObj.path_velocity
      }
      else {
        this.path_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('correction_velocity')) {
        this.correction_velocity = initObj.correction_velocity
      }
      else {
        this.correction_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('nominal_speed')) {
        this.nominal_speed = initObj.nominal_speed
      }
      else {
        this.nominal_speed = 0.0;
      }
      if (initObj.hasOwnProperty('path_error')) {
        this.path_error = initObj.path_error
      }
      else {
        this.path_error = 0.0;
      }
      if (initObj.hasOwnProperty('path_heading_error')) {
        this.path_heading_error = initObj.path_heading_error
      }
      else {
        this.path_heading_error = 0.0;
      }
      if (initObj.hasOwnProperty('desired_heading_error')) {
        this.desired_heading_error = initObj.desired_heading_error
      }
      else {
        this.desired_heading_error = 0.0;
      }
      if (initObj.hasOwnProperty('dt')) {
        this.dt = initObj.dt
      }
      else {
        this.dt = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_vel')) {
        this.cmd_vel = initObj.cmd_vel
      }
      else {
        this.cmd_vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('yaw_pid')) {
        this.yaw_pid = initObj.yaw_pid
      }
      else {
        this.yaw_pid = new PIDMetrics();
      }
      if (initObj.hasOwnProperty('terminal_vel_pid')) {
        this.terminal_vel_pid = initObj.terminal_vel_pid
      }
      else {
        this.terminal_vel_pid = new PIDMetrics();
      }
      if (initObj.hasOwnProperty('correction_vel_pid')) {
        this.correction_vel_pid = initObj.correction_vel_pid
      }
      else {
        this.correction_vel_pid = new PIDMetrics();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DebugMetrics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_navodom]
    bufferOffset = nav_msgs.msg.Odometry.serialize(obj.vehicle_navodom, buffer, bufferOffset);
    // Serialize message field [vehicle_heading]
    bufferOffset = _serializer.float64(obj.vehicle_heading, buffer, bufferOffset);
    // Serialize message field [vehicle_linear_speed]
    bufferOffset = _serializer.float64(obj.vehicle_linear_speed, buffer, bufferOffset);
    // Serialize message field [vehicle_body_vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.vehicle_body_vel, buffer, bufferOffset);
    // Serialize message field [path_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.path_position, buffer, bufferOffset);
    // Serialize message field [distance_along_path]
    bufferOffset = _serializer.float64(obj.distance_along_path, buffer, bufferOffset);
    // Serialize message field [desired_speed]
    bufferOffset = _serializer.float64(obj.desired_speed, buffer, bufferOffset);
    // Serialize message field [safe_speed]
    bufferOffset = _serializer.float64(obj.safe_speed, buffer, bufferOffset);
    // Serialize message field [current_speed]
    bufferOffset = _serializer.float64(obj.current_speed, buffer, bufferOffset);
    // Serialize message field [terminal_speed]
    bufferOffset = _serializer.float64(obj.terminal_speed, buffer, bufferOffset);
    // Serialize message field [path_heading]
    bufferOffset = _serializer.float64(obj.path_heading, buffer, bufferOffset);
    // Serialize message field [desired_heading]
    bufferOffset = _serializer.float64(obj.desired_heading, buffer, bufferOffset);
    // Serialize message field [feed_forward_yawrate]
    bufferOffset = _serializer.float64(obj.feed_forward_yawrate, buffer, bufferOffset);
    // Serialize message field [alpha_nominal_heading]
    bufferOffset = _serializer.float64(obj.alpha_nominal_heading, buffer, bufferOffset);
    // Serialize message field [alpha_path_error]
    bufferOffset = _serializer.float64(obj.alpha_path_error, buffer, bufferOffset);
    // Serialize message field [path_velocity]
    bufferOffset = _serializer.float64(obj.path_velocity, buffer, bufferOffset);
    // Serialize message field [correction_velocity]
    bufferOffset = _serializer.float64(obj.correction_velocity, buffer, bufferOffset);
    // Serialize message field [nominal_speed]
    bufferOffset = _serializer.float64(obj.nominal_speed, buffer, bufferOffset);
    // Serialize message field [path_error]
    bufferOffset = _serializer.float64(obj.path_error, buffer, bufferOffset);
    // Serialize message field [path_heading_error]
    bufferOffset = _serializer.float64(obj.path_heading_error, buffer, bufferOffset);
    // Serialize message field [desired_heading_error]
    bufferOffset = _serializer.float64(obj.desired_heading_error, buffer, bufferOffset);
    // Serialize message field [dt]
    bufferOffset = _serializer.float64(obj.dt, buffer, bufferOffset);
    // Serialize message field [cmd_vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.cmd_vel, buffer, bufferOffset);
    // Serialize message field [yaw_pid]
    bufferOffset = PIDMetrics.serialize(obj.yaw_pid, buffer, bufferOffset);
    // Serialize message field [terminal_vel_pid]
    bufferOffset = PIDMetrics.serialize(obj.terminal_vel_pid, buffer, bufferOffset);
    // Serialize message field [correction_vel_pid]
    bufferOffset = PIDMetrics.serialize(obj.correction_vel_pid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugMetrics
    let len;
    let data = new DebugMetrics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_navodom]
    data.vehicle_navodom = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_heading]
    data.vehicle_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vehicle_linear_speed]
    data.vehicle_linear_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vehicle_body_vel]
    data.vehicle_body_vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_position]
    data.path_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance_along_path]
    data.distance_along_path = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desired_speed]
    data.desired_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [safe_speed]
    data.safe_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_speed]
    data.current_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [terminal_speed]
    data.terminal_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path_heading]
    data.path_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desired_heading]
    data.desired_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feed_forward_yawrate]
    data.feed_forward_yawrate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alpha_nominal_heading]
    data.alpha_nominal_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alpha_path_error]
    data.alpha_path_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path_velocity]
    data.path_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [correction_velocity]
    data.correction_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [nominal_speed]
    data.nominal_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path_error]
    data.path_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path_heading_error]
    data.path_heading_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desired_heading_error]
    data.desired_heading_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dt]
    data.dt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cmd_vel]
    data.cmd_vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw_pid]
    data.yaw_pid = PIDMetrics.deserialize(buffer, bufferOffset);
    // Deserialize message field [terminal_vel_pid]
    data.terminal_vel_pid = PIDMetrics.deserialize(buffer, bufferOffset);
    // Deserialize message field [correction_vel_pid]
    data.correction_vel_pid = PIDMetrics.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += nav_msgs.msg.Odometry.getMessageSize(object.vehicle_navodom);
    return length + 344;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fuse_pathfollowing_msgs/DebugMetrics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7936a8e5a90f165bce29007c47f74eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # Robot state
    nav_msgs/Odometry vehicle_navodom # Includes position, velocity, orientation, and angular velocity
    float64 vehicle_heading # Heading in radians - Useful so we don't have to extract from quaternion
    float64 vehicle_linear_speed # Linear speed in meters - Useful so we don't have to take the norm of the linear velocity vector
    geometry_msgs/Vector3 vehicle_body_vel # Linear velocity in body frame - useful so we don't have to transform from a global frame
    # Path info
    geometry_msgs/Point path_position # XYZ position of the 
    float64 distance_along_path # Distance traveled along the path
    float64 desired_speed 
    float64 safe_speed
    float64 current_speed
    float64 terminal_speed
    float64 path_heading
    float64 desired_heading
    float64 feed_forward_yawrate
    # Alpha velocity method
    float64 alpha_nominal_heading
    float64 alpha_path_error
    float64 path_velocity
    float64 correction_velocity
    float64 nominal_speed
    
    # Path error
    float64 path_error
    float64 path_heading_error
    float64 desired_heading_error
    # Control info
    float64 dt
    geometry_msgs/Twist cmd_vel
    PIDMetrics yaw_pid
    PIDMetrics terminal_vel_pid
    PIDMetrics correction_vel_pid
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: nav_msgs/Odometry
    # This represents an estimate of a position and velocity in free space.  
    # The pose in this message should be specified in the coordinate frame given by header.frame_id.
    # The twist in this message should be specified in the coordinate frame given by the child_frame_id
    Header header
    string child_frame_id
    geometry_msgs/PoseWithCovariance pose
    geometry_msgs/TwistWithCovariance twist
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: fuse_pathfollowing_msgs/PIDMetrics
    float64 p_effort
    float64 i_effort
    float64 d_effort
    float64 total_effort
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DebugMetrics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_navodom !== undefined) {
      resolved.vehicle_navodom = nav_msgs.msg.Odometry.Resolve(msg.vehicle_navodom)
    }
    else {
      resolved.vehicle_navodom = new nav_msgs.msg.Odometry()
    }

    if (msg.vehicle_heading !== undefined) {
      resolved.vehicle_heading = msg.vehicle_heading;
    }
    else {
      resolved.vehicle_heading = 0.0
    }

    if (msg.vehicle_linear_speed !== undefined) {
      resolved.vehicle_linear_speed = msg.vehicle_linear_speed;
    }
    else {
      resolved.vehicle_linear_speed = 0.0
    }

    if (msg.vehicle_body_vel !== undefined) {
      resolved.vehicle_body_vel = geometry_msgs.msg.Vector3.Resolve(msg.vehicle_body_vel)
    }
    else {
      resolved.vehicle_body_vel = new geometry_msgs.msg.Vector3()
    }

    if (msg.path_position !== undefined) {
      resolved.path_position = geometry_msgs.msg.Point.Resolve(msg.path_position)
    }
    else {
      resolved.path_position = new geometry_msgs.msg.Point()
    }

    if (msg.distance_along_path !== undefined) {
      resolved.distance_along_path = msg.distance_along_path;
    }
    else {
      resolved.distance_along_path = 0.0
    }

    if (msg.desired_speed !== undefined) {
      resolved.desired_speed = msg.desired_speed;
    }
    else {
      resolved.desired_speed = 0.0
    }

    if (msg.safe_speed !== undefined) {
      resolved.safe_speed = msg.safe_speed;
    }
    else {
      resolved.safe_speed = 0.0
    }

    if (msg.current_speed !== undefined) {
      resolved.current_speed = msg.current_speed;
    }
    else {
      resolved.current_speed = 0.0
    }

    if (msg.terminal_speed !== undefined) {
      resolved.terminal_speed = msg.terminal_speed;
    }
    else {
      resolved.terminal_speed = 0.0
    }

    if (msg.path_heading !== undefined) {
      resolved.path_heading = msg.path_heading;
    }
    else {
      resolved.path_heading = 0.0
    }

    if (msg.desired_heading !== undefined) {
      resolved.desired_heading = msg.desired_heading;
    }
    else {
      resolved.desired_heading = 0.0
    }

    if (msg.feed_forward_yawrate !== undefined) {
      resolved.feed_forward_yawrate = msg.feed_forward_yawrate;
    }
    else {
      resolved.feed_forward_yawrate = 0.0
    }

    if (msg.alpha_nominal_heading !== undefined) {
      resolved.alpha_nominal_heading = msg.alpha_nominal_heading;
    }
    else {
      resolved.alpha_nominal_heading = 0.0
    }

    if (msg.alpha_path_error !== undefined) {
      resolved.alpha_path_error = msg.alpha_path_error;
    }
    else {
      resolved.alpha_path_error = 0.0
    }

    if (msg.path_velocity !== undefined) {
      resolved.path_velocity = msg.path_velocity;
    }
    else {
      resolved.path_velocity = 0.0
    }

    if (msg.correction_velocity !== undefined) {
      resolved.correction_velocity = msg.correction_velocity;
    }
    else {
      resolved.correction_velocity = 0.0
    }

    if (msg.nominal_speed !== undefined) {
      resolved.nominal_speed = msg.nominal_speed;
    }
    else {
      resolved.nominal_speed = 0.0
    }

    if (msg.path_error !== undefined) {
      resolved.path_error = msg.path_error;
    }
    else {
      resolved.path_error = 0.0
    }

    if (msg.path_heading_error !== undefined) {
      resolved.path_heading_error = msg.path_heading_error;
    }
    else {
      resolved.path_heading_error = 0.0
    }

    if (msg.desired_heading_error !== undefined) {
      resolved.desired_heading_error = msg.desired_heading_error;
    }
    else {
      resolved.desired_heading_error = 0.0
    }

    if (msg.dt !== undefined) {
      resolved.dt = msg.dt;
    }
    else {
      resolved.dt = 0.0
    }

    if (msg.cmd_vel !== undefined) {
      resolved.cmd_vel = geometry_msgs.msg.Twist.Resolve(msg.cmd_vel)
    }
    else {
      resolved.cmd_vel = new geometry_msgs.msg.Twist()
    }

    if (msg.yaw_pid !== undefined) {
      resolved.yaw_pid = PIDMetrics.Resolve(msg.yaw_pid)
    }
    else {
      resolved.yaw_pid = new PIDMetrics()
    }

    if (msg.terminal_vel_pid !== undefined) {
      resolved.terminal_vel_pid = PIDMetrics.Resolve(msg.terminal_vel_pid)
    }
    else {
      resolved.terminal_vel_pid = new PIDMetrics()
    }

    if (msg.correction_vel_pid !== undefined) {
      resolved.correction_vel_pid = PIDMetrics.Resolve(msg.correction_vel_pid)
    }
    else {
      resolved.correction_vel_pid = new PIDMetrics()
    }

    return resolved;
    }
};

module.exports = DebugMetrics;
