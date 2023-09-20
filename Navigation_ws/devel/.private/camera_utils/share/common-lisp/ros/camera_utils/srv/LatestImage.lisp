; Auto-generated. Do not edit!


(cl:in-package camera_utils-srv)


;//! \htmlinclude LatestImage-request.msg.html

(cl:defclass <LatestImage-request> (roslisp-msg-protocol:ros-message)
  ((realsense_source
    :reader realsense_source
    :initarg :realsense_source
    :type cl:string
    :initform "")
   (timeout_millis
    :reader timeout_millis
    :initarg :timeout_millis
    :type cl:integer
    :initform 0))
)

(cl:defclass LatestImage-request (<LatestImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LatestImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LatestImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_utils-srv:<LatestImage-request> is deprecated: use camera_utils-srv:LatestImage-request instead.")))

(cl:ensure-generic-function 'realsense_source-val :lambda-list '(m))
(cl:defmethod realsense_source-val ((m <LatestImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_utils-srv:realsense_source-val is deprecated.  Use camera_utils-srv:realsense_source instead.")
  (realsense_source m))

(cl:ensure-generic-function 'timeout_millis-val :lambda-list '(m))
(cl:defmethod timeout_millis-val ((m <LatestImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_utils-srv:timeout_millis-val is deprecated.  Use camera_utils-srv:timeout_millis instead.")
  (timeout_millis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LatestImage-request>) ostream)
  "Serializes a message object of type '<LatestImage-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'realsense_source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'realsense_source))
  (cl:let* ((signed (cl:slot-value msg 'timeout_millis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LatestImage-request>) istream)
  "Deserializes a message object of type '<LatestImage-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'realsense_source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'realsense_source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout_millis) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LatestImage-request>)))
  "Returns string type for a service object of type '<LatestImage-request>"
  "camera_utils/LatestImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatestImage-request)))
  "Returns string type for a service object of type 'LatestImage-request"
  "camera_utils/LatestImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LatestImage-request>)))
  "Returns md5sum for a message object of type '<LatestImage-request>"
  "8b766023585bea29bcbe2ed10ab865f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LatestImage-request)))
  "Returns md5sum for a message object of type 'LatestImage-request"
  "8b766023585bea29bcbe2ed10ab865f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LatestImage-request>)))
  "Returns full string definition for message of type '<LatestImage-request>"
  (cl:format cl:nil "string realsense_source~%int32 timeout_millis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LatestImage-request)))
  "Returns full string definition for message of type 'LatestImage-request"
  (cl:format cl:nil "string realsense_source~%int32 timeout_millis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LatestImage-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'realsense_source))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LatestImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LatestImage-request
    (cl:cons ':realsense_source (realsense_source msg))
    (cl:cons ':timeout_millis (timeout_millis msg))
))
;//! \htmlinclude LatestImage-response.msg.html

(cl:defclass <LatestImage-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (color_image
    :reader color_image
    :initarg :color_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth_image
    :reader depth_image
    :initarg :depth_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth_camera_info
    :reader depth_camera_info
    :initarg :depth_camera_info
    :type sensor_msgs-msg:CameraInfo
    :initform (cl:make-instance 'sensor_msgs-msg:CameraInfo)))
)

(cl:defclass LatestImage-response (<LatestImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LatestImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LatestImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_utils-srv:<LatestImage-response> is deprecated: use camera_utils-srv:LatestImage-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LatestImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_utils-srv:success-val is deprecated.  Use camera_utils-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'color_image-val :lambda-list '(m))
(cl:defmethod color_image-val ((m <LatestImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_utils-srv:color_image-val is deprecated.  Use camera_utils-srv:color_image instead.")
  (color_image m))

(cl:ensure-generic-function 'depth_image-val :lambda-list '(m))
(cl:defmethod depth_image-val ((m <LatestImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_utils-srv:depth_image-val is deprecated.  Use camera_utils-srv:depth_image instead.")
  (depth_image m))

(cl:ensure-generic-function 'depth_camera_info-val :lambda-list '(m))
(cl:defmethod depth_camera_info-val ((m <LatestImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_utils-srv:depth_camera_info-val is deprecated.  Use camera_utils-srv:depth_camera_info instead.")
  (depth_camera_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LatestImage-response>) ostream)
  "Serializes a message object of type '<LatestImage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_camera_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LatestImage-response>) istream)
  "Deserializes a message object of type '<LatestImage-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_camera_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LatestImage-response>)))
  "Returns string type for a service object of type '<LatestImage-response>"
  "camera_utils/LatestImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatestImage-response)))
  "Returns string type for a service object of type 'LatestImage-response"
  "camera_utils/LatestImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LatestImage-response>)))
  "Returns md5sum for a message object of type '<LatestImage-response>"
  "8b766023585bea29bcbe2ed10ab865f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LatestImage-response)))
  "Returns md5sum for a message object of type 'LatestImage-response"
  "8b766023585bea29bcbe2ed10ab865f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LatestImage-response>)))
  "Returns full string definition for message of type '<LatestImage-response>"
  (cl:format cl:nil "bool success~%sensor_msgs/Image color_image~%sensor_msgs/Image depth_image~%sensor_msgs/CameraInfo depth_camera_info~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/CameraInfo~%# This message defines meta information for a camera. It should be in a~%# camera namespace on topic \"camera_info\" and accompanied by up to five~%# image topics named:~%#~%#   image_raw - raw data from the camera driver, possibly Bayer encoded~%#   image            - monochrome, distorted~%#   image_color      - color, distorted~%#   image_rect       - monochrome, rectified~%#   image_rect_color - color, rectified~%#~%# The image_pipeline contains packages (image_proc, stereo_image_proc)~%# for producing the four processed image topics from image_raw and~%# camera_info. The meaning of the camera parameters are described in~%# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.~%#~%# The image_geometry package provides a user-friendly interface to~%# common operations using this meta information. If you want to, e.g.,~%# project a 3d point into image coordinates, we strongly recommend~%# using image_geometry.~%#~%# If the camera is uncalibrated, the matrices D, K, R, P should be left~%# zeroed out. In particular, clients may assume that K[0] == 0.0~%# indicates an uncalibrated camera.~%~%#######################################################################~%#                     Image acquisition info                          #~%#######################################################################~%~%# Time of image acquisition, camera coordinate frame ID~%Header header    # Header timestamp should be acquisition time of image~%                 # Header frame_id should be optical frame of camera~%                 # origin of frame should be optical center of camera~%                 # +x should point to the right in the image~%                 # +y should point down in the image~%                 # +z should point into the plane of the image~%~%~%#######################################################################~%#                      Calibration Parameters                         #~%#######################################################################~%# These are fixed during camera calibration. Their values will be the #~%# same in all messages until the camera is recalibrated. Note that    #~%# self-calibrating systems may \"recalibrate\" frequently.              #~%#                                                                     #~%# The internal parameters can be used to warp a raw (distorted) image #~%# to:                                                                 #~%#   1. An undistorted image (requires D and K)                        #~%#   2. A rectified image (requires D, K, R)                           #~%# The projection matrix P projects 3D points into the rectified image.#~%#######################################################################~%~%# The image dimensions with which the camera was calibrated. Normally~%# this will be the full camera resolution in pixels.~%uint32 height~%uint32 width~%~%# The distortion model used. Supported models are listed in~%# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a~%# simple model of radial and tangential distortion - is sufficient.~%string distortion_model~%~%# The distortion parameters, size depending on the distortion model.~%# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).~%float64[] D~%~%# Intrinsic camera matrix for the raw (distorted) images.~%#     [fx  0 cx]~%# K = [ 0 fy cy]~%#     [ 0  0  1]~%# Projects 3D points in the camera coordinate frame to 2D pixel~%# coordinates using the focal lengths (fx, fy) and principal point~%# (cx, cy).~%float64[9]  K # 3x3 row-major matrix~%~%# Rectification matrix (stereo cameras only)~%# A rotation matrix aligning the camera coordinate system to the ideal~%# stereo image plane so that epipolar lines in both stereo images are~%# parallel.~%float64[9]  R # 3x3 row-major matrix~%~%# Projection/camera matrix~%#     [fx'  0  cx' Tx]~%# P = [ 0  fy' cy' Ty]~%#     [ 0   0   1   0]~%# By convention, this matrix specifies the intrinsic (camera) matrix~%#  of the processed (rectified) image. That is, the left 3x3 portion~%#  is the normal camera intrinsic matrix for the rectified image.~%# It projects 3D points in the camera coordinate frame to 2D pixel~%#  coordinates using the focal lengths (fx', fy') and principal point~%#  (cx', cy') - these may differ from the values in K.~%# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will~%#  also have R = the identity and P[1:3,1:3] = K.~%# For a stereo pair, the fourth column [Tx Ty 0]' is related to the~%#  position of the optical center of the second camera in the first~%#  camera's frame. We assume Tz = 0 so both cameras are in the same~%#  stereo image plane. The first camera always has Tx = Ty = 0. For~%#  the right (second) camera of a horizontal stereo pair, Ty = 0 and~%#  Tx = -fx' * B, where B is the baseline between the cameras.~%# Given a 3D point [X Y Z]', the projection (x, y) of the point onto~%#  the rectified image is given by:~%#  [u v w]' = P * [X Y Z 1]'~%#         x = u / w~%#         y = v / w~%#  This holds for both images of a stereo pair.~%float64[12] P # 3x4 row-major matrix~%~%~%#######################################################################~%#                      Operational Parameters                         #~%#######################################################################~%# These define the image region actually captured by the camera       #~%# driver. Although they affect the geometry of the output image, they #~%# may be changed freely without recalibrating the camera.             #~%#######################################################################~%~%# Binning refers here to any camera setting which combines rectangular~%#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the~%#  resolution of the output image to~%#  (width / binning_x) x (height / binning_y).~%# The default values binning_x = binning_y = 0 is considered the same~%#  as binning_x = binning_y = 1 (no subsampling).~%uint32 binning_x~%uint32 binning_y~%~%# Region of interest (subwindow of full camera resolution), given in~%#  full resolution (unbinned) image coordinates. A particular ROI~%#  always denotes the same window of pixels on the camera sensor,~%#  regardless of binning settings.~%# The default setting of roi (all values 0) is considered the same as~%#  full resolution (roi.width = width, roi.height = height).~%RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LatestImage-response)))
  "Returns full string definition for message of type 'LatestImage-response"
  (cl:format cl:nil "bool success~%sensor_msgs/Image color_image~%sensor_msgs/Image depth_image~%sensor_msgs/CameraInfo depth_camera_info~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/CameraInfo~%# This message defines meta information for a camera. It should be in a~%# camera namespace on topic \"camera_info\" and accompanied by up to five~%# image topics named:~%#~%#   image_raw - raw data from the camera driver, possibly Bayer encoded~%#   image            - monochrome, distorted~%#   image_color      - color, distorted~%#   image_rect       - monochrome, rectified~%#   image_rect_color - color, rectified~%#~%# The image_pipeline contains packages (image_proc, stereo_image_proc)~%# for producing the four processed image topics from image_raw and~%# camera_info. The meaning of the camera parameters are described in~%# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.~%#~%# The image_geometry package provides a user-friendly interface to~%# common operations using this meta information. If you want to, e.g.,~%# project a 3d point into image coordinates, we strongly recommend~%# using image_geometry.~%#~%# If the camera is uncalibrated, the matrices D, K, R, P should be left~%# zeroed out. In particular, clients may assume that K[0] == 0.0~%# indicates an uncalibrated camera.~%~%#######################################################################~%#                     Image acquisition info                          #~%#######################################################################~%~%# Time of image acquisition, camera coordinate frame ID~%Header header    # Header timestamp should be acquisition time of image~%                 # Header frame_id should be optical frame of camera~%                 # origin of frame should be optical center of camera~%                 # +x should point to the right in the image~%                 # +y should point down in the image~%                 # +z should point into the plane of the image~%~%~%#######################################################################~%#                      Calibration Parameters                         #~%#######################################################################~%# These are fixed during camera calibration. Their values will be the #~%# same in all messages until the camera is recalibrated. Note that    #~%# self-calibrating systems may \"recalibrate\" frequently.              #~%#                                                                     #~%# The internal parameters can be used to warp a raw (distorted) image #~%# to:                                                                 #~%#   1. An undistorted image (requires D and K)                        #~%#   2. A rectified image (requires D, K, R)                           #~%# The projection matrix P projects 3D points into the rectified image.#~%#######################################################################~%~%# The image dimensions with which the camera was calibrated. Normally~%# this will be the full camera resolution in pixels.~%uint32 height~%uint32 width~%~%# The distortion model used. Supported models are listed in~%# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a~%# simple model of radial and tangential distortion - is sufficient.~%string distortion_model~%~%# The distortion parameters, size depending on the distortion model.~%# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).~%float64[] D~%~%# Intrinsic camera matrix for the raw (distorted) images.~%#     [fx  0 cx]~%# K = [ 0 fy cy]~%#     [ 0  0  1]~%# Projects 3D points in the camera coordinate frame to 2D pixel~%# coordinates using the focal lengths (fx, fy) and principal point~%# (cx, cy).~%float64[9]  K # 3x3 row-major matrix~%~%# Rectification matrix (stereo cameras only)~%# A rotation matrix aligning the camera coordinate system to the ideal~%# stereo image plane so that epipolar lines in both stereo images are~%# parallel.~%float64[9]  R # 3x3 row-major matrix~%~%# Projection/camera matrix~%#     [fx'  0  cx' Tx]~%# P = [ 0  fy' cy' Ty]~%#     [ 0   0   1   0]~%# By convention, this matrix specifies the intrinsic (camera) matrix~%#  of the processed (rectified) image. That is, the left 3x3 portion~%#  is the normal camera intrinsic matrix for the rectified image.~%# It projects 3D points in the camera coordinate frame to 2D pixel~%#  coordinates using the focal lengths (fx', fy') and principal point~%#  (cx', cy') - these may differ from the values in K.~%# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will~%#  also have R = the identity and P[1:3,1:3] = K.~%# For a stereo pair, the fourth column [Tx Ty 0]' is related to the~%#  position of the optical center of the second camera in the first~%#  camera's frame. We assume Tz = 0 so both cameras are in the same~%#  stereo image plane. The first camera always has Tx = Ty = 0. For~%#  the right (second) camera of a horizontal stereo pair, Ty = 0 and~%#  Tx = -fx' * B, where B is the baseline between the cameras.~%# Given a 3D point [X Y Z]', the projection (x, y) of the point onto~%#  the rectified image is given by:~%#  [u v w]' = P * [X Y Z 1]'~%#         x = u / w~%#         y = v / w~%#  This holds for both images of a stereo pair.~%float64[12] P # 3x4 row-major matrix~%~%~%#######################################################################~%#                      Operational Parameters                         #~%#######################################################################~%# These define the image region actually captured by the camera       #~%# driver. Although they affect the geometry of the output image, they #~%# may be changed freely without recalibrating the camera.             #~%#######################################################################~%~%# Binning refers here to any camera setting which combines rectangular~%#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the~%#  resolution of the output image to~%#  (width / binning_x) x (height / binning_y).~%# The default values binning_x = binning_y = 0 is considered the same~%#  as binning_x = binning_y = 1 (no subsampling).~%uint32 binning_x~%uint32 binning_y~%~%# Region of interest (subwindow of full camera resolution), given in~%#  full resolution (unbinned) image coordinates. A particular ROI~%#  always denotes the same window of pixels on the camera sensor,~%#  regardless of binning settings.~%# The default setting of roi (all values 0) is considered the same as~%#  full resolution (roi.width = width, roi.height = height).~%RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LatestImage-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_camera_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LatestImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LatestImage-response
    (cl:cons ':success (success msg))
    (cl:cons ':color_image (color_image msg))
    (cl:cons ':depth_image (depth_image msg))
    (cl:cons ':depth_camera_info (depth_camera_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LatestImage)))
  'LatestImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LatestImage)))
  'LatestImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatestImage)))
  "Returns string type for a service object of type '<LatestImage>"
  "camera_utils/LatestImage")