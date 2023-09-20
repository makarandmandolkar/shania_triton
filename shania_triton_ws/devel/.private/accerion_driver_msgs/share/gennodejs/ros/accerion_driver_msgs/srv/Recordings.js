// Auto-generated. Do not edit!

// (in-package accerion_driver_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RecordingsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.recordingIndexes = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordingsRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [recordingIndexes]
    bufferOffset = _arraySerializer.uint8(obj.recordingIndexes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordingsRequest
    let len;
    let data = new RecordingsRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recordingIndexes]
    data.recordingIndexes = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    length += object.recordingIndexes.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/RecordingsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034f89eca09b7ab066a8b6eebe46c09c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mode                 # list(to retrieve list of recordings), delete(delete one or more recordings)
    uint8[]  recordingIndexes   # indexes of the recordings to be retrieved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordingsRequest(null);
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

    return resolved;
    }
};

class RecordingsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recordings = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('recordings')) {
        this.recordings = initObj.recordings
      }
      else {
        this.recordings = [];
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordingsResponse
    // Serialize message field [recordings]
    bufferOffset = _arraySerializer.string(obj.recordings, buffer, bufferOffset, null);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordingsResponse
    let len;
    let data = new RecordingsResponse(null);
    // Deserialize message field [recordings]
    data.recordings = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.recordings.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/RecordingsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ecd373280be9b84afb9c3a84046f7e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] recordings 	    # names of the recordings on the sensor
    bool success                # boolean that holds whether the request has been made
    string message              # message that contains information about the request(success/failure etc.)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordingsResponse(null);
    if (msg.recordings !== undefined) {
      resolved.recordings = msg.recordings;
    }
    else {
      resolved.recordings = []
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RecordingsRequest,
  Response: RecordingsResponse,
  md5sum() { return 'a50241c729b90d3d361ca09193e877ca'; },
  datatype() { return 'accerion_driver_msgs/Recordings'; }
};
