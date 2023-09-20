// Auto-generated. Do not edit!

// (in-package rt_carriage_controller_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class carriage_sensor_diagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.raw_data = null;
      this.filtered_data = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('raw_data')) {
        this.raw_data = initObj.raw_data
      }
      else {
        this.raw_data = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('filtered_data')) {
        this.filtered_data = initObj.filtered_data
      }
      else {
        this.filtered_data = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type carriage_sensor_diagnostics
    // Check that the constant length array field [name] has the right length
    if (obj.name.length !== 6) {
      throw new Error('Unable to serialize array field name - length must be 6')
    }
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, 6);
    // Check that the constant length array field [raw_data] has the right length
    if (obj.raw_data.length !== 6) {
      throw new Error('Unable to serialize array field raw_data - length must be 6')
    }
    // Serialize message field [raw_data]
    bufferOffset = _arraySerializer.float64(obj.raw_data, buffer, bufferOffset, 6);
    // Check that the constant length array field [filtered_data] has the right length
    if (obj.filtered_data.length !== 6) {
      throw new Error('Unable to serialize array field filtered_data - length must be 6')
    }
    // Serialize message field [filtered_data]
    bufferOffset = _arraySerializer.float64(obj.filtered_data, buffer, bufferOffset, 6);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 6) {
      throw new Error('Unable to serialize array field position - length must be 6')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type carriage_sensor_diagnostics
    let len;
    let data = new carriage_sensor_diagnostics(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, 6)
    // Deserialize message field [raw_data]
    data.raw_data = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [filtered_data]
    data.filtered_data = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_carriage_controller_msgs/carriage_sensor_diagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0617ade47f8a69926360e2cca79d5e22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[6] name
    float64[6] raw_data
    float64[6] filtered_data
    float64[6] position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new carriage_sensor_diagnostics(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = new Array(6).fill(0)
    }

    if (msg.raw_data !== undefined) {
      resolved.raw_data = msg.raw_data;
    }
    else {
      resolved.raw_data = new Array(6).fill(0)
    }

    if (msg.filtered_data !== undefined) {
      resolved.filtered_data = msg.filtered_data;
    }
    else {
      resolved.filtered_data = new Array(6).fill(0)
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = carriage_sensor_diagnostics;
