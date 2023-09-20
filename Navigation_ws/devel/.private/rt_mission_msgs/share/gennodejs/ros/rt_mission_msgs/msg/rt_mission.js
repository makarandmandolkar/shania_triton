// Auto-generated. Do not edit!

// (in-package rt_mission_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class rt_mission {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_enum = null;
      this.status = null;
      this.pick_location_name = null;
      this.place_location_name = null;
      this.pick_stage_name = null;
      this.place_stage_name = null;
      this.pick_location = null;
      this.pick_stage_location = null;
      this.place_location = null;
      this.place_stage_location = null;
      this.pallet_id = null;
      this.pick_slot_height = null;
      this.place_slot_height = null;
      this.pick_approach_direction = null;
      this.place_approach_direction = null;
      this.pick_edge_case_direction = null;
      this.place_edge_case_direction = null;
      this.priority = null;
      this.payload_dimension = null;
      this.mission_complete_time = null;
      this.mission_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('task_enum')) {
        this.task_enum = initObj.task_enum
      }
      else {
        this.task_enum = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
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
      if (initObj.hasOwnProperty('pick_stage_name')) {
        this.pick_stage_name = initObj.pick_stage_name
      }
      else {
        this.pick_stage_name = '';
      }
      if (initObj.hasOwnProperty('place_stage_name')) {
        this.place_stage_name = initObj.place_stage_name
      }
      else {
        this.place_stage_name = '';
      }
      if (initObj.hasOwnProperty('pick_location')) {
        this.pick_location = initObj.pick_location
      }
      else {
        this.pick_location = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pick_stage_location')) {
        this.pick_stage_location = initObj.pick_stage_location
      }
      else {
        this.pick_stage_location = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('place_location')) {
        this.place_location = initObj.place_location
      }
      else {
        this.place_location = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('place_stage_location')) {
        this.place_stage_location = initObj.place_stage_location
      }
      else {
        this.place_stage_location = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pallet_id')) {
        this.pallet_id = initObj.pallet_id
      }
      else {
        this.pallet_id = '';
      }
      if (initObj.hasOwnProperty('pick_slot_height')) {
        this.pick_slot_height = initObj.pick_slot_height
      }
      else {
        this.pick_slot_height = 0.0;
      }
      if (initObj.hasOwnProperty('place_slot_height')) {
        this.place_slot_height = initObj.place_slot_height
      }
      else {
        this.place_slot_height = 0.0;
      }
      if (initObj.hasOwnProperty('pick_approach_direction')) {
        this.pick_approach_direction = initObj.pick_approach_direction
      }
      else {
        this.pick_approach_direction = '';
      }
      if (initObj.hasOwnProperty('place_approach_direction')) {
        this.place_approach_direction = initObj.place_approach_direction
      }
      else {
        this.place_approach_direction = '';
      }
      if (initObj.hasOwnProperty('pick_edge_case_direction')) {
        this.pick_edge_case_direction = initObj.pick_edge_case_direction
      }
      else {
        this.pick_edge_case_direction = '';
      }
      if (initObj.hasOwnProperty('place_edge_case_direction')) {
        this.place_edge_case_direction = initObj.place_edge_case_direction
      }
      else {
        this.place_edge_case_direction = '';
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
      if (initObj.hasOwnProperty('mission_complete_time')) {
        this.mission_complete_time = initObj.mission_complete_time
      }
      else {
        this.mission_complete_time = 0.0;
      }
      if (initObj.hasOwnProperty('mission_distance')) {
        this.mission_distance = initObj.mission_distance
      }
      else {
        this.mission_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rt_mission
    // Serialize message field [task_enum]
    bufferOffset = _serializer.int32(obj.task_enum, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [pick_location_name]
    bufferOffset = _serializer.string(obj.pick_location_name, buffer, bufferOffset);
    // Serialize message field [place_location_name]
    bufferOffset = _serializer.string(obj.place_location_name, buffer, bufferOffset);
    // Serialize message field [pick_stage_name]
    bufferOffset = _serializer.string(obj.pick_stage_name, buffer, bufferOffset);
    // Serialize message field [place_stage_name]
    bufferOffset = _serializer.string(obj.place_stage_name, buffer, bufferOffset);
    // Serialize message field [pick_location]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pick_location, buffer, bufferOffset);
    // Serialize message field [pick_stage_location]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pick_stage_location, buffer, bufferOffset);
    // Serialize message field [place_location]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.place_location, buffer, bufferOffset);
    // Serialize message field [place_stage_location]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.place_stage_location, buffer, bufferOffset);
    // Serialize message field [pallet_id]
    bufferOffset = _serializer.string(obj.pallet_id, buffer, bufferOffset);
    // Serialize message field [pick_slot_height]
    bufferOffset = _serializer.float32(obj.pick_slot_height, buffer, bufferOffset);
    // Serialize message field [place_slot_height]
    bufferOffset = _serializer.float32(obj.place_slot_height, buffer, bufferOffset);
    // Serialize message field [pick_approach_direction]
    bufferOffset = _serializer.string(obj.pick_approach_direction, buffer, bufferOffset);
    // Serialize message field [place_approach_direction]
    bufferOffset = _serializer.string(obj.place_approach_direction, buffer, bufferOffset);
    // Serialize message field [pick_edge_case_direction]
    bufferOffset = _serializer.string(obj.pick_edge_case_direction, buffer, bufferOffset);
    // Serialize message field [place_edge_case_direction]
    bufferOffset = _serializer.string(obj.place_edge_case_direction, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.bool(obj.priority, buffer, bufferOffset);
    // Serialize message field [payload_dimension]
    bufferOffset = _serializer.bool(obj.payload_dimension, buffer, bufferOffset);
    // Serialize message field [mission_complete_time]
    bufferOffset = _serializer.float32(obj.mission_complete_time, buffer, bufferOffset);
    // Serialize message field [mission_distance]
    bufferOffset = _serializer.float32(obj.mission_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rt_mission
    let len;
    let data = new rt_mission(null);
    // Deserialize message field [task_enum]
    data.task_enum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pick_location_name]
    data.pick_location_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [place_location_name]
    data.place_location_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pick_stage_name]
    data.pick_stage_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [place_stage_name]
    data.place_stage_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pick_location]
    data.pick_location = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pick_stage_location]
    data.pick_stage_location = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [place_location]
    data.place_location = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [place_stage_location]
    data.place_stage_location = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pallet_id]
    data.pallet_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pick_slot_height]
    data.pick_slot_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [place_slot_height]
    data.place_slot_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pick_approach_direction]
    data.pick_approach_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [place_approach_direction]
    data.place_approach_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pick_edge_case_direction]
    data.pick_edge_case_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [place_edge_case_direction]
    data.place_edge_case_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [payload_dimension]
    data.payload_dimension = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mission_complete_time]
    data.mission_complete_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mission_distance]
    data.mission_distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    length += object.pick_location_name.length;
    length += object.place_location_name.length;
    length += object.pick_stage_name.length;
    length += object.place_stage_name.length;
    length += object.pallet_id.length;
    length += object.pick_approach_direction.length;
    length += object.place_approach_direction.length;
    length += object.pick_edge_case_direction.length;
    length += object.place_edge_case_direction.length;
    return length + 286;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_mission_msgs/rt_mission';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ada315410efb79e7745f34310db12a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new rt_mission(null);
    if (msg.task_enum !== undefined) {
      resolved.task_enum = msg.task_enum;
    }
    else {
      resolved.task_enum = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

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

    if (msg.pick_stage_name !== undefined) {
      resolved.pick_stage_name = msg.pick_stage_name;
    }
    else {
      resolved.pick_stage_name = ''
    }

    if (msg.place_stage_name !== undefined) {
      resolved.place_stage_name = msg.place_stage_name;
    }
    else {
      resolved.place_stage_name = ''
    }

    if (msg.pick_location !== undefined) {
      resolved.pick_location = geometry_msgs.msg.Pose.Resolve(msg.pick_location)
    }
    else {
      resolved.pick_location = new geometry_msgs.msg.Pose()
    }

    if (msg.pick_stage_location !== undefined) {
      resolved.pick_stage_location = geometry_msgs.msg.Pose.Resolve(msg.pick_stage_location)
    }
    else {
      resolved.pick_stage_location = new geometry_msgs.msg.Pose()
    }

    if (msg.place_location !== undefined) {
      resolved.place_location = geometry_msgs.msg.Pose.Resolve(msg.place_location)
    }
    else {
      resolved.place_location = new geometry_msgs.msg.Pose()
    }

    if (msg.place_stage_location !== undefined) {
      resolved.place_stage_location = geometry_msgs.msg.Pose.Resolve(msg.place_stage_location)
    }
    else {
      resolved.place_stage_location = new geometry_msgs.msg.Pose()
    }

    if (msg.pallet_id !== undefined) {
      resolved.pallet_id = msg.pallet_id;
    }
    else {
      resolved.pallet_id = ''
    }

    if (msg.pick_slot_height !== undefined) {
      resolved.pick_slot_height = msg.pick_slot_height;
    }
    else {
      resolved.pick_slot_height = 0.0
    }

    if (msg.place_slot_height !== undefined) {
      resolved.place_slot_height = msg.place_slot_height;
    }
    else {
      resolved.place_slot_height = 0.0
    }

    if (msg.pick_approach_direction !== undefined) {
      resolved.pick_approach_direction = msg.pick_approach_direction;
    }
    else {
      resolved.pick_approach_direction = ''
    }

    if (msg.place_approach_direction !== undefined) {
      resolved.place_approach_direction = msg.place_approach_direction;
    }
    else {
      resolved.place_approach_direction = ''
    }

    if (msg.pick_edge_case_direction !== undefined) {
      resolved.pick_edge_case_direction = msg.pick_edge_case_direction;
    }
    else {
      resolved.pick_edge_case_direction = ''
    }

    if (msg.place_edge_case_direction !== undefined) {
      resolved.place_edge_case_direction = msg.place_edge_case_direction;
    }
    else {
      resolved.place_edge_case_direction = ''
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

    if (msg.mission_complete_time !== undefined) {
      resolved.mission_complete_time = msg.mission_complete_time;
    }
    else {
      resolved.mission_complete_time = 0.0
    }

    if (msg.mission_distance !== undefined) {
      resolved.mission_distance = msg.mission_distance;
    }
    else {
      resolved.mission_distance = 0.0
    }

    return resolved;
    }
};

// Constants for message
rt_mission.Constants = {
  TASK_PICK_AND_PLACE: 0,
  TASK_PICK: 1,
  TASK_PLACE: 2,
  TASK_CHARGE_ROBOT: 3,
}

module.exports = rt_mission;
