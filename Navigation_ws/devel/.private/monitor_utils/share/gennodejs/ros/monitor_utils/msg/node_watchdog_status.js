// Auto-generated. Do not edit!

// (in-package monitor_utils.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class node_watchdog_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sequence = null;
      this.my_node_name = null;
      this.ros_master_uri = null;
      this.is_ros_master_connected = null;
      this.watched_nodes = null;
      this.watch_rate = null;
      this.ping_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
      if (initObj.hasOwnProperty('my_node_name')) {
        this.my_node_name = initObj.my_node_name
      }
      else {
        this.my_node_name = '';
      }
      if (initObj.hasOwnProperty('ros_master_uri')) {
        this.ros_master_uri = initObj.ros_master_uri
      }
      else {
        this.ros_master_uri = '';
      }
      if (initObj.hasOwnProperty('is_ros_master_connected')) {
        this.is_ros_master_connected = initObj.is_ros_master_connected
      }
      else {
        this.is_ros_master_connected = false;
      }
      if (initObj.hasOwnProperty('watched_nodes')) {
        this.watched_nodes = initObj.watched_nodes
      }
      else {
        this.watched_nodes = [];
      }
      if (initObj.hasOwnProperty('watch_rate')) {
        this.watch_rate = initObj.watch_rate
      }
      else {
        this.watch_rate = 0;
      }
      if (initObj.hasOwnProperty('ping_rate')) {
        this.ping_rate = initObj.ping_rate
      }
      else {
        this.ping_rate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type node_watchdog_status
    // Serialize message field [sequence]
    bufferOffset = _serializer.int32(obj.sequence, buffer, bufferOffset);
    // Serialize message field [my_node_name]
    bufferOffset = _serializer.string(obj.my_node_name, buffer, bufferOffset);
    // Serialize message field [ros_master_uri]
    bufferOffset = _serializer.string(obj.ros_master_uri, buffer, bufferOffset);
    // Serialize message field [is_ros_master_connected]
    bufferOffset = _serializer.bool(obj.is_ros_master_connected, buffer, bufferOffset);
    // Serialize message field [watched_nodes]
    bufferOffset = _arraySerializer.string(obj.watched_nodes, buffer, bufferOffset, null);
    // Serialize message field [watch_rate]
    bufferOffset = _serializer.int32(obj.watch_rate, buffer, bufferOffset);
    // Serialize message field [ping_rate]
    bufferOffset = _serializer.int32(obj.ping_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type node_watchdog_status
    let len;
    let data = new node_watchdog_status(null);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [my_node_name]
    data.my_node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ros_master_uri]
    data.ros_master_uri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_ros_master_connected]
    data.is_ros_master_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [watched_nodes]
    data.watched_nodes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [watch_rate]
    data.watch_rate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ping_rate]
    data.ping_rate = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.my_node_name.length;
    length += object.ros_master_uri.length;
    object.watched_nodes.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'monitor_utils/node_watchdog_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5b891ace9dd6aa5540bc71f15a96b40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 sequence
    string my_node_name
    string ros_master_uri
    bool is_ros_master_connected
    string[] watched_nodes
    int32 watch_rate
    int32 ping_rate
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new node_watchdog_status(null);
    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    if (msg.my_node_name !== undefined) {
      resolved.my_node_name = msg.my_node_name;
    }
    else {
      resolved.my_node_name = ''
    }

    if (msg.ros_master_uri !== undefined) {
      resolved.ros_master_uri = msg.ros_master_uri;
    }
    else {
      resolved.ros_master_uri = ''
    }

    if (msg.is_ros_master_connected !== undefined) {
      resolved.is_ros_master_connected = msg.is_ros_master_connected;
    }
    else {
      resolved.is_ros_master_connected = false
    }

    if (msg.watched_nodes !== undefined) {
      resolved.watched_nodes = msg.watched_nodes;
    }
    else {
      resolved.watched_nodes = []
    }

    if (msg.watch_rate !== undefined) {
      resolved.watch_rate = msg.watch_rate;
    }
    else {
      resolved.watch_rate = 0
    }

    if (msg.ping_rate !== undefined) {
      resolved.ping_rate = msg.ping_rate;
    }
    else {
      resolved.ping_rate = 0
    }

    return resolved;
    }
};

module.exports = node_watchdog_status;
