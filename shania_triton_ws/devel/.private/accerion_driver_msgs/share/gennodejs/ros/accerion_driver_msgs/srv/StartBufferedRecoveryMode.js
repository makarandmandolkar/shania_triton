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

class StartBufferedRecoveryModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xPos = null;
      this.yPos = null;
      this.radius = null;
      this.fullMapSearch = null;
    }
    else {
      if (initObj.hasOwnProperty('xPos')) {
        this.xPos = initObj.xPos
      }
      else {
        this.xPos = 0.0;
      }
      if (initObj.hasOwnProperty('yPos')) {
        this.yPos = initObj.yPos
      }
      else {
        this.yPos = 0.0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('fullMapSearch')) {
        this.fullMapSearch = initObj.fullMapSearch
      }
      else {
        this.fullMapSearch = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartBufferedRecoveryModeRequest
    // Serialize message field [xPos]
    bufferOffset = _serializer.float32(obj.xPos, buffer, bufferOffset);
    // Serialize message field [yPos]
    bufferOffset = _serializer.float32(obj.yPos, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [fullMapSearch]
    bufferOffset = _serializer.bool(obj.fullMapSearch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartBufferedRecoveryModeRequest
    let len;
    let data = new StartBufferedRecoveryModeRequest(null);
    // Deserialize message field [xPos]
    data.xPos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yPos]
    data.yPos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fullMapSearch]
    data.fullMapSearch = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/StartBufferedRecoveryModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87fec0ffb4a91d839aea3d715e9b21ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 xPos			# specify the anchor x position
    float32 yPos			# specify the anchor y position
    float32 radius	        # specify the search radius
    bool    fullMapSearch   # specify if full map search mode is on
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartBufferedRecoveryModeRequest(null);
    if (msg.xPos !== undefined) {
      resolved.xPos = msg.xPos;
    }
    else {
      resolved.xPos = 0.0
    }

    if (msg.yPos !== undefined) {
      resolved.yPos = msg.yPos;
    }
    else {
      resolved.yPos = 0.0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.fullMapSearch !== undefined) {
      resolved.fullMapSearch = msg.fullMapSearch;
    }
    else {
      resolved.fullMapSearch = false
    }

    return resolved;
    }
};

class StartBufferedRecoveryModeResponse {
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
    // Serializes a message object of type StartBufferedRecoveryModeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartBufferedRecoveryModeResponse
    let len;
    let data = new StartBufferedRecoveryModeResponse(null);
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
    return 'accerion_driver_msgs/StartBufferedRecoveryModeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e835b04f93d0b30fd8cb71e0967a16db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success               	# true if buffered recovery mode is started
    string msg                  # for info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartBufferedRecoveryModeResponse(null);
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
  Request: StartBufferedRecoveryModeRequest,
  Response: StartBufferedRecoveryModeResponse,
  md5sum() { return 'b55e14589ad6c01276c8060ce8703764'; },
  datatype() { return 'accerion_driver_msgs/StartBufferedRecoveryMode'; }
};
