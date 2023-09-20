// Auto-generated. Do not edit!

// (in-package rt_mission_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class user_input_request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.user_input_msg = null;
      this.input_enum = null;
      this.message_handeled = null;
    }
    else {
      if (initObj.hasOwnProperty('user_input_msg')) {
        this.user_input_msg = initObj.user_input_msg
      }
      else {
        this.user_input_msg = '';
      }
      if (initObj.hasOwnProperty('input_enum')) {
        this.input_enum = initObj.input_enum
      }
      else {
        this.input_enum = 0;
      }
      if (initObj.hasOwnProperty('message_handeled')) {
        this.message_handeled = initObj.message_handeled
      }
      else {
        this.message_handeled = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type user_input_request
    // Serialize message field [user_input_msg]
    bufferOffset = _serializer.string(obj.user_input_msg, buffer, bufferOffset);
    // Serialize message field [input_enum]
    bufferOffset = _serializer.int32(obj.input_enum, buffer, bufferOffset);
    // Serialize message field [message_handeled]
    bufferOffset = _serializer.bool(obj.message_handeled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type user_input_request
    let len;
    let data = new user_input_request(null);
    // Deserialize message field [user_input_msg]
    data.user_input_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [input_enum]
    data.input_enum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message_handeled]
    data.message_handeled = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.user_input_msg.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_mission_msgs/user_input_request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '091c1a1726a1b2a56375b655091cb478';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string user_input_msg
    int32 input_enum
    int32 USER_INPUT_CONFIRMATION=0
    int32 USER_INPUT_PICK_LOCATION=1
    int32 USER_INPUT_PLACE_LOCATION=2
    bool message_handeled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new user_input_request(null);
    if (msg.user_input_msg !== undefined) {
      resolved.user_input_msg = msg.user_input_msg;
    }
    else {
      resolved.user_input_msg = ''
    }

    if (msg.input_enum !== undefined) {
      resolved.input_enum = msg.input_enum;
    }
    else {
      resolved.input_enum = 0
    }

    if (msg.message_handeled !== undefined) {
      resolved.message_handeled = msg.message_handeled;
    }
    else {
      resolved.message_handeled = false
    }

    return resolved;
    }
};

// Constants for message
user_input_request.Constants = {
  USER_INPUT_CONFIRMATION: 0,
  USER_INPUT_PICK_LOCATION: 1,
  USER_INPUT_PLACE_LOCATION: 2,
}

module.exports = user_input_request;
