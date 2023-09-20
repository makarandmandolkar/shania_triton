// Auto-generated. Do not edit!

// (in-package rt_mission_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let rt_mission = require('./rt_mission.js');

//-----------------------------------------------------------

class rt_mission_queue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_queue = null;
      this.mission_queue_index = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_queue')) {
        this.mission_queue = initObj.mission_queue
      }
      else {
        this.mission_queue = [];
      }
      if (initObj.hasOwnProperty('mission_queue_index')) {
        this.mission_queue_index = initObj.mission_queue_index
      }
      else {
        this.mission_queue_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rt_mission_queue
    // Serialize message field [mission_queue]
    // Serialize the length for message field [mission_queue]
    bufferOffset = _serializer.uint32(obj.mission_queue.length, buffer, bufferOffset);
    obj.mission_queue.forEach((val) => {
      bufferOffset = rt_mission.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [mission_queue_index]
    bufferOffset = _serializer.int32(obj.mission_queue_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rt_mission_queue
    let len;
    let data = new rt_mission_queue(null);
    // Deserialize message field [mission_queue]
    // Deserialize array length for message field [mission_queue]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.mission_queue = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.mission_queue[i] = rt_mission.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [mission_queue_index]
    data.mission_queue_index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.mission_queue.forEach((val) => {
      length += rt_mission.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_mission_msgs/rt_mission_queue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca28651d6271b7ac52eca2ec6cfb8a4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    rt_mission_msgs/rt_mission[] mission_queue
    int32 mission_queue_index
    
    ================================================================================
    MSG: rt_mission_msgs/rt_mission
    int32 task_enum
    int32 TASK_PICK_AND_PLACE=0
    int32 TASK_PICK=1
    int32 TASK_PLACE=2
    int32 TASK_CHARGE_ROBOT=3
    string status
    string pick_location_name
    string place_location_name
    string pick_stage_name
    string place_stage_name
    geometry_msgs/Pose pick_location
    geometry_msgs/Pose pick_stage_location
    geometry_msgs/Pose place_location
    geometry_msgs/Pose place_stage_location
    string pallet_id
    float32 pick_slot_height
    float32 place_slot_height
    string pick_approach_direction
    string place_approach_direction
    string pick_edge_case_direction
    string place_edge_case_direction
    bool priority
    bool payload_dimension
    float32 mission_complete_time
    float32 mission_distance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rt_mission_queue(null);
    if (msg.mission_queue !== undefined) {
      resolved.mission_queue = new Array(msg.mission_queue.length);
      for (let i = 0; i < resolved.mission_queue.length; ++i) {
        resolved.mission_queue[i] = rt_mission.Resolve(msg.mission_queue[i]);
      }
    }
    else {
      resolved.mission_queue = []
    }

    if (msg.mission_queue_index !== undefined) {
      resolved.mission_queue_index = msg.mission_queue_index;
    }
    else {
      resolved.mission_queue_index = 0
    }

    return resolved;
    }
};

module.exports = rt_mission_queue;
