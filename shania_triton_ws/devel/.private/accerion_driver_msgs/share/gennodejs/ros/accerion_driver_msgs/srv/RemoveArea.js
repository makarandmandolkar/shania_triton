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

class RemoveAreaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.areaIDToBeRemoved = null;
      this.removeAll = null;
    }
    else {
      if (initObj.hasOwnProperty('areaIDToBeRemoved')) {
        this.areaIDToBeRemoved = initObj.areaIDToBeRemoved
      }
      else {
        this.areaIDToBeRemoved = 0;
      }
      if (initObj.hasOwnProperty('removeAll')) {
        this.removeAll = initObj.removeAll
      }
      else {
        this.removeAll = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveAreaRequest
    // Serialize message field [areaIDToBeRemoved]
    bufferOffset = _serializer.uint16(obj.areaIDToBeRemoved, buffer, bufferOffset);
    // Serialize message field [removeAll]
    bufferOffset = _serializer.bool(obj.removeAll, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveAreaRequest
    let len;
    let data = new RemoveAreaRequest(null);
    // Deserialize message field [areaIDToBeRemoved]
    data.areaIDToBeRemoved = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [removeAll]
    data.removeAll = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/RemoveAreaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '414f5eb7fc7ec2360743cccfb20c1dbf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 areaIDToBeRemoved      # Area ID to be removed
    bool removeAll                # Remove all areas
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveAreaRequest(null);
    if (msg.areaIDToBeRemoved !== undefined) {
      resolved.areaIDToBeRemoved = msg.areaIDToBeRemoved;
    }
    else {
      resolved.areaIDToBeRemoved = 0
    }

    if (msg.removeAll !== undefined) {
      resolved.removeAll = msg.removeAll;
    }
    else {
      resolved.removeAll = false
    }

    return resolved;
    }
};

class RemoveAreaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.areaIDRemoved = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('areaIDRemoved')) {
        this.areaIDRemoved = initObj.areaIDRemoved
      }
      else {
        this.areaIDRemoved = 0;
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
    // Serializes a message object of type RemoveAreaResponse
    // Serialize message field [areaIDRemoved]
    bufferOffset = _serializer.uint16(obj.areaIDRemoved, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveAreaResponse
    let len;
    let data = new RemoveAreaResponse(null);
    // Deserialize message field [areaIDRemoved]
    data.areaIDRemoved = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'accerion_driver_msgs/RemoveAreaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c71c8d4840a1d7bf10934965a02b88e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 areaIDRemoved        # Area ID that was removed (0xFFFF for all areas)
    bool success                # indicate successful run of triggered service
    string message 				# informational, e.g. for error messages
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveAreaResponse(null);
    if (msg.areaIDRemoved !== undefined) {
      resolved.areaIDRemoved = msg.areaIDRemoved;
    }
    else {
      resolved.areaIDRemoved = 0
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
  Request: RemoveAreaRequest,
  Response: RemoveAreaResponse,
  md5sum() { return '881afa415578f35e809f2c9503522767'; },
  datatype() { return 'accerion_driver_msgs/RemoveArea'; }
};
