// Auto-generated. Do not edit!

// (in-package fuse_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ExecuteTaskActionGoal = require('./ExecuteTaskActionGoal.js');
let ExecuteTaskActionResult = require('./ExecuteTaskActionResult.js');
let ExecuteTaskActionFeedback = require('./ExecuteTaskActionFeedback.js');

//-----------------------------------------------------------

class ExecuteTaskAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new ExecuteTaskActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new ExecuteTaskActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new ExecuteTaskActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecuteTaskAction
    // Serialize message field [action_goal]
    bufferOffset = ExecuteTaskActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = ExecuteTaskActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = ExecuteTaskActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecuteTaskAction
    let len;
    let data = new ExecuteTaskAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = ExecuteTaskActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = ExecuteTaskActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = ExecuteTaskActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ExecuteTaskActionGoal.getMessageSize(object.action_goal);
    length += ExecuteTaskActionResult.getMessageSize(object.action_result);
    length += ExecuteTaskActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fuse_navigation_msgs/ExecuteTaskAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63475ef0fa14f093a28888aba2b872fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    ExecuteTaskActionGoal action_goal
    ExecuteTaskActionResult action_result
    ExecuteTaskActionFeedback action_feedback
    
    ================================================================================
    MSG: fuse_navigation_msgs/ExecuteTaskActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    ExecuteTaskGoal goal
    
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
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: fuse_navigation_msgs/ExecuteTaskGoal
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
    ================================================================================
    MSG: fuse_navigation_msgs/ExecuteTaskActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    ExecuteTaskResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: fuse_navigation_msgs/ExecuteTaskResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Result
    bool finished_mission
    
    ================================================================================
    MSG: fuse_navigation_msgs/ExecuteTaskActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    ExecuteTaskFeedback feedback
    
    ================================================================================
    MSG: fuse_navigation_msgs/ExecuteTaskFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Feedback
    string status # For general status messages
    string task_state
    int32 action_index
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExecuteTaskAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = ExecuteTaskActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new ExecuteTaskActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = ExecuteTaskActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new ExecuteTaskActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = ExecuteTaskActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new ExecuteTaskActionFeedback()
    }

    return resolved;
    }
};

module.exports = ExecuteTaskAction;
