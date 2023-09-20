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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class get_pallet_in_mapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_pallet_in_mapRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_pallet_in_mapRequest
    let len;
    let data = new get_pallet_in_mapRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_mission_msgs/get_pallet_in_mapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_pallet_in_mapRequest(null);
    return resolved;
    }
};

class get_pallet_in_mapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pallet_pose_in_map = null;
      this.confidence_value = null;
      this.error_code = null;
      this.error_msg = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('pallet_pose_in_map')) {
        this.pallet_pose_in_map = initObj.pallet_pose_in_map
      }
      else {
        this.pallet_pose_in_map = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('confidence_value')) {
        this.confidence_value = initObj.confidence_value
      }
      else {
        this.confidence_value = 0.0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('error_msg')) {
        this.error_msg = initObj.error_msg
      }
      else {
        this.error_msg = '';
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_pallet_in_mapResponse
    // Serialize message field [pallet_pose_in_map]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pallet_pose_in_map, buffer, bufferOffset);
    // Serialize message field [confidence_value]
    bufferOffset = _serializer.float32(obj.confidence_value, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [error_msg]
    bufferOffset = _serializer.string(obj.error_msg, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_pallet_in_mapResponse
    let len;
    let data = new get_pallet_in_mapResponse(null);
    // Deserialize message field [pallet_pose_in_map]
    data.pallet_pose_in_map = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence_value]
    data.confidence_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_msg]
    data.error_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.error_msg.length;
    return length + 69;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rt_mission_msgs/get_pallet_in_mapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b7bdcbe41ef056f4a2eded3510cbf51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pallet_pose_in_map
    float32 confidence_value
    int32 error_code
    string error_msg
    bool success
    
    
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
    const resolved = new get_pallet_in_mapResponse(null);
    if (msg.pallet_pose_in_map !== undefined) {
      resolved.pallet_pose_in_map = geometry_msgs.msg.Pose.Resolve(msg.pallet_pose_in_map)
    }
    else {
      resolved.pallet_pose_in_map = new geometry_msgs.msg.Pose()
    }

    if (msg.confidence_value !== undefined) {
      resolved.confidence_value = msg.confidence_value;
    }
    else {
      resolved.confidence_value = 0.0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.error_msg !== undefined) {
      resolved.error_msg = msg.error_msg;
    }
    else {
      resolved.error_msg = ''
    }

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
  Request: get_pallet_in_mapRequest,
  Response: get_pallet_in_mapResponse,
  md5sum() { return '5b7bdcbe41ef056f4a2eded3510cbf51'; },
  datatype() { return 'rt_mission_msgs/get_pallet_in_map'; }
};
