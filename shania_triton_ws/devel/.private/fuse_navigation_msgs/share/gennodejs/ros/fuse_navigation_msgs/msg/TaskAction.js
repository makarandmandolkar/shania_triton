// Auto-generated. Do not edit!

// (in-package fuse_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TaskAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.arguments = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('arguments')) {
        this.arguments = initObj.arguments
      }
      else {
        this.arguments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskAction
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [arguments]
    bufferOffset = _arraySerializer.string(obj.arguments, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskAction
    let len;
    let data = new TaskAction(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [arguments]
    data.arguments = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    object.arguments.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fuse_navigation_msgs/TaskAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c435bb0ff50e10a641eea4b6379dd80a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Represents an action as part of a larger agent task
    string name
    string[] arguments
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskAction(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.arguments !== undefined) {
      resolved.arguments = msg.arguments;
    }
    else {
      resolved.arguments = []
    }

    return resolved;
    }
};

module.exports = TaskAction;
