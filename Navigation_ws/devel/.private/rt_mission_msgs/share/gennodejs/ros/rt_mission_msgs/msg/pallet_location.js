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

class pallet_location {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location_name = null;
      this.map_location = null;
      this.location_id = null;
    }
    else {
      if (initObj.hasOwnProperty('location_name')) {
        this.location_name = initObj.location_name
      }
      else {
        this.location_name = '';
      }
      if (initObj.hasOwnProperty('map_location')) {
        this.map_location = initObj.map_location
      }
      else {
        this.map_location = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('location_id')) {
        this.location_id = initObj.location_id
      }
      else {
        this.location_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pallet_location
    // Serialize message field [location_name]
    bufferOffset = _serializer.string(obj.location_name, buffer, bufferOffset);
    // Serialize message field [map_location]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.map_location, buffer, bufferOffset);
    // Serialize message field [location_id]
    bufferOffset = _serializer.string(obj.location_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pallet_location
    let len;
    let data = new pallet_location(null);
    // Deserialize message field [location_name]
    data.location_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_location]
    data.map_location = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [location_id]
    data.location_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.location_name.length;
    length += object.location_id.length;
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rt_mission_msgs/pallet_location';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df6b2a914d117d0714ccbfe4bb9b70f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string location_name
    geometry_msgs/Pose map_location
    string location_id
    
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
    const resolved = new pallet_location(null);
    if (msg.location_name !== undefined) {
      resolved.location_name = msg.location_name;
    }
    else {
      resolved.location_name = ''
    }

    if (msg.map_location !== undefined) {
      resolved.map_location = geometry_msgs.msg.Pose.Resolve(msg.map_location)
    }
    else {
      resolved.map_location = new geometry_msgs.msg.Pose()
    }

    if (msg.location_id !== undefined) {
      resolved.location_id = msg.location_id;
    }
    else {
      resolved.location_id = ''
    }

    return resolved;
    }
};

module.exports = pallet_location;
