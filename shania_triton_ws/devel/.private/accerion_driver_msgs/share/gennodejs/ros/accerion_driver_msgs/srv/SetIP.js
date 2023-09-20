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

class SetIPRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ip = null;
      this.netmask = null;
      this.gateway = null;
    }
    else {
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('netmask')) {
        this.netmask = initObj.netmask
      }
      else {
        this.netmask = '';
      }
      if (initObj.hasOwnProperty('gateway')) {
        this.gateway = initObj.gateway
      }
      else {
        this.gateway = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetIPRequest
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [netmask]
    bufferOffset = _serializer.string(obj.netmask, buffer, bufferOffset);
    // Serialize message field [gateway]
    bufferOffset = _serializer.string(obj.gateway, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIPRequest
    let len;
    let data = new SetIPRequest(null);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [netmask]
    data.netmask = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gateway]
    data.gateway = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ip.length;
    length += object.netmask.length;
    length += object.gateway.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/SetIPRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44584b3caa1c06212c51142c00f22b55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ip                   # e.g. 192.168.2.10
    string netmask              # e.g. 255.255.255.0
    string gateway              # e.g. 192.168.2.0
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetIPRequest(null);
    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.netmask !== undefined) {
      resolved.netmask = msg.netmask;
    }
    else {
      resolved.netmask = ''
    }

    if (msg.gateway !== undefined) {
      resolved.gateway = msg.gateway;
    }
    else {
      resolved.gateway = ''
    }

    return resolved;
    }
};

class SetIPResponse {
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
    // Serializes a message object of type SetIPResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetIPResponse
    let len;
    let data = new SetIPResponse(null);
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
    return 'accerion_driver_msgs/SetIPResponse';
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
    const resolved = new SetIPResponse(null);
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
  Request: SetIPRequest,
  Response: SetIPResponse,
  md5sum() { return '9c529b52af66afe4e5b172389c998e06'; },
  datatype() { return 'accerion_driver_msgs/SetIP'; }
};
