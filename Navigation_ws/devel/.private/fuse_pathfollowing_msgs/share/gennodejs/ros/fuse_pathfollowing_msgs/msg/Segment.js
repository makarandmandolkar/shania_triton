// Auto-generated. Do not edit!

// (in-package fuse_pathfollowing_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Segment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type_enum = null;
      this.completion_node_id = null;
      this.start = null;
      this.end = null;
      this.radius = null;
      this.is_large_arc = null;
      this.is_clockwise = null;
    }
    else {
      if (initObj.hasOwnProperty('type_enum')) {
        this.type_enum = initObj.type_enum
      }
      else {
        this.type_enum = 0;
      }
      if (initObj.hasOwnProperty('completion_node_id')) {
        this.completion_node_id = initObj.completion_node_id
      }
      else {
        this.completion_node_id = '';
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
      if (initObj.hasOwnProperty('is_large_arc')) {
        this.is_large_arc = initObj.is_large_arc
      }
      else {
        this.is_large_arc = false;
      }
      if (initObj.hasOwnProperty('is_clockwise')) {
        this.is_clockwise = initObj.is_clockwise
      }
      else {
        this.is_clockwise = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Segment
    // Serialize message field [type_enum]
    bufferOffset = _serializer.uint8(obj.type_enum, buffer, bufferOffset);
    // Serialize message field [completion_node_id]
    bufferOffset = _serializer.string(obj.completion_node_id, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.end, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    // Serialize message field [is_large_arc]
    bufferOffset = _serializer.bool(obj.is_large_arc, buffer, bufferOffset);
    // Serialize message field [is_clockwise]
    bufferOffset = _serializer.bool(obj.is_clockwise, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Segment
    let len;
    let data = new Segment(null);
    // Deserialize message field [type_enum]
    data.type_enum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [completion_node_id]
    data.completion_node_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_large_arc]
    data.is_large_arc = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_clockwise]
    data.is_clockwise = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.completion_node_id.length;
    return length + 59;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fuse_pathfollowing_msgs/Segment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90e1867debfb66d37e5a20d9acd4d899';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Array of segments that compose a path
    
    # Defines the type of segment (see possible types below)
    uint8 type_enum
    # Possible types
    uint8 TYPE_UNKNOWN = 0
    uint8 TYPE_LINE = 1
    uint8 TYPE_ARC = 2
    
    # The ID of the node that has been reached when this segment is complete.
    #   If this ID is blank, then this segment is intermediary, and no node is reached on completion
    string completion_node_id
    
    # 3D location (in meters) of the start of the segment
    geometry_msgs/Vector3 start
    # 3D location (in meters) of the end of the segment
    geometry_msgs/Vector3 end
    
    ## Arc-specific parameters
    # Radius (in meters) of the arc
    float32 radius
    # True if arc is > 180 degrees, False if not
    bool is_large_arc
    # True if arc moves in clockwise direction, False if counter-clockwise
    bool is_clockwise
    
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Segment(null);
    if (msg.type_enum !== undefined) {
      resolved.type_enum = msg.type_enum;
    }
    else {
      resolved.type_enum = 0
    }

    if (msg.completion_node_id !== undefined) {
      resolved.completion_node_id = msg.completion_node_id;
    }
    else {
      resolved.completion_node_id = ''
    }

    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.Vector3.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.Vector3()
    }

    if (msg.end !== undefined) {
      resolved.end = geometry_msgs.msg.Vector3.Resolve(msg.end)
    }
    else {
      resolved.end = new geometry_msgs.msg.Vector3()
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    if (msg.is_large_arc !== undefined) {
      resolved.is_large_arc = msg.is_large_arc;
    }
    else {
      resolved.is_large_arc = false
    }

    if (msg.is_clockwise !== undefined) {
      resolved.is_clockwise = msg.is_clockwise;
    }
    else {
      resolved.is_clockwise = false
    }

    return resolved;
    }
};

// Constants for message
Segment.Constants = {
  TYPE_UNKNOWN: 0,
  TYPE_LINE: 1,
  TYPE_ARC: 2,
}

module.exports = Segment;
