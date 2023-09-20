// Auto-generated. Do not edit!

// (in-package rt_carriage_controller_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class pallet_fork_positionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pallet_fork_positionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pallet_fork_positionRequest
    let len;
    let data = new pallet_fork_positionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_carriage_controller_msgs/pallet_fork_positionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pallet_fork_positionRequest(null);
    return resolved;
    }
};

class pallet_fork_positionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset = null;
      this.palletOnFork = null;
    }
    else {
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
      if (initObj.hasOwnProperty('palletOnFork')) {
        this.palletOnFork = initObj.palletOnFork
      }
      else {
        this.palletOnFork = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pallet_fork_positionResponse
    // Serialize message field [offset]
    bufferOffset = _serializer.float32(obj.offset, buffer, bufferOffset);
    // Serialize message field [palletOnFork]
    bufferOffset = _serializer.bool(obj.palletOnFork, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pallet_fork_positionResponse
    let len;
    let data = new pallet_fork_positionResponse(null);
    // Deserialize message field [offset]
    data.offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [palletOnFork]
    data.palletOnFork = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_carriage_controller_msgs/pallet_fork_positionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28a2169120952b9ccef27ea2cdcbc4e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 offset
    bool palletOnFork
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pallet_fork_positionResponse(null);
    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    if (msg.palletOnFork !== undefined) {
      resolved.palletOnFork = msg.palletOnFork;
    }
    else {
      resolved.palletOnFork = false
    }

    return resolved;
    }
};

module.exports = {
  Request: pallet_fork_positionRequest,
  Response: pallet_fork_positionResponse,
  md5sum() { return '28a2169120952b9ccef27ea2cdcbc4e5'; },
  datatype() { return 'rt_carriage_controller_msgs/pallet_fork_position'; }
};
