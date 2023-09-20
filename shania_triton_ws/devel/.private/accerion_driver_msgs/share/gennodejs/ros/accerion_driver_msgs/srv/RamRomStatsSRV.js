// Auto-generated. Do not edit!

// (in-package accerion_driver_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let RamRomStats = require('../msg/RamRomStats.js');

//-----------------------------------------------------------

class RamRomStatsSRVRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RamRomStatsSRVRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RamRomStatsSRVRequest
    let len;
    let data = new RamRomStatsSRVRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/RamRomStatsSRVRequest';
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
    const resolved = new RamRomStatsSRVRequest(null);
    return resolved;
    }
};

class RamRomStatsSRVResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.stats = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('stats')) {
        this.stats = initObj.stats
      }
      else {
        this.stats = new RamRomStats();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RamRomStatsSRVResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [stats]
    bufferOffset = RamRomStats.serialize(obj.stats, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RamRomStatsSRVResponse
    let len;
    let data = new RamRomStatsSRVResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stats]
    data.stats = RamRomStats.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += RamRomStats.getMessageSize(object.stats);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/RamRomStatsSRVResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f929a081cee331427f8c52eba3b62cee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   				# indicate successful run of triggered service
    RamRomStats stats
    
    ================================================================================
    MSG: accerion_driver_msgs/RamRomStats
    uint32 romAvailable
    uint32 romTotal
    uint32 sdAvailable
    uint32 sdTotal
    uint16 ramUsed
    uint16 ramTotal
    DirSizePart[] parts
    ================================================================================
    MSG: accerion_driver_msgs/DirSizePart
    uint16 type
    uint32 sizeInMB
    uint32 nameLength
    string name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RamRomStatsSRVResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.stats !== undefined) {
      resolved.stats = RamRomStats.Resolve(msg.stats)
    }
    else {
      resolved.stats = new RamRomStats()
    }

    return resolved;
    }
};

module.exports = {
  Request: RamRomStatsSRVRequest,
  Response: RamRomStatsSRVResponse,
  md5sum() { return 'f929a081cee331427f8c52eba3b62cee'; },
  datatype() { return 'accerion_driver_msgs/RamRomStatsSRV'; }
};
