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

class SetBufferedRecoveryBufferLengthRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bufferLength = null;
    }
    else {
      if (initObj.hasOwnProperty('bufferLength')) {
        this.bufferLength = initObj.bufferLength
      }
      else {
        this.bufferLength = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBufferedRecoveryBufferLengthRequest
    // Serialize message field [bufferLength]
    bufferOffset = _serializer.float32(obj.bufferLength, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBufferedRecoveryBufferLengthRequest
    let len;
    let data = new SetBufferedRecoveryBufferLengthRequest(null);
    // Deserialize message field [bufferLength]
    data.bufferLength = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/SetBufferedRecoveryBufferLengthRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8b3b834fc1621ee7353dbb2f70070af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 bufferLength		# specify the buffer length of recovery buffer
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBufferedRecoveryBufferLengthRequest(null);
    if (msg.bufferLength !== undefined) {
      resolved.bufferLength = msg.bufferLength;
    }
    else {
      resolved.bufferLength = 0.0
    }

    return resolved;
    }
};

class SetBufferedRecoveryBufferLengthResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBufferedRecoveryBufferLengthResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBufferedRecoveryBufferLengthResponse
    let len;
    let data = new SetBufferedRecoveryBufferLengthResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/SetBufferedRecoveryBufferLengthResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e835b04f93d0b30fd8cb71e0967a16db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success               	# true if buffer length is correctly set
    string msg                  # for info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBufferedRecoveryBufferLengthResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetBufferedRecoveryBufferLengthRequest,
  Response: SetBufferedRecoveryBufferLengthResponse,
  md5sum() { return 'e14afd668301bde6c6dea0c523ebebaf'; },
  datatype() { return 'accerion_driver_msgs/SetBufferedRecoveryBufferLength'; }
};
