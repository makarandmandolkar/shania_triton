// Auto-generated. Do not edit!

// (in-package fuse_pathfollowing_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Segment = require('./Segment.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.segments = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('segments')) {
        this.segments = initObj.segments
      }
      else {
        this.segments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Path
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [segments]
    // Serialize the length for message field [segments]
    bufferOffset = _serializer.uint32(obj.segments.length, buffer, bufferOffset);
    obj.segments.forEach((val) => {
      bufferOffset = Segment.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Path
    let len;
    let data = new Path(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [segments]
    // Deserialize array length for message field [segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.segments[i] = Segment.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.segments.forEach((val) => {
      length += Segment.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fuse_pathfollowing_msgs/Path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85569c99d3939c53d20c7ea066d55773';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Header header
    Segment[] segments
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: fuse_pathfollowing_msgs/Segment
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
    const resolved = new Path(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.segments !== undefined) {
      resolved.segments = new Array(msg.segments.length);
      for (let i = 0; i < resolved.segments.length; ++i) {
        resolved.segments[i] = Segment.Resolve(msg.segments[i]);
      }
    }
    else {
      resolved.segments = []
    }

    return resolved;
    }
};

module.exports = Path;
