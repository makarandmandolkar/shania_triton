// Auto-generated. Do not edit!

// (in-package accerion_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SensorDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.serial_number = null;
      this.raw_timestamp = null;
      this.modes_code = null;
      this.active_modes = null;
      this.warnings_code = null;
      this.active_warnings = null;
      this.errors_code = null;
      this.active_errors = null;
      this.status_code = null;
      this.active_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('serial_number')) {
        this.serial_number = initObj.serial_number
      }
      else {
        this.serial_number = 0;
      }
      if (initObj.hasOwnProperty('raw_timestamp')) {
        this.raw_timestamp = initObj.raw_timestamp
      }
      else {
        this.raw_timestamp = 0;
      }
      if (initObj.hasOwnProperty('modes_code')) {
        this.modes_code = initObj.modes_code
      }
      else {
        this.modes_code = 0;
      }
      if (initObj.hasOwnProperty('active_modes')) {
        this.active_modes = initObj.active_modes
      }
      else {
        this.active_modes = '';
      }
      if (initObj.hasOwnProperty('warnings_code')) {
        this.warnings_code = initObj.warnings_code
      }
      else {
        this.warnings_code = 0;
      }
      if (initObj.hasOwnProperty('active_warnings')) {
        this.active_warnings = initObj.active_warnings
      }
      else {
        this.active_warnings = '';
      }
      if (initObj.hasOwnProperty('errors_code')) {
        this.errors_code = initObj.errors_code
      }
      else {
        this.errors_code = 0;
      }
      if (initObj.hasOwnProperty('active_errors')) {
        this.active_errors = initObj.active_errors
      }
      else {
        this.active_errors = '';
      }
      if (initObj.hasOwnProperty('status_code')) {
        this.status_code = initObj.status_code
      }
      else {
        this.status_code = 0;
      }
      if (initObj.hasOwnProperty('active_status')) {
        this.active_status = initObj.active_status
      }
      else {
        this.active_status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorDiagnostics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [serial_number]
    bufferOffset = _serializer.uint32(obj.serial_number, buffer, bufferOffset);
    // Serialize message field [raw_timestamp]
    bufferOffset = _serializer.uint64(obj.raw_timestamp, buffer, bufferOffset);
    // Serialize message field [modes_code]
    bufferOffset = _serializer.uint16(obj.modes_code, buffer, bufferOffset);
    // Serialize message field [active_modes]
    bufferOffset = _serializer.string(obj.active_modes, buffer, bufferOffset);
    // Serialize message field [warnings_code]
    bufferOffset = _serializer.uint16(obj.warnings_code, buffer, bufferOffset);
    // Serialize message field [active_warnings]
    bufferOffset = _serializer.string(obj.active_warnings, buffer, bufferOffset);
    // Serialize message field [errors_code]
    bufferOffset = _serializer.uint32(obj.errors_code, buffer, bufferOffset);
    // Serialize message field [active_errors]
    bufferOffset = _serializer.string(obj.active_errors, buffer, bufferOffset);
    // Serialize message field [status_code]
    bufferOffset = _serializer.uint8(obj.status_code, buffer, bufferOffset);
    // Serialize message field [active_status]
    bufferOffset = _serializer.string(obj.active_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorDiagnostics
    let len;
    let data = new SensorDiagnostics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [serial_number]
    data.serial_number = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [raw_timestamp]
    data.raw_timestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [modes_code]
    data.modes_code = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [active_modes]
    data.active_modes = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [warnings_code]
    data.warnings_code = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [active_warnings]
    data.active_warnings = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [errors_code]
    data.errors_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [active_errors]
    data.active_errors = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status_code]
    data.status_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [active_status]
    data.active_status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.active_modes.length;
    length += object.active_warnings.length;
    length += object.active_errors.length;
    length += object.active_status.length;
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'accerion_driver_msgs/SensorDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4e775bb96850e70d26b61240e99cf8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header           
    
    uint32 serial_number
    uint64 raw_timestamp
    
    uint16 modes_code
    string active_modes
    
    uint16 warnings_code
    string active_warnings
    
    uint32 errors_code
    string active_errors
    
    uint8 status_code
    string active_status
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorDiagnostics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.serial_number !== undefined) {
      resolved.serial_number = msg.serial_number;
    }
    else {
      resolved.serial_number = 0
    }

    if (msg.raw_timestamp !== undefined) {
      resolved.raw_timestamp = msg.raw_timestamp;
    }
    else {
      resolved.raw_timestamp = 0
    }

    if (msg.modes_code !== undefined) {
      resolved.modes_code = msg.modes_code;
    }
    else {
      resolved.modes_code = 0
    }

    if (msg.active_modes !== undefined) {
      resolved.active_modes = msg.active_modes;
    }
    else {
      resolved.active_modes = ''
    }

    if (msg.warnings_code !== undefined) {
      resolved.warnings_code = msg.warnings_code;
    }
    else {
      resolved.warnings_code = 0
    }

    if (msg.active_warnings !== undefined) {
      resolved.active_warnings = msg.active_warnings;
    }
    else {
      resolved.active_warnings = ''
    }

    if (msg.errors_code !== undefined) {
      resolved.errors_code = msg.errors_code;
    }
    else {
      resolved.errors_code = 0
    }

    if (msg.active_errors !== undefined) {
      resolved.active_errors = msg.active_errors;
    }
    else {
      resolved.active_errors = ''
    }

    if (msg.status_code !== undefined) {
      resolved.status_code = msg.status_code;
    }
    else {
      resolved.status_code = 0
    }

    if (msg.active_status !== undefined) {
      resolved.active_status = msg.active_status;
    }
    else {
      resolved.active_status = ''
    }

    return resolved;
    }
};

module.exports = SensorDiagnostics;
