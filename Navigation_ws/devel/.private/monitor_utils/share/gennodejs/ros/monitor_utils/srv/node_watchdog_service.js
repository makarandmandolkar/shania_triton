// Auto-generated. Do not edit!

// (in-package monitor_utils.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class node_watchdog_serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_name = null;
      this.command_type_enum = null;
      this.watch_rate = null;
      this.startup_duration = null;
      this.watched_topics_timeout = null;
      this.watched_topics = null;
      this.reboot_on_hang = null;
      this.reboot_on_death = null;
      this.reboot_on_publish_timeout = null;
      this.launch_script = null;
    }
    else {
      if (initObj.hasOwnProperty('node_name')) {
        this.node_name = initObj.node_name
      }
      else {
        this.node_name = '';
      }
      if (initObj.hasOwnProperty('command_type_enum')) {
        this.command_type_enum = initObj.command_type_enum
      }
      else {
        this.command_type_enum = 0;
      }
      if (initObj.hasOwnProperty('watch_rate')) {
        this.watch_rate = initObj.watch_rate
      }
      else {
        this.watch_rate = 0;
      }
      if (initObj.hasOwnProperty('startup_duration')) {
        this.startup_duration = initObj.startup_duration
      }
      else {
        this.startup_duration = 0;
      }
      if (initObj.hasOwnProperty('watched_topics_timeout')) {
        this.watched_topics_timeout = initObj.watched_topics_timeout
      }
      else {
        this.watched_topics_timeout = 0;
      }
      if (initObj.hasOwnProperty('watched_topics')) {
        this.watched_topics = initObj.watched_topics
      }
      else {
        this.watched_topics = [];
      }
      if (initObj.hasOwnProperty('reboot_on_hang')) {
        this.reboot_on_hang = initObj.reboot_on_hang
      }
      else {
        this.reboot_on_hang = false;
      }
      if (initObj.hasOwnProperty('reboot_on_death')) {
        this.reboot_on_death = initObj.reboot_on_death
      }
      else {
        this.reboot_on_death = false;
      }
      if (initObj.hasOwnProperty('reboot_on_publish_timeout')) {
        this.reboot_on_publish_timeout = initObj.reboot_on_publish_timeout
      }
      else {
        this.reboot_on_publish_timeout = false;
      }
      if (initObj.hasOwnProperty('launch_script')) {
        this.launch_script = initObj.launch_script
      }
      else {
        this.launch_script = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_watchdog_serviceRequest
    // Serialize message field [node_name]
    bufferOffset = _serializer.string(obj.node_name, buffer, bufferOffset);
    // Serialize message field [command_type_enum]
    bufferOffset = _serializer.int16(obj.command_type_enum, buffer, bufferOffset);
    // Serialize message field [watch_rate]
    bufferOffset = _serializer.int32(obj.watch_rate, buffer, bufferOffset);
    // Serialize message field [startup_duration]
    bufferOffset = _serializer.int32(obj.startup_duration, buffer, bufferOffset);
    // Serialize message field [watched_topics_timeout]
    bufferOffset = _serializer.int32(obj.watched_topics_timeout, buffer, bufferOffset);
    // Serialize message field [watched_topics]
    bufferOffset = _arraySerializer.string(obj.watched_topics, buffer, bufferOffset, null);
    // Serialize message field [reboot_on_hang]
    bufferOffset = _serializer.bool(obj.reboot_on_hang, buffer, bufferOffset);
    // Serialize message field [reboot_on_death]
    bufferOffset = _serializer.bool(obj.reboot_on_death, buffer, bufferOffset);
    // Serialize message field [reboot_on_publish_timeout]
    bufferOffset = _serializer.bool(obj.reboot_on_publish_timeout, buffer, bufferOffset);
    // Serialize message field [launch_script]
    bufferOffset = _serializer.string(obj.launch_script, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_watchdog_serviceRequest
    let len;
    let data = new node_watchdog_serviceRequest(null);
    // Deserialize message field [node_name]
    data.node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [command_type_enum]
    data.command_type_enum = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [watch_rate]
    data.watch_rate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [startup_duration]
    data.startup_duration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [watched_topics_timeout]
    data.watched_topics_timeout = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [watched_topics]
    data.watched_topics = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [reboot_on_hang]
    data.reboot_on_hang = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reboot_on_death]
    data.reboot_on_death = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reboot_on_publish_timeout]
    data.reboot_on_publish_timeout = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [launch_script]
    data.launch_script = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.node_name.length;
    object.watched_topics.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.launch_script.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'monitor_utils/node_watchdog_serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7e3f8843ea4df5e36fcc1a89aa6ac8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    string node_name
    int16 COMMAND_ADD_WATCHED_NODE=1
    int16 COMMAND_REMOVE_WATCHED_NODE=2
    int16 COMMAND_KILL_WATCHED_NODE=3
    int16 COMMAND_LAUNCH_WATCHED_NODE=4
    int16 command_type_enum
    
    # If you are adding a node, these values are used
    int32 watch_rate
    int32 startup_duration
    int32 watched_topics_timeout
    string[] watched_topics
    bool reboot_on_hang
    bool reboot_on_death
    bool reboot_on_publish_timeout
    string launch_script
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_watchdog_serviceRequest(null);
    if (msg.node_name !== undefined) {
      resolved.node_name = msg.node_name;
    }
    else {
      resolved.node_name = ''
    }

    if (msg.command_type_enum !== undefined) {
      resolved.command_type_enum = msg.command_type_enum;
    }
    else {
      resolved.command_type_enum = 0
    }

    if (msg.watch_rate !== undefined) {
      resolved.watch_rate = msg.watch_rate;
    }
    else {
      resolved.watch_rate = 0
    }

    if (msg.startup_duration !== undefined) {
      resolved.startup_duration = msg.startup_duration;
    }
    else {
      resolved.startup_duration = 0
    }

    if (msg.watched_topics_timeout !== undefined) {
      resolved.watched_topics_timeout = msg.watched_topics_timeout;
    }
    else {
      resolved.watched_topics_timeout = 0
    }

    if (msg.watched_topics !== undefined) {
      resolved.watched_topics = msg.watched_topics;
    }
    else {
      resolved.watched_topics = []
    }

    if (msg.reboot_on_hang !== undefined) {
      resolved.reboot_on_hang = msg.reboot_on_hang;
    }
    else {
      resolved.reboot_on_hang = false
    }

    if (msg.reboot_on_death !== undefined) {
      resolved.reboot_on_death = msg.reboot_on_death;
    }
    else {
      resolved.reboot_on_death = false
    }

    if (msg.reboot_on_publish_timeout !== undefined) {
      resolved.reboot_on_publish_timeout = msg.reboot_on_publish_timeout;
    }
    else {
      resolved.reboot_on_publish_timeout = false
    }

    if (msg.launch_script !== undefined) {
      resolved.launch_script = msg.launch_script;
    }
    else {
      resolved.launch_script = ''
    }

    return resolved;
    }
};

// Constants for message
node_watchdog_serviceRequest.Constants = {
  COMMAND_ADD_WATCHED_NODE: 1,
  COMMAND_REMOVE_WATCHED_NODE: 2,
  COMMAND_KILL_WATCHED_NODE: 3,
  COMMAND_LAUNCH_WATCHED_NODE: 4,
}

class node_watchdog_serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_watchdog_serviceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_watchdog_serviceResponse
    let len;
    let data = new node_watchdog_serviceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'monitor_utils/node_watchdog_serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_watchdog_serviceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: node_watchdog_serviceRequest,
  Response: node_watchdog_serviceResponse,
  md5sum() { return '966c5e764adcdb27f4f871b3066bf913'; },
  datatype() { return 'monitor_utils/node_watchdog_service'; }
};
