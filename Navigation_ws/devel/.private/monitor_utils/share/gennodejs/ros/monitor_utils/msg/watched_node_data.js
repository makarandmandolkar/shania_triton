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

class watched_node_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sequence = null;
      this.name = null;
      this.watch_rate = null;
      this.startup_duration = null;
      this.PID = null;
      this.instantiation_time = null;
      this.watched_topics = null;
      this.is_alive = null;
      this.is_hung = null;
      this.is_publishing = null;
      this.reboot_on_hang = null;
      this.reboot_on_death = null;
      this.reboot_on_publish_timeout = null;
      this.reboot_count = null;
      this.launch_script = null;
    }
    else {
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
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
      if (initObj.hasOwnProperty('PID')) {
        this.PID = initObj.PID
      }
      else {
        this.PID = 0;
      }
      if (initObj.hasOwnProperty('instantiation_time')) {
        this.instantiation_time = initObj.instantiation_time
      }
      else {
        this.instantiation_time = 0.0;
      }
      if (initObj.hasOwnProperty('watched_topics')) {
        this.watched_topics = initObj.watched_topics
      }
      else {
        this.watched_topics = [];
      }
      if (initObj.hasOwnProperty('is_alive')) {
        this.is_alive = initObj.is_alive
      }
      else {
        this.is_alive = false;
      }
      if (initObj.hasOwnProperty('is_hung')) {
        this.is_hung = initObj.is_hung
      }
      else {
        this.is_hung = false;
      }
      if (initObj.hasOwnProperty('is_publishing')) {
        this.is_publishing = initObj.is_publishing
      }
      else {
        this.is_publishing = false;
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
      if (initObj.hasOwnProperty('reboot_count')) {
        this.reboot_count = initObj.reboot_count
      }
      else {
        this.reboot_count = 0;
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
    // Serializes a message object of type watched_node_data
    // Serialize message field [sequence]
    bufferOffset = _serializer.int64(obj.sequence, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [watch_rate]
    bufferOffset = _serializer.int32(obj.watch_rate, buffer, bufferOffset);
    // Serialize message field [startup_duration]
    bufferOffset = _serializer.int32(obj.startup_duration, buffer, bufferOffset);
    // Serialize message field [PID]
    bufferOffset = _serializer.int32(obj.PID, buffer, bufferOffset);
    // Serialize message field [instantiation_time]
    bufferOffset = _serializer.float64(obj.instantiation_time, buffer, bufferOffset);
    // Serialize message field [watched_topics]
    bufferOffset = _arraySerializer.string(obj.watched_topics, buffer, bufferOffset, null);
    // Serialize message field [is_alive]
    bufferOffset = _serializer.bool(obj.is_alive, buffer, bufferOffset);
    // Serialize message field [is_hung]
    bufferOffset = _serializer.bool(obj.is_hung, buffer, bufferOffset);
    // Serialize message field [is_publishing]
    bufferOffset = _serializer.bool(obj.is_publishing, buffer, bufferOffset);
    // Serialize message field [reboot_on_hang]
    bufferOffset = _serializer.bool(obj.reboot_on_hang, buffer, bufferOffset);
    // Serialize message field [reboot_on_death]
    bufferOffset = _serializer.bool(obj.reboot_on_death, buffer, bufferOffset);
    // Serialize message field [reboot_on_publish_timeout]
    bufferOffset = _serializer.bool(obj.reboot_on_publish_timeout, buffer, bufferOffset);
    // Serialize message field [reboot_count]
    bufferOffset = _serializer.int32(obj.reboot_count, buffer, bufferOffset);
    // Serialize message field [launch_script]
    bufferOffset = _serializer.string(obj.launch_script, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type watched_node_data
    let len;
    let data = new watched_node_data(null);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [watch_rate]
    data.watch_rate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [startup_duration]
    data.startup_duration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [PID]
    data.PID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [instantiation_time]
    data.instantiation_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [watched_topics]
    data.watched_topics = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [is_alive]
    data.is_alive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_hung]
    data.is_hung = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_publishing]
    data.is_publishing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reboot_on_hang]
    data.reboot_on_hang = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reboot_on_death]
    data.reboot_on_death = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reboot_on_publish_timeout]
    data.reboot_on_publish_timeout = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reboot_count]
    data.reboot_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [launch_script]
    data.launch_script = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    object.watched_topics.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.launch_script.length;
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'monitor_utils/watched_node_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81c3123a2ea294b2971a0476e03b9bf8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 sequence
    string name
    int32 watch_rate
    int32 startup_duration
    int32 PID
    float64 instantiation_time
    string[] watched_topics
    bool is_alive
    bool is_hung
    bool is_publishing
    bool reboot_on_hang
    bool reboot_on_death
    bool reboot_on_publish_timeout
    int32 reboot_count
    string launch_script
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new watched_node_data(null);
    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
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

    if (msg.PID !== undefined) {
      resolved.PID = msg.PID;
    }
    else {
      resolved.PID = 0
    }

    if (msg.instantiation_time !== undefined) {
      resolved.instantiation_time = msg.instantiation_time;
    }
    else {
      resolved.instantiation_time = 0.0
    }

    if (msg.watched_topics !== undefined) {
      resolved.watched_topics = msg.watched_topics;
    }
    else {
      resolved.watched_topics = []
    }

    if (msg.is_alive !== undefined) {
      resolved.is_alive = msg.is_alive;
    }
    else {
      resolved.is_alive = false
    }

    if (msg.is_hung !== undefined) {
      resolved.is_hung = msg.is_hung;
    }
    else {
      resolved.is_hung = false
    }

    if (msg.is_publishing !== undefined) {
      resolved.is_publishing = msg.is_publishing;
    }
    else {
      resolved.is_publishing = false
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

    if (msg.reboot_count !== undefined) {
      resolved.reboot_count = msg.reboot_count;
    }
    else {
      resolved.reboot_count = 0
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

module.exports = watched_node_data;
