// Auto-generated. Do not edit!

// (in-package accerion_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DriftCorrectionDetails {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_corrected_pose = null;
      this.correction_x = null;
      this.correction_y = null;
      this.correction_heading = null;
      this.error_heading_deg = null;
      this.correct_heading_deg = null;
      this.cumulative_traveled_distance = null;
      this.cumulative_traveled_rotation = null;
      this.error_percentage = null;
      this.cluster_id = null;
      this.acq_quality_estimate = null;
      this.reserved1 = null;
      this.reserved2 = null;
      this.reserved3 = null;
    }
    else {
      if (initObj.hasOwnProperty('new_corrected_pose')) {
        this.new_corrected_pose = initObj.new_corrected_pose
      }
      else {
        this.new_corrected_pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('correction_x')) {
        this.correction_x = initObj.correction_x
      }
      else {
        this.correction_x = 0.0;
      }
      if (initObj.hasOwnProperty('correction_y')) {
        this.correction_y = initObj.correction_y
      }
      else {
        this.correction_y = 0.0;
      }
      if (initObj.hasOwnProperty('correction_heading')) {
        this.correction_heading = initObj.correction_heading
      }
      else {
        this.correction_heading = 0.0;
      }
      if (initObj.hasOwnProperty('error_heading_deg')) {
        this.error_heading_deg = initObj.error_heading_deg
      }
      else {
        this.error_heading_deg = 0.0;
      }
      if (initObj.hasOwnProperty('correct_heading_deg')) {
        this.correct_heading_deg = initObj.correct_heading_deg
      }
      else {
        this.correct_heading_deg = 0.0;
      }
      if (initObj.hasOwnProperty('cumulative_traveled_distance')) {
        this.cumulative_traveled_distance = initObj.cumulative_traveled_distance
      }
      else {
        this.cumulative_traveled_distance = 0.0;
      }
      if (initObj.hasOwnProperty('cumulative_traveled_rotation')) {
        this.cumulative_traveled_rotation = initObj.cumulative_traveled_rotation
      }
      else {
        this.cumulative_traveled_rotation = 0.0;
      }
      if (initObj.hasOwnProperty('error_percentage')) {
        this.error_percentage = initObj.error_percentage
      }
      else {
        this.error_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('cluster_id')) {
        this.cluster_id = initObj.cluster_id
      }
      else {
        this.cluster_id = 0;
      }
      if (initObj.hasOwnProperty('acq_quality_estimate')) {
        this.acq_quality_estimate = initObj.acq_quality_estimate
      }
      else {
        this.acq_quality_estimate = 0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0.0;
      }
      if (initObj.hasOwnProperty('reserved2')) {
        this.reserved2 = initObj.reserved2
      }
      else {
        this.reserved2 = 0.0;
      }
      if (initObj.hasOwnProperty('reserved3')) {
        this.reserved3 = initObj.reserved3
      }
      else {
        this.reserved3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriftCorrectionDetails
    // Serialize message field [new_corrected_pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.new_corrected_pose, buffer, bufferOffset);
    // Serialize message field [correction_x]
    bufferOffset = _serializer.float32(obj.correction_x, buffer, bufferOffset);
    // Serialize message field [correction_y]
    bufferOffset = _serializer.float32(obj.correction_y, buffer, bufferOffset);
    // Serialize message field [correction_heading]
    bufferOffset = _serializer.float32(obj.correction_heading, buffer, bufferOffset);
    // Serialize message field [error_heading_deg]
    bufferOffset = _serializer.float32(obj.error_heading_deg, buffer, bufferOffset);
    // Serialize message field [correct_heading_deg]
    bufferOffset = _serializer.float32(obj.correct_heading_deg, buffer, bufferOffset);
    // Serialize message field [cumulative_traveled_distance]
    bufferOffset = _serializer.float32(obj.cumulative_traveled_distance, buffer, bufferOffset);
    // Serialize message field [cumulative_traveled_rotation]
    bufferOffset = _serializer.float32(obj.cumulative_traveled_rotation, buffer, bufferOffset);
    // Serialize message field [error_percentage]
    bufferOffset = _serializer.float32(obj.error_percentage, buffer, bufferOffset);
    // Serialize message field [cluster_id]
    bufferOffset = _serializer.uint16(obj.cluster_id, buffer, bufferOffset);
    // Serialize message field [acq_quality_estimate]
    bufferOffset = _serializer.uint8(obj.acq_quality_estimate, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float32(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [reserved2]
    bufferOffset = _serializer.float32(obj.reserved2, buffer, bufferOffset);
    // Serialize message field [reserved3]
    bufferOffset = _serializer.float32(obj.reserved3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriftCorrectionDetails
    let len;
    let data = new DriftCorrectionDetails(null);
    // Deserialize message field [new_corrected_pose]
    data.new_corrected_pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [correction_x]
    data.correction_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [correction_y]
    data.correction_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [correction_heading]
    data.correction_heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error_heading_deg]
    data.error_heading_deg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [correct_heading_deg]
    data.correct_heading_deg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cumulative_traveled_distance]
    data.cumulative_traveled_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cumulative_traveled_rotation]
    data.cumulative_traveled_rotation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error_percentage]
    data.error_percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cluster_id]
    data.cluster_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [acq_quality_estimate]
    data.acq_quality_estimate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved2]
    data.reserved2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved3]
    data.reserved3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 391;
  }

  static datatype() {
    // Returns string type for a message object
    return 'accerion_driver_msgs/DriftCorrectionDetails';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dee6f706294700ef373c89c1963dda5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseWithCovariance new_corrected_pose  # corrected pose in reference frame
    
    float32 correction_x                    		# corrected position error [m] in +x direction in reference frame
    float32 correction_y                   		    # corrected position error [m] in +y direction in reference frame
    float32 correction_heading              		# corrected orientation error [rad] in +z direction in reference frame
    float32 error_heading_deg                  	    # orientation error [deg] in +z direction in reference frame
    float32 correct_heading_deg                 	# correct (new) orientation [deg] in +z direction in reference frame
    
    float32 cumulative_traveled_distance     		# cumulative traveled linear distance since last drift correction
    float32 cumulative_traveled_rotation     		# cumulative traveled rotational distance since last drift correction
    float32 error_percentage 			   		    # (preliminary) simple positional accuracy figure
    uint16   cluster_id 					   		# ID of the cluster on which the drift correction is based
    
    uint8   acq_quality_estimate             		# quality estimate
    
    float32 reserved1     		                    #
    float32 reserved2     		                    #
    float32 reserved3 			   		            #
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    const resolved = new DriftCorrectionDetails(null);
    if (msg.new_corrected_pose !== undefined) {
      resolved.new_corrected_pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.new_corrected_pose)
    }
    else {
      resolved.new_corrected_pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.correction_x !== undefined) {
      resolved.correction_x = msg.correction_x;
    }
    else {
      resolved.correction_x = 0.0
    }

    if (msg.correction_y !== undefined) {
      resolved.correction_y = msg.correction_y;
    }
    else {
      resolved.correction_y = 0.0
    }

    if (msg.correction_heading !== undefined) {
      resolved.correction_heading = msg.correction_heading;
    }
    else {
      resolved.correction_heading = 0.0
    }

    if (msg.error_heading_deg !== undefined) {
      resolved.error_heading_deg = msg.error_heading_deg;
    }
    else {
      resolved.error_heading_deg = 0.0
    }

    if (msg.correct_heading_deg !== undefined) {
      resolved.correct_heading_deg = msg.correct_heading_deg;
    }
    else {
      resolved.correct_heading_deg = 0.0
    }

    if (msg.cumulative_traveled_distance !== undefined) {
      resolved.cumulative_traveled_distance = msg.cumulative_traveled_distance;
    }
    else {
      resolved.cumulative_traveled_distance = 0.0
    }

    if (msg.cumulative_traveled_rotation !== undefined) {
      resolved.cumulative_traveled_rotation = msg.cumulative_traveled_rotation;
    }
    else {
      resolved.cumulative_traveled_rotation = 0.0
    }

    if (msg.error_percentage !== undefined) {
      resolved.error_percentage = msg.error_percentage;
    }
    else {
      resolved.error_percentage = 0.0
    }

    if (msg.cluster_id !== undefined) {
      resolved.cluster_id = msg.cluster_id;
    }
    else {
      resolved.cluster_id = 0
    }

    if (msg.acq_quality_estimate !== undefined) {
      resolved.acq_quality_estimate = msg.acq_quality_estimate;
    }
    else {
      resolved.acq_quality_estimate = 0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0.0
    }

    if (msg.reserved2 !== undefined) {
      resolved.reserved2 = msg.reserved2;
    }
    else {
      resolved.reserved2 = 0.0
    }

    if (msg.reserved3 !== undefined) {
      resolved.reserved3 = msg.reserved3;
    }
    else {
      resolved.reserved3 = 0.0
    }

    return resolved;
    }
};

module.exports = DriftCorrectionDetails;
