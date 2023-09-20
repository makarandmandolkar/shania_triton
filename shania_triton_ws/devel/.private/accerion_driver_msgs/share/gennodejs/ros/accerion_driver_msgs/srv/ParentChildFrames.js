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

class ParentChildFramesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parent = null;
      this.child = null;
    }
    else {
      if (initObj.hasOwnProperty('parent')) {
        this.parent = initObj.parent
      }
      else {
        this.parent = '';
      }
      if (initObj.hasOwnProperty('child')) {
        this.child = initObj.child
      }
      else {
        this.child = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParentChildFramesRequest
    // Serialize message field [parent]
    bufferOffset = _serializer.string(obj.parent, buffer, bufferOffset);
    // Serialize message field [child]
    bufferOffset = _serializer.string(obj.child, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParentChildFramesRequest
    let len;
    let data = new ParentChildFramesRequest(null);
    // Deserialize message field [parent]
    data.parent = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [child]
    data.child = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.parent.length;
    length += object.child.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/ParentChildFramesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0017acdf94fdb473a4569c341cdf969e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string parent               # parent frame (e.g. map)
    string child                # child frame (e.g. base_link)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParentChildFramesRequest(null);
    if (msg.parent !== undefined) {
      resolved.parent = msg.parent;
    }
    else {
      resolved.parent = ''
    }

    if (msg.child !== undefined) {
      resolved.child = msg.child;
    }
    else {
      resolved.child = ''
    }

    return resolved;
    }
};

class ParentChildFramesResponse {
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
    // Serializes a message object of type ParentChildFramesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParentChildFramesResponse
    let len;
    let data = new ParentChildFramesResponse(null);
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
    return 'accerion_driver_msgs/ParentChildFramesResponse';
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
    const resolved = new ParentChildFramesResponse(null);
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
  Request: ParentChildFramesRequest,
  Response: ParentChildFramesResponse,
  md5sum() { return '289a171e99d7db2cbd264d90af1d7948'; },
  datatype() { return 'accerion_driver_msgs/ParentChildFrames'; }
};
