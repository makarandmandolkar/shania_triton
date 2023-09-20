// Auto-generated. Do not edit!

// (in-package fuse_pathfollowing_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PIDMetrics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p_effort = null;
      this.i_effort = null;
      this.d_effort = null;
      this.total_effort = null;
    }
    else {
      if (initObj.hasOwnProperty('p_effort')) {
        this.p_effort = initObj.p_effort
      }
      else {
        this.p_effort = 0.0;
      }
      if (initObj.hasOwnProperty('i_effort')) {
        this.i_effort = initObj.i_effort
      }
      else {
        this.i_effort = 0.0;
      }
      if (initObj.hasOwnProperty('d_effort')) {
        this.d_effort = initObj.d_effort
      }
      else {
        this.d_effort = 0.0;
      }
      if (initObj.hasOwnProperty('total_effort')) {
        this.total_effort = initObj.total_effort
      }
      else {
        this.total_effort = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PIDMetrics
    // Serialize message field [p_effort]
    bufferOffset = _serializer.float64(obj.p_effort, buffer, bufferOffset);
    // Serialize message field [i_effort]
    bufferOffset = _serializer.float64(obj.i_effort, buffer, bufferOffset);
    // Serialize message field [d_effort]
    bufferOffset = _serializer.float64(obj.d_effort, buffer, bufferOffset);
    // Serialize message field [total_effort]
    bufferOffset = _serializer.float64(obj.total_effort, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PIDMetrics
    let len;
    let data = new PIDMetrics(null);
    // Deserialize message field [p_effort]
    data.p_effort = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [i_effort]
    data.i_effort = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_effort]
    data.d_effort = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [total_effort]
    data.total_effort = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fuse_pathfollowing_msgs/PIDMetrics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5f1ade5268ff3fd49169efd23b304bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PIDMetrics(null);
    if (msg.p_effort !== undefined) {
      resolved.p_effort = msg.p_effort;
    }
    else {
      resolved.p_effort = 0.0
    }

    if (msg.i_effort !== undefined) {
      resolved.i_effort = msg.i_effort;
    }
    else {
      resolved.i_effort = 0.0
    }

    if (msg.d_effort !== undefined) {
      resolved.d_effort = msg.d_effort;
    }
    else {
      resolved.d_effort = 0.0
    }

    if (msg.total_effort !== undefined) {
      resolved.total_effort = msg.total_effort;
    }
    else {
      resolved.total_effort = 0.0
    }

    return resolved;
    }
};

module.exports = PIDMetrics;
