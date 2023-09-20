// Auto-generated. Do not edit!

// (in-package fuse_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TaskAction = require('./TaskAction.js');

//-----------------------------------------------------------

class ExecuteTaskGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.agent_id = null;
      this.action_plan = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = '';
      }
      if (initObj.hasOwnProperty('agent_id')) {
        this.agent_id = initObj.agent_id
      }
      else {
        this.agent_id = '';
      }
      if (initObj.hasOwnProperty('action_plan')) {
        this.action_plan = initObj.action_plan
      }
      else {
        this.action_plan = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecuteTaskGoal
    // Serialize message field [task_id]
    bufferOffset = _serializer.string(obj.task_id, buffer, bufferOffset);
    // Serialize message field [agent_id]
    bufferOffset = _serializer.string(obj.agent_id, buffer, bufferOffset);
    // Serialize message field [action_plan]
    // Serialize the length for message field [action_plan]
    bufferOffset = _serializer.uint32(obj.action_plan.length, buffer, bufferOffset);
    obj.action_plan.forEach((val) => {
      bufferOffset = TaskAction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecuteTaskGoal
    let len;
    let data = new ExecuteTaskGoal(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [agent_id]
    data.agent_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_plan]
    // Deserialize array length for message field [action_plan]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.action_plan = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.action_plan[i] = TaskAction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.task_id.length;
    length += object.agent_id.length;
    object.action_plan.forEach((val) => {
      length += TaskAction.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fuse_navigation_msgs/ExecuteTaskGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61e0bad8ee9b5e9931c6026164f872c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    ## Action used to send a task/mission for the agent to execute
    
    # Goal
    string task_id
    string agent_id
    TaskAction[] action_plan
    
    ================================================================================
    MSG: fuse_navigation_msgs/TaskAction
    # Represents an action as part of a larger agent task
    string name
    string[] arguments
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExecuteTaskGoal(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = ''
    }

    if (msg.agent_id !== undefined) {
      resolved.agent_id = msg.agent_id;
    }
    else {
      resolved.agent_id = ''
    }

    if (msg.action_plan !== undefined) {
      resolved.action_plan = new Array(msg.action_plan.length);
      for (let i = 0; i < resolved.action_plan.length; ++i) {
        resolved.action_plan[i] = TaskAction.Resolve(msg.action_plan[i]);
      }
    }
    else {
      resolved.action_plan = []
    }

    return resolved;
    }
};

module.exports = ExecuteTaskGoal;
