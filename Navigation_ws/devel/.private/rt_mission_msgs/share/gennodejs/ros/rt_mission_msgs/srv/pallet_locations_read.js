// Auto-generated. Do not edit!

// (in-package rt_mission_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class pallet_locations_readRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pallet_locations_readRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pallet_locations_readRequest
    let len;
    let data = new pallet_locations_readRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_mission_msgs/pallet_locations_readRequest';
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
    const resolved = new pallet_locations_readRequest(null);
    return resolved;
    }
};

class pallet_locations_readResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pallet_location_names = null;
      this.pallet_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('pallet_location_names')) {
        this.pallet_location_names = initObj.pallet_location_names
      }
      else {
        this.pallet_location_names = [];
      }
      if (initObj.hasOwnProperty('pallet_ids')) {
        this.pallet_ids = initObj.pallet_ids
      }
      else {
        this.pallet_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pallet_locations_readResponse
    // Serialize message field [pallet_location_names]
    bufferOffset = _arraySerializer.string(obj.pallet_location_names, buffer, bufferOffset, null);
    // Serialize message field [pallet_ids]
    bufferOffset = _arraySerializer.string(obj.pallet_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pallet_locations_readResponse
    let len;
    let data = new pallet_locations_readResponse(null);
    // Deserialize message field [pallet_location_names]
    data.pallet_location_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [pallet_ids]
    data.pallet_ids = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pallet_location_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.pallet_ids.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_mission_msgs/pallet_locations_readResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd7004084a8c6b852a1a973d12608609';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] pallet_location_names
    string[] pallet_ids
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pallet_locations_readResponse(null);
    if (msg.pallet_location_names !== undefined) {
      resolved.pallet_location_names = msg.pallet_location_names;
    }
    else {
      resolved.pallet_location_names = []
    }

    if (msg.pallet_ids !== undefined) {
      resolved.pallet_ids = msg.pallet_ids;
    }
    else {
      resolved.pallet_ids = []
    }

    return resolved;
    }
};

module.exports = {
  Request: pallet_locations_readRequest,
  Response: pallet_locations_readResponse,
  md5sum() { return 'dd7004084a8c6b852a1a973d12608609'; },
  datatype() { return 'rt_mission_msgs/pallet_locations_read'; }
};
