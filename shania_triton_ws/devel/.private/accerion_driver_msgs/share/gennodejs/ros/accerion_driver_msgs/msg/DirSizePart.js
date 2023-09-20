// Auto-generated. Do not edit!

// (in-package accerion_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DirSizePart {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.sizeInMB = null;
      this.nameLength = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('sizeInMB')) {
        this.sizeInMB = initObj.sizeInMB
      }
      else {
        this.sizeInMB = 0;
      }
      if (initObj.hasOwnProperty('nameLength')) {
        this.nameLength = initObj.nameLength
      }
      else {
        this.nameLength = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DirSizePart
    // Serialize message field [type]
    bufferOffset = _serializer.uint16(obj.type, buffer, bufferOffset);
    // Serialize message field [sizeInMB]
    bufferOffset = _serializer.uint32(obj.sizeInMB, buffer, bufferOffset);
    // Serialize message field [nameLength]
    bufferOffset = _serializer.uint32(obj.nameLength, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DirSizePart
    let len;
    let data = new DirSizePart(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sizeInMB]
    data.sizeInMB = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [nameLength]
    data.nameLength = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'accerion_driver_msgs/DirSizePart';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '148a4802f96912a7e6838d49c25793cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DirSizePart(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.sizeInMB !== undefined) {
      resolved.sizeInMB = msg.sizeInMB;
    }
    else {
      resolved.sizeInMB = 0
    }

    if (msg.nameLength !== undefined) {
      resolved.nameLength = msg.nameLength;
    }
    else {
      resolved.nameLength = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

module.exports = DirSizePart;
