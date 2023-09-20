// Auto-generated. Do not edit!

// (in-package rt_mission_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class write_pallet_location_to_fileRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pallet_name = null;
      this.pallet_pose_in_map = null;
    }
    else {
      if (initObj.hasOwnProperty('pallet_name')) {
        this.pallet_name = initObj.pallet_name
      }
      else {
        this.pallet_name = '';
      }
      if (initObj.hasOwnProperty('pallet_pose_in_map')) {
        this.pallet_pose_in_map = initObj.pallet_pose_in_map
      }
      else {
        this.pallet_pose_in_map = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type write_pallet_location_to_fileRequest
    // Serialize message field [pallet_name]
    bufferOffset = _serializer.string(obj.pallet_name, buffer, bufferOffset);
    // Serialize message field [pallet_pose_in_map]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pallet_pose_in_map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type write_pallet_location_to_fileRequest
    let len;
    let data = new write_pallet_location_to_fileRequest(null);
    // Deserialize message field [pallet_name]
    data.pallet_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pallet_pose_in_map]
    data.pallet_pose_in_map = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pallet_name.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_mission_msgs/write_pallet_location_to_fileRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82666a4af21a5b483be60cd78ba12a30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pallet_name
    geometry_msgs/Pose pallet_pose_in_map
    
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
    const resolved = new write_pallet_location_to_fileRequest(null);
    if (msg.pallet_name !== undefined) {
      resolved.pallet_name = msg.pallet_name;
    }
    else {
      resolved.pallet_name = ''
    }

    if (msg.pallet_pose_in_map !== undefined) {
      resolved.pallet_pose_in_map = geometry_msgs.msg.Pose.Resolve(msg.pallet_pose_in_map)
    }
    else {
      resolved.pallet_pose_in_map = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class write_pallet_location_to_fileResponse {
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
    // Serializes a message object of type write_pallet_location_to_fileResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type write_pallet_location_to_fileResponse
    let len;
    let data = new write_pallet_location_to_fileResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_mission_msgs/write_pallet_location_to_fileResponse';
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
    const resolved = new write_pallet_location_to_fileResponse(null);
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
  Request: write_pallet_location_to_fileRequest,
  Response: write_pallet_location_to_fileResponse,
  md5sum() { return '2e0b45a83177fcfa3bdfed4d23c370e1'; },
  datatype() { return 'rt_mission_msgs/write_pallet_location_to_file'; }
};
