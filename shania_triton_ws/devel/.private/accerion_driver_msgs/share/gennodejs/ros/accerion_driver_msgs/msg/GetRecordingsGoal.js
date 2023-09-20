// Auto-generated. Do not edit!

// (in-package accerion_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GetRecordingsGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.recordingIndexes = null;
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('recordingIndexes')) {
        this.recordingIndexes = initObj.recordingIndexes
      }
      else {
        this.recordingIndexes = [];
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRecordingsGoal
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [recordingIndexes]
    bufferOffset = _arraySerializer.uint8(obj.recordingIndexes, buffer, bufferOffset, null);
    // Serialize message field [path]
    bufferOffset = _serializer.string(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRecordingsGoal
    let len;
    let data = new GetRecordingsGoal(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recordingIndexes]
    data.recordingIndexes = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [path]
    data.path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    length += object.recordingIndexes.length;
    length += object.path.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'accerion_driver_msgs/GetRecordingsGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d868aed50984bd5795d668d45d213f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # goal
    string mode                 # list(to retrieve list of recordings), download(to retrieve one or more recordings), delete(delete one or more recordings)
    uint8[]  recordingIndexes   # indexes of the recordings to be retrieved
    string path                 # Path to store the recordings
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRecordingsGoal(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.recordingIndexes !== undefined) {
      resolved.recordingIndexes = msg.recordingIndexes;
    }
    else {
      resolved.recordingIndexes = []
    }

    if (msg.path !== undefined) {
      resolved.path = msg.path;
    }
    else {
      resolved.path = ''
    }

    return resolved;
    }
};

module.exports = GetRecordingsGoal;
