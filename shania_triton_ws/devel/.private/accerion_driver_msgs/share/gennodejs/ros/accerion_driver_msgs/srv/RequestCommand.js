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


//-----------------------------------------------------------

class RequestCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_command = null;
    }
    else {
      if (initObj.hasOwnProperty('request_command')) {
        this.request_command = initObj.request_command
      }
      else {
        this.request_command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestCommandRequest
    // Serialize message field [request_command]
    bufferOffset = _serializer.string(obj.request_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestCommandRequest
    let len;
    let data = new RequestCommandRequest(null);
    // Deserialize message field [request_command]
    data.request_command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.request_command.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/RequestCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbe0969e4c43c02ed1ead69cf3f629f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string request_command      # [map, etc] the desired info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestCommandRequest(null);
    if (msg.request_command !== undefined) {
      resolved.request_command = msg.request_command;
    }
    else {
      resolved.request_command = ''
    }

    return resolved;
    }
};

class RequestCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RequestCommandResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RequestCommandResponse
    let len;
    let data = new RequestCommandResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/RequestCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   				# indicate successful run of triggered service
    string message 				# informational, e.g. for error messages
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RequestCommandResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RequestCommandRequest,
  Response: RequestCommandResponse,
  md5sum() { return 'cf56f3660399cfb3343059395c1263ca'; },
  datatype() { return 'accerion_driver_msgs/RequestCommand'; }
};
