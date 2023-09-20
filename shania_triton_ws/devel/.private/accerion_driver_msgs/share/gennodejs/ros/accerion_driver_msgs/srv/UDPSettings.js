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

class UDPSettingsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unicast_ip_address_first = null;
      this.unicast_ip_address_second = null;
      this.unicast_ip_address_third = null;
      this.unicast_ip_address_fourth = null;
      this.message_type = null;
      this.udp_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('unicast_ip_address_first')) {
        this.unicast_ip_address_first = initObj.unicast_ip_address_first
      }
      else {
        this.unicast_ip_address_first = 0;
      }
      if (initObj.hasOwnProperty('unicast_ip_address_second')) {
        this.unicast_ip_address_second = initObj.unicast_ip_address_second
      }
      else {
        this.unicast_ip_address_second = 0;
      }
      if (initObj.hasOwnProperty('unicast_ip_address_third')) {
        this.unicast_ip_address_third = initObj.unicast_ip_address_third
      }
      else {
        this.unicast_ip_address_third = 0;
      }
      if (initObj.hasOwnProperty('unicast_ip_address_fourth')) {
        this.unicast_ip_address_fourth = initObj.unicast_ip_address_fourth
      }
      else {
        this.unicast_ip_address_fourth = 0;
      }
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = 0;
      }
      if (initObj.hasOwnProperty('udp_mode')) {
        this.udp_mode = initObj.udp_mode
      }
      else {
        this.udp_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UDPSettingsRequest
    // Serialize message field [unicast_ip_address_first]
    bufferOffset = _serializer.uint8(obj.unicast_ip_address_first, buffer, bufferOffset);
    // Serialize message field [unicast_ip_address_second]
    bufferOffset = _serializer.uint8(obj.unicast_ip_address_second, buffer, bufferOffset);
    // Serialize message field [unicast_ip_address_third]
    bufferOffset = _serializer.uint8(obj.unicast_ip_address_third, buffer, bufferOffset);
    // Serialize message field [unicast_ip_address_fourth]
    bufferOffset = _serializer.uint8(obj.unicast_ip_address_fourth, buffer, bufferOffset);
    // Serialize message field [message_type]
    bufferOffset = _serializer.uint8(obj.message_type, buffer, bufferOffset);
    // Serialize message field [udp_mode]
    bufferOffset = _serializer.uint8(obj.udp_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UDPSettingsRequest
    let len;
    let data = new UDPSettingsRequest(null);
    // Deserialize message field [unicast_ip_address_first]
    data.unicast_ip_address_first = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unicast_ip_address_second]
    data.unicast_ip_address_second = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unicast_ip_address_third]
    data.unicast_ip_address_third = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [unicast_ip_address_fourth]
    data.unicast_ip_address_fourth = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [udp_mode]
    data.udp_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/UDPSettingsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99562254465350d0143bdef14bb5dc6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 unicast_ip_address_first   # unicast target ip address first
    uint8 unicast_ip_address_second  # unicast target ip address second
    uint8 unicast_ip_address_third   # unicast target ip address third
    uint8 unicast_ip_address_fourth   # unicast target ip address fourth
    uint8  message_type         # 0x01: none, 0x02: only streaming, 0x03: only intermittent, 0x04: both streaming & intermittent messages
    uint8  udp_mode             # 0x01:Broadcast, 0x02:Unicast, 0x03:Unicast no HB  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UDPSettingsRequest(null);
    if (msg.unicast_ip_address_first !== undefined) {
      resolved.unicast_ip_address_first = msg.unicast_ip_address_first;
    }
    else {
      resolved.unicast_ip_address_first = 0
    }

    if (msg.unicast_ip_address_second !== undefined) {
      resolved.unicast_ip_address_second = msg.unicast_ip_address_second;
    }
    else {
      resolved.unicast_ip_address_second = 0
    }

    if (msg.unicast_ip_address_third !== undefined) {
      resolved.unicast_ip_address_third = msg.unicast_ip_address_third;
    }
    else {
      resolved.unicast_ip_address_third = 0
    }

    if (msg.unicast_ip_address_fourth !== undefined) {
      resolved.unicast_ip_address_fourth = msg.unicast_ip_address_fourth;
    }
    else {
      resolved.unicast_ip_address_fourth = 0
    }

    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = 0
    }

    if (msg.udp_mode !== undefined) {
      resolved.udp_mode = msg.udp_mode;
    }
    else {
      resolved.udp_mode = 0
    }

    return resolved;
    }
};

class UDPSettingsResponse {
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
    // Serializes a message object of type UDPSettingsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UDPSettingsResponse
    let len;
    let data = new UDPSettingsResponse(null);
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
    return 'accerion_driver_msgs/UDPSettingsResponse';
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
    const resolved = new UDPSettingsResponse(null);
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
  Request: UDPSettingsRequest,
  Response: UDPSettingsResponse,
  md5sum() { return '2c5d16ab87b6ce14cf7e308187a2cd86'; },
  datatype() { return 'accerion_driver_msgs/UDPSettings'; }
};
