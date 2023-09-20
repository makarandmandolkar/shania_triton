// Auto-generated. Do not edit!

// (in-package holonomic_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class approach_goalResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_enum = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_enum')) {
        this.error_enum = initObj.error_enum
      }
      else {
        this.error_enum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type approach_goalResult
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_enum]
    bufferOffset = _serializer.int32(obj.error_enum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type approach_goalResult
    let len;
    let data = new approach_goalResult(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_enum]
    data.error_enum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'holonomic_controller/approach_goalResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '578dbba02541007ea7b63f44e3b666d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    bool success
    
    int32 ERROR_GENERIC_ERROR=0
    int32 ERROR_TIMEOUT=1
    int32 ERROR_PREEMPT=2
    int32 ERROR_DEADMAN_IS_OFF=3
    int32 ERROR_CONTROLLER_OVERSHOOT=4
    
    int32 error_enum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new approach_goalResult(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_enum !== undefined) {
      resolved.error_enum = msg.error_enum;
    }
    else {
      resolved.error_enum = 0
    }

    return resolved;
    }
};

// Constants for message
approach_goalResult.Constants = {
  ERROR_GENERIC_ERROR: 0,
  ERROR_TIMEOUT: 1,
  ERROR_PREEMPT: 2,
  ERROR_DEADMAN_IS_OFF: 3,
  ERROR_CONTROLLER_OVERSHOOT: 4,
}

module.exports = approach_goalResult;
