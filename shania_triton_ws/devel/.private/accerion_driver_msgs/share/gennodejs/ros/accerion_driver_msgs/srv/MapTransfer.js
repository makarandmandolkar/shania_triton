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

class MapTransferRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
      this.placement_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
      if (initObj.hasOwnProperty('placement_mode')) {
        this.placement_mode = initObj.placement_mode
      }
      else {
        this.placement_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapTransferRequest
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    // Serialize message field [placement_mode]
    bufferOffset = _serializer.uint8(obj.placement_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapTransferRequest
    let len;
    let data = new MapTransferRequest(null);
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [placement_mode]
    data.placement_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.path.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/MapTransferRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13a5580f121f32043d8aa6270f27d900';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string path                 # Path where the file is located or should be stored
    uint8 placement_mode        # In case of a map, 0 = replace, 1 = merge, 2 = update
    uint8 REPLACE = 0
    uint8 MERGE = 1
    uint8 UPDATE = 2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapTransferRequest(null);
    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    if (msg.placement_mode !== undefined) {
      resolved.placement_mode = msg.placement_mode;
    }
    else {
      resolved.placement_mode = 0
    }

    return resolved;
    }
};

// Constants for message
MapTransferRequest.Constants = {
  REPLACE: 0,
  MERGE: 1,
  UPDATE: 2,
}

class MapTransferResponse {
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
    // Serializes a message object of type MapTransferResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapTransferResponse
    let len;
    let data = new MapTransferResponse(null);
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
    return 'accerion_driver_msgs/MapTransferResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success                # boolean that holds whether the request has been made
    string message              # message that contains information about the request(success/failure etc.)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapTransferResponse(null);
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
  Request: MapTransferRequest,
  Response: MapTransferResponse,
  md5sum() { return 'd4d6ab770f960bd602399ac9d578e6ee'; },
  datatype() { return 'accerion_driver_msgs/MapTransfer'; }
};
