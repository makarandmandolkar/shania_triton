// Auto-generated. Do not edit!

// (in-package holonomic_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DockingGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_parent_frame = null;
      this.goal_position = null;
      this.goal_euler_orientation = null;
      this.goal_tolerance = null;
      this.lin_vel_max = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_parent_frame')) {
        this.goal_parent_frame = initObj.goal_parent_frame
      }
      else {
        this.goal_parent_frame = '';
      }
      if (initObj.hasOwnProperty('goal_position')) {
        this.goal_position = initObj.goal_position
      }
      else {
        this.goal_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('goal_euler_orientation')) {
        this.goal_euler_orientation = initObj.goal_euler_orientation
      }
      else {
        this.goal_euler_orientation = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('goal_tolerance')) {
        this.goal_tolerance = initObj.goal_tolerance
      }
      else {
        this.goal_tolerance = 0.0;
      }
      if (initObj.hasOwnProperty('lin_vel_max')) {
        this.lin_vel_max = initObj.lin_vel_max
      }
      else {
        this.lin_vel_max = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockingGoal
    // Serialize message field [goal_parent_frame]
    bufferOffset = _serializer.string(obj.goal_parent_frame, buffer, bufferOffset);
    // Serialize message field [goal_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.goal_position, buffer, bufferOffset);
    // Serialize message field [goal_euler_orientation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.goal_euler_orientation, buffer, bufferOffset);
    // Serialize message field [goal_tolerance]
    bufferOffset = _serializer.float64(obj.goal_tolerance, buffer, bufferOffset);
    // Serialize message field [lin_vel_max]
    bufferOffset = _serializer.float64(obj.lin_vel_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockingGoal
    let len;
    let data = new DockingGoal(null);
    // Deserialize message field [goal_parent_frame]
    data.goal_parent_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_position]
    data.goal_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_euler_orientation]
    data.goal_euler_orientation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_tolerance]
    data.goal_tolerance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lin_vel_max]
    data.lin_vel_max = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.goal_parent_frame.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'holonomic_controller/DockingGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a01939c8197b95cd380fc2893fea6c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Goal
    string goal_parent_frame
    geometry_msgs/Point goal_position
    geometry_msgs/Vector3 goal_euler_orientation
    float64 goal_tolerance
    float64 lin_vel_max
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DockingGoal(null);
    if (msg.goal_parent_frame !== undefined) {
      resolved.goal_parent_frame = msg.goal_parent_frame;
    }
    else {
      resolved.goal_parent_frame = ''
    }

    if (msg.goal_position !== undefined) {
      resolved.goal_position = geometry_msgs.msg.Point.Resolve(msg.goal_position)
    }
    else {
      resolved.goal_position = new geometry_msgs.msg.Point()
    }

    if (msg.goal_euler_orientation !== undefined) {
      resolved.goal_euler_orientation = geometry_msgs.msg.Vector3.Resolve(msg.goal_euler_orientation)
    }
    else {
      resolved.goal_euler_orientation = new geometry_msgs.msg.Vector3()
    }

    if (msg.goal_tolerance !== undefined) {
      resolved.goal_tolerance = msg.goal_tolerance;
    }
    else {
      resolved.goal_tolerance = 0.0
    }

    if (msg.lin_vel_max !== undefined) {
      resolved.lin_vel_max = msg.lin_vel_max;
    }
    else {
      resolved.lin_vel_max = 0.0
    }

    return resolved;
    }
};

module.exports = DockingGoal;
