// Auto-generated. Do not edit!

// (in-package camera_utils.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class LatestImageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.realsense_source = null;
      this.timeout_millis = null;
    }
    else {
      if (initObj.hasOwnProperty('realsense_source')) {
        this.realsense_source = initObj.realsense_source
      }
      else {
        this.realsense_source = '';
      }
      if (initObj.hasOwnProperty('timeout_millis')) {
        this.timeout_millis = initObj.timeout_millis
      }
      else {
        this.timeout_millis = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LatestImageRequest
    // Serialize message field [realsense_source]
    bufferOffset = _serializer.string(obj.realsense_source, buffer, bufferOffset);
    // Serialize message field [timeout_millis]
    bufferOffset = _serializer.int32(obj.timeout_millis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LatestImageRequest
    let len;
    let data = new LatestImageRequest(null);
    // Deserialize message field [realsense_source]
    data.realsense_source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timeout_millis]
    data.timeout_millis = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.realsense_source.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'camera_utils/LatestImageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee5971164a8203b5270f2074d44893e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string realsense_source
    int32 timeout_millis
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LatestImageRequest(null);
    if (msg.realsense_source !== undefined) {
      resolved.realsense_source = msg.realsense_source;
    }
    else {
      resolved.realsense_source = ''
    }

    if (msg.timeout_millis !== undefined) {
      resolved.timeout_millis = msg.timeout_millis;
    }
    else {
      resolved.timeout_millis = 0
    }

    return resolved;
    }
};

class LatestImageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.color_image = null;
      this.depth_image = null;
      this.depth_camera_info = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('color_image')) {
        this.color_image = initObj.color_image
      }
      else {
        this.color_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('depth_image')) {
        this.depth_image = initObj.depth_image
      }
      else {
        this.depth_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('depth_camera_info')) {
        this.depth_camera_info = initObj.depth_camera_info
      }
      else {
        this.depth_camera_info = new sensor_msgs.msg.CameraInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LatestImageResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [color_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.color_image, buffer, bufferOffset);
    // Serialize message field [depth_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth_image, buffer, bufferOffset);
    // Serialize message field [depth_camera_info]
    bufferOffset = sensor_msgs.msg.CameraInfo.serialize(obj.depth_camera_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LatestImageResponse
    let len;
    let data = new LatestImageResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [color_image]
    data.color_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth_image]
    data.depth_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth_camera_info]
    data.depth_camera_info = sensor_msgs.msg.CameraInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.color_image);
    length += sensor_msgs.msg.Image.getMessageSize(object.depth_image);
    length += sensor_msgs.msg.CameraInfo.getMessageSize(object.depth_camera_info);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'camera_utils/LatestImageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '196d620881b067ce55d1f9c0a10950a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    sensor_msgs/Image color_image
    sensor_msgs/Image depth_image
    sensor_msgs/CameraInfo depth_camera_info
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    MSG: sensor_msgs/CameraInfo
    # This message defines meta information for a camera. It should be in a
    # camera namespace on topic "camera_info" and accompanied by up to five
    # image topics named:
    #
    #   image_raw - raw data from the camera driver, possibly Bayer encoded
    #   image            - monochrome, distorted
    #   image_color      - color, distorted
    #   image_rect       - monochrome, rectified
    #   image_rect_color - color, rectified
    #
    # The image_pipeline contains packages (image_proc, stereo_image_proc)
    # for producing the four processed image topics from image_raw and
    # camera_info. The meaning of the camera parameters are described in
    # detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
    #
    # The image_geometry package provides a user-friendly interface to
    # common operations using this meta information. If you want to, e.g.,
    # project a 3d point into image coordinates, we strongly recommend
    # using image_geometry.
    #
    # If the camera is uncalibrated, the matrices D, K, R, P should be left
    # zeroed out. In particular, clients may assume that K[0] == 0.0
    # indicates an uncalibrated camera.
    
    #######################################################################
    #                     Image acquisition info                          #
    #######################################################################
    
    # Time of image acquisition, camera coordinate frame ID
    Header header    # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into the plane of the image
    
    
    #######################################################################
    #                      Calibration Parameters                         #
    #######################################################################
    # These are fixed during camera calibration. Their values will be the #
    # same in all messages until the camera is recalibrated. Note that    #
    # self-calibrating systems may "recalibrate" frequently.              #
    #                                                                     #
    # The internal parameters can be used to warp a raw (distorted) image #
    # to:                                                                 #
    #   1. An undistorted image (requires D and K)                        #
    #   2. A rectified image (requires D, K, R)                           #
    # The projection matrix P projects 3D points into the rectified image.#
    #######################################################################
    
    # The image dimensions with which the camera was calibrated. Normally
    # this will be the full camera resolution in pixels.
    uint32 height
    uint32 width
    
    # The distortion model used. Supported models are listed in
    # sensor_msgs/distortion_models.h. For most cameras, "plumb_bob" - a
    # simple model of radial and tangential distortion - is sufficient.
    string distortion_model
    
    # The distortion parameters, size depending on the distortion model.
    # For "plumb_bob", the 5 parameters are: (k1, k2, t1, t2, k3).
    float64[] D
    
    # Intrinsic camera matrix for the raw (distorted) images.
    #     [fx  0 cx]
    # K = [ 0 fy cy]
    #     [ 0  0  1]
    # Projects 3D points in the camera coordinate frame to 2D pixel
    # coordinates using the focal lengths (fx, fy) and principal point
    # (cx, cy).
    float64[9]  K # 3x3 row-major matrix
    
    # Rectification matrix (stereo cameras only)
    # A rotation matrix aligning the camera coordinate system to the ideal
    # stereo image plane so that epipolar lines in both stereo images are
    # parallel.
    float64[9]  R # 3x3 row-major matrix
    
    # Projection/camera matrix
    #     [fx'  0  cx' Tx]
    # P = [ 0  fy' cy' Ty]
    #     [ 0   0   1   0]
    # By convention, this matrix specifies the intrinsic (camera) matrix
    #  of the processed (rectified) image. That is, the left 3x3 portion
    #  is the normal camera intrinsic matrix for the rectified image.
    # It projects 3D points in the camera coordinate frame to 2D pixel
    #  coordinates using the focal lengths (fx', fy') and principal point
    #  (cx', cy') - these may differ from the values in K.
    # For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
    #  also have R = the identity and P[1:3,1:3] = K.
    # For a stereo pair, the fourth column [Tx Ty 0]' is related to the
    #  position of the optical center of the second camera in the first
    #  camera's frame. We assume Tz = 0 so both cameras are in the same
    #  stereo image plane. The first camera always has Tx = Ty = 0. For
    #  the right (second) camera of a horizontal stereo pair, Ty = 0 and
    #  Tx = -fx' * B, where B is the baseline between the cameras.
    # Given a 3D point [X Y Z]', the projection (x, y) of the point onto
    #  the rectified image is given by:
    #  [u v w]' = P * [X Y Z 1]'
    #         x = u / w
    #         y = v / w
    #  This holds for both images of a stereo pair.
    float64[12] P # 3x4 row-major matrix
    
    
    #######################################################################
    #                      Operational Parameters                         #
    #######################################################################
    # These define the image region actually captured by the camera       #
    # driver. Although they affect the geometry of the output image, they #
    # may be changed freely without recalibrating the camera.             #
    #######################################################################
    
    # Binning refers here to any camera setting which combines rectangular
    #  neighborhoods of pixels into larger "super-pixels." It reduces the
    #  resolution of the output image to
    #  (width / binning_x) x (height / binning_y).
    # The default values binning_x = binning_y = 0 is considered the same
    #  as binning_x = binning_y = 1 (no subsampling).
    uint32 binning_x
    uint32 binning_y
    
    # Region of interest (subwindow of full camera resolution), given in
    #  full resolution (unbinned) image coordinates. A particular ROI
    #  always denotes the same window of pixels on the camera sensor,
    #  regardless of binning settings.
    # The default setting of roi (all values 0) is considered the same as
    #  full resolution (roi.width = width, roi.height = height).
    RegionOfInterest roi
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LatestImageResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.color_image !== undefined) {
      resolved.color_image = sensor_msgs.msg.Image.Resolve(msg.color_image)
    }
    else {
      resolved.color_image = new sensor_msgs.msg.Image()
    }

    if (msg.depth_image !== undefined) {
      resolved.depth_image = sensor_msgs.msg.Image.Resolve(msg.depth_image)
    }
    else {
      resolved.depth_image = new sensor_msgs.msg.Image()
    }

    if (msg.depth_camera_info !== undefined) {
      resolved.depth_camera_info = sensor_msgs.msg.CameraInfo.Resolve(msg.depth_camera_info)
    }
    else {
      resolved.depth_camera_info = new sensor_msgs.msg.CameraInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: LatestImageRequest,
  Response: LatestImageResponse,
  md5sum() { return '8b766023585bea29bcbe2ed10ab865f2'; },
  datatype() { return 'camera_utils/LatestImage'; }
};
