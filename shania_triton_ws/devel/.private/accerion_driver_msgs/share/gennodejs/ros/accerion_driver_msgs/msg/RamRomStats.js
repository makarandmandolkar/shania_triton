// Auto-generated. Do not edit!

// (in-package accerion_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DirSizePart = require('./DirSizePart.js');

//-----------------------------------------------------------

class RamRomStats {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.romAvailable = null;
      this.romTotal = null;
      this.sdAvailable = null;
      this.sdTotal = null;
      this.ramUsed = null;
      this.ramTotal = null;
      this.parts = null;
    }
    else {
      if (initObj.hasOwnProperty('romAvailable')) {
        this.romAvailable = initObj.romAvailable
      }
      else {
        this.romAvailable = 0;
      }
      if (initObj.hasOwnProperty('romTotal')) {
        this.romTotal = initObj.romTotal
      }
      else {
        this.romTotal = 0;
      }
      if (initObj.hasOwnProperty('sdAvailable')) {
        this.sdAvailable = initObj.sdAvailable
      }
      else {
        this.sdAvailable = 0;
      }
      if (initObj.hasOwnProperty('sdTotal')) {
        this.sdTotal = initObj.sdTotal
      }
      else {
        this.sdTotal = 0;
      }
      if (initObj.hasOwnProperty('ramUsed')) {
        this.ramUsed = initObj.ramUsed
      }
      else {
        this.ramUsed = 0;
      }
      if (initObj.hasOwnProperty('ramTotal')) {
        this.ramTotal = initObj.ramTotal
      }
      else {
        this.ramTotal = 0;
      }
      if (initObj.hasOwnProperty('parts')) {
        this.parts = initObj.parts
      }
      else {
        this.parts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RamRomStats
    // Serialize message field [romAvailable]
    bufferOffset = _serializer.uint32(obj.romAvailable, buffer, bufferOffset);
    // Serialize message field [romTotal]
    bufferOffset = _serializer.uint32(obj.romTotal, buffer, bufferOffset);
    // Serialize message field [sdAvailable]
    bufferOffset = _serializer.uint32(obj.sdAvailable, buffer, bufferOffset);
    // Serialize message field [sdTotal]
    bufferOffset = _serializer.uint32(obj.sdTotal, buffer, bufferOffset);
    // Serialize message field [ramUsed]
    bufferOffset = _serializer.uint16(obj.ramUsed, buffer, bufferOffset);
    // Serialize message field [ramTotal]
    bufferOffset = _serializer.uint16(obj.ramTotal, buffer, bufferOffset);
    // Serialize message field [parts]
    // Serialize the length for message field [parts]
    bufferOffset = _serializer.uint32(obj.parts.length, buffer, bufferOffset);
    obj.parts.forEach((val) => {
      bufferOffset = DirSizePart.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RamRomStats
    let len;
    let data = new RamRomStats(null);
    // Deserialize message field [romAvailable]
    data.romAvailable = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [romTotal]
    data.romTotal = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sdAvailable]
    data.sdAvailable = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sdTotal]
    data.sdTotal = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ramUsed]
    data.ramUsed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ramTotal]
    data.ramTotal = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [parts]
    // Deserialize array length for message field [parts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parts[i] = DirSizePart.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.parts.forEach((val) => {
      length += DirSizePart.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'accerion_driver_msgs/RamRomStats';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7806d72dc3ef14ad7527222b80c652ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RamRomStats(null);
    if (msg.romAvailable !== undefined) {
      resolved.romAvailable = msg.romAvailable;
    }
    else {
      resolved.romAvailable = 0
    }

    if (msg.romTotal !== undefined) {
      resolved.romTotal = msg.romTotal;
    }
    else {
      resolved.romTotal = 0
    }

    if (msg.sdAvailable !== undefined) {
      resolved.sdAvailable = msg.sdAvailable;
    }
    else {
      resolved.sdAvailable = 0
    }

    if (msg.sdTotal !== undefined) {
      resolved.sdTotal = msg.sdTotal;
    }
    else {
      resolved.sdTotal = 0
    }

    if (msg.ramUsed !== undefined) {
      resolved.ramUsed = msg.ramUsed;
    }
    else {
      resolved.ramUsed = 0
    }

    if (msg.ramTotal !== undefined) {
      resolved.ramTotal = msg.ramTotal;
    }
    else {
      resolved.ramTotal = 0
    }

    if (msg.parts !== undefined) {
      resolved.parts = new Array(msg.parts.length);
      for (let i = 0; i < resolved.parts.length; ++i) {
        resolved.parts[i] = DirSizePart.Resolve(msg.parts[i]);
      }
    }
    else {
      resolved.parts = []
    }

    return resolved;
    }
};

module.exports = RamRomStats;
