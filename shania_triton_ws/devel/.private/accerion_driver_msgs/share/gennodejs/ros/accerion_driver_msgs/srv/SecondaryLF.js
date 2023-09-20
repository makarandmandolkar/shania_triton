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

class SecondaryLFRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clusterID = null;
    }
    else {
      if (initObj.hasOwnProperty('clusterID')) {
        this.clusterID = initObj.clusterID
      }
      else {
        this.clusterID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SecondaryLFRequest
    // Serialize message field [clusterID]
    bufferOffset = _serializer.uint16(obj.clusterID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SecondaryLFRequest
    let len;
    let data = new SecondaryLFRequest(null);
    // Deserialize message field [clusterID]
    data.clusterID = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/SecondaryLFRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0a9a4b847ac5299245224ada02c00e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 clusterID	      # uint16_t ID of the Cluster that you want the closest point of
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SecondaryLFRequest(null);
    if (msg.clusterID !== undefined) {
      resolved.clusterID = msg.clusterID;
    }
    else {
      resolved.clusterID = 0
    }

    return resolved;
    }
};

class SecondaryLFResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.timeStamp = null;
      this.x = null;
      this.y = null;
      this.heading = null;
      this.closestPointX = null;
      this.closestPointY = null;
      this.line_heading = null;
      this.clusterID = null;
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
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('closestPointX')) {
        this.closestPointX = initObj.closestPointX
      }
      else {
        this.closestPointX = 0.0;
      }
      if (initObj.hasOwnProperty('closestPointY')) {
        this.closestPointY = initObj.closestPointY
      }
      else {
        this.closestPointY = 0.0;
      }
      if (initObj.hasOwnProperty('line_heading')) {
        this.line_heading = initObj.line_heading
      }
      else {
        this.line_heading = 0.0;
      }
      if (initObj.hasOwnProperty('clusterID')) {
        this.clusterID = initObj.clusterID
      }
      else {
        this.clusterID = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SecondaryLFResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint64(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [closestPointX]
    bufferOffset = _serializer.float32(obj.closestPointX, buffer, bufferOffset);
    // Serialize message field [closestPointY]
    bufferOffset = _serializer.float32(obj.closestPointY, buffer, bufferOffset);
    // Serialize message field [line_heading]
    bufferOffset = _serializer.float32(obj.line_heading, buffer, bufferOffset);
    // Serialize message field [clusterID]
    bufferOffset = _serializer.uint16(obj.clusterID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SecondaryLFResponse
    let len;
    let data = new SecondaryLFResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [closestPointX]
    data.closestPointX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [closestPointY]
    data.closestPointY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [line_heading]
    data.line_heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [clusterID]
    data.clusterID = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 39;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/SecondaryLFResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fffb73d647782f825b2796e38e707ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   	      # indicate successful run of triggered service
    string message 	      # informational, e.g. for error messages
    uint64 timeStamp             # Timestamp when the message was made
    float32 x                    # Position of the sensor in meters x
    float32 y                    # Position of the sensor in meters y
    float32 heading              # Heading of the sensor in degrees
    float32 closestPointX        # Closest point on line in meters x
    float32 closestPointY        # Closest point on line in meters y
    float32 line_heading         # heading of the line on closest point
    uint16 clusterID             # ClusterID of the requested cluster line
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SecondaryLFResponse(null);
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

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.closestPointX !== undefined) {
      resolved.closestPointX = msg.closestPointX;
    }
    else {
      resolved.closestPointX = 0.0
    }

    if (msg.closestPointY !== undefined) {
      resolved.closestPointY = msg.closestPointY;
    }
    else {
      resolved.closestPointY = 0.0
    }

    if (msg.line_heading !== undefined) {
      resolved.line_heading = msg.line_heading;
    }
    else {
      resolved.line_heading = 0.0
    }

    if (msg.clusterID !== undefined) {
      resolved.clusterID = msg.clusterID;
    }
    else {
      resolved.clusterID = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SecondaryLFRequest,
  Response: SecondaryLFResponse,
  md5sum() { return '941d90c566e891f5d4b78bfaff569951'; },
  datatype() { return 'accerion_driver_msgs/SecondaryLF'; }
};
