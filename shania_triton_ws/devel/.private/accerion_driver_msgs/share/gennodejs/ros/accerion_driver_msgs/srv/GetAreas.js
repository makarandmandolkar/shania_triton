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

class GetAreasRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAreasRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAreasRequest
    let len;
    let data = new GetAreasRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/GetAreasRequest';
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
    const resolved = new GetAreasRequest(null);
    return resolved;
    }
};

class GetAreasResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.activeArea = null;
      this.availbleAreas = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('activeArea')) {
        this.activeArea = initObj.activeArea
      }
      else {
        this.activeArea = 0;
      }
      if (initObj.hasOwnProperty('availbleAreas')) {
        this.availbleAreas = initObj.availbleAreas
      }
      else {
        this.availbleAreas = [];
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
    // Serializes a message object of type GetAreasResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [activeArea]
    bufferOffset = _serializer.uint16(obj.activeArea, buffer, bufferOffset);
    // Serialize message field [availbleAreas]
    bufferOffset = _arraySerializer.uint16(obj.availbleAreas, buffer, bufferOffset, null);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAreasResponse
    let len;
    let data = new GetAreasResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [activeArea]
    data.activeArea = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [availbleAreas]
    data.availbleAreas = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.availbleAreas.length;
    length += object.message.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/GetAreasResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c78e2d446f78752232f22114cb77d34e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success                    # was the request succesful
    uint16 activeArea   		    # contains the ID of the area that is currently selected
    uint16[]  availbleAreas         # contains the ID's of all the existing areas, the first one being the active one
    string message 				    # informational, e.g. for error messages
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAreasResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.activeArea !== undefined) {
      resolved.activeArea = msg.activeArea;
    }
    else {
      resolved.activeArea = 0
    }

    if (msg.availbleAreas !== undefined) {
      resolved.availbleAreas = msg.availbleAreas;
    }
    else {
      resolved.availbleAreas = []
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
  Request: GetAreasRequest,
  Response: GetAreasResponse,
  md5sum() { return 'c78e2d446f78752232f22114cb77d34e'; },
  datatype() { return 'accerion_driver_msgs/GetAreas'; }
};
