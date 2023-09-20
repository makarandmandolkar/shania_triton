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

class pallet_locations_writeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pick_location_name = null;
      this.place_location_name = null;
      this.pallet_id = null;
      this.priority = null;
      this.payload_dimension = null;
    }
    else {
      if (initObj.hasOwnProperty('pick_location_name')) {
        this.pick_location_name = initObj.pick_location_name
      }
      else {
        this.pick_location_name = '';
      }
      if (initObj.hasOwnProperty('place_location_name')) {
        this.place_location_name = initObj.place_location_name
      }
      else {
        this.place_location_name = '';
      }
      if (initObj.hasOwnProperty('pallet_id')) {
        this.pallet_id = initObj.pallet_id
      }
      else {
        this.pallet_id = '';
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = false;
      }
      if (initObj.hasOwnProperty('payload_dimension')) {
        this.payload_dimension = initObj.payload_dimension
      }
      else {
        this.payload_dimension = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pallet_locations_writeRequest
    // Serialize message field [pick_location_name]
    bufferOffset = _serializer.string(obj.pick_location_name, buffer, bufferOffset);
    // Serialize message field [place_location_name]
    bufferOffset = _serializer.string(obj.place_location_name, buffer, bufferOffset);
    // Serialize message field [pallet_id]
    bufferOffset = _serializer.string(obj.pallet_id, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.bool(obj.priority, buffer, bufferOffset);
    // Serialize message field [payload_dimension]
    bufferOffset = _serializer.bool(obj.payload_dimension, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pallet_locations_writeRequest
    let len;
    let data = new pallet_locations_writeRequest(null);
    // Deserialize message field [pick_location_name]
    data.pick_location_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [place_location_name]
    data.place_location_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pallet_id]
    data.pallet_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [payload_dimension]
    data.payload_dimension = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pick_location_name.length;
    length += object.place_location_name.length;
    length += object.pallet_id.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_mission_msgs/pallet_locations_writeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2e94aeef1c8d856a93691cbd1486dd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pick_location_name
    string place_location_name
    string pallet_id
    bool priority
    bool payload_dimension
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pallet_locations_writeRequest(null);
    if (msg.pick_location_name !== undefined) {
      resolved.pick_location_name = msg.pick_location_name;
    }
    else {
      resolved.pick_location_name = ''
    }

    if (msg.place_location_name !== undefined) {
      resolved.place_location_name = msg.place_location_name;
    }
    else {
      resolved.place_location_name = ''
    }

    if (msg.pallet_id !== undefined) {
      resolved.pallet_id = msg.pallet_id;
    }
    else {
      resolved.pallet_id = ''
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = false
    }

    if (msg.payload_dimension !== undefined) {
      resolved.payload_dimension = msg.payload_dimension;
    }
    else {
      resolved.payload_dimension = false
    }

    return resolved;
    }
};

class pallet_locations_writeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pallet_locations_writeResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pallet_locations_writeResponse
    let len;
    let data = new pallet_locations_writeResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_mission_msgs/pallet_locations_writeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pallet_locations_writeResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: pallet_locations_writeRequest,
  Response: pallet_locations_writeResponse,
  md5sum() { return 'a5b86be52d305e13b8e0c965235e45f3'; },
  datatype() { return 'rt_mission_msgs/pallet_locations_write'; }
};
