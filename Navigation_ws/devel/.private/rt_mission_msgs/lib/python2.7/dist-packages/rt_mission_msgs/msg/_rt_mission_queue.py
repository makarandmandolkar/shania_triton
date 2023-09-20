# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rt_mission_msgs/rt_mission_queue.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import rt_mission_msgs.msg

class rt_mission_queue(genpy.Message):
  _md5sum = "ca28651d6271b7ac52eca2ec6cfb8a4f"
  _type = "rt_mission_msgs/rt_mission_queue"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """rt_mission_msgs/rt_mission[] mission_queue
int32 mission_queue_index

================================================================================
MSG: rt_mission_msgs/rt_mission
int32 task_enum
int32 TASK_PICK_AND_PLACE=0
int32 TASK_PICK=1
int32 TASK_PLACE=2
int32 TASK_CHARGE_ROBOT=3
string status
string pick_location_name
string place_location_name
string pick_stage_name
string place_stage_name
geometry_msgs/Pose pick_location
geometry_msgs/Pose pick_stage_location
geometry_msgs/Pose place_location
geometry_msgs/Pose place_stage_location
string pallet_id
float32 pick_slot_height
float32 place_slot_height
string pick_approach_direction
string place_approach_direction
string pick_edge_case_direction
string place_edge_case_direction
bool priority
bool payload_dimension
float32 mission_complete_time
float32 mission_distance

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
"""
  __slots__ = ['mission_queue','mission_queue_index']
  _slot_types = ['rt_mission_msgs/rt_mission[]','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       mission_queue,mission_queue_index

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(rt_mission_queue, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.mission_queue is None:
        self.mission_queue = []
      if self.mission_queue_index is None:
        self.mission_queue_index = 0
    else:
      self.mission_queue = []
      self.mission_queue_index = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.mission_queue)
      buff.write(_struct_I.pack(length))
      for val1 in self.mission_queue:
        _x = val1.task_enum
        buff.write(_get_struct_i().pack(_x))
        _x = val1.status
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.pick_location_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.place_location_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.pick_stage_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.place_stage_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v1 = val1.pick_location
        _v2 = _v1.position
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = _v1.orientation
        _x = _v3
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v4 = val1.pick_stage_location
        _v5 = _v4.position
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = _v4.orientation
        _x = _v6
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v7 = val1.place_location
        _v8 = _v7.position
        _x = _v8
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v9 = _v7.orientation
        _x = _v9
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v10 = val1.place_stage_location
        _v11 = _v10.position
        _x = _v11
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v12 = _v10.orientation
        _x = _v12
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _x = val1.pallet_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2f().pack(_x.pick_slot_height, _x.place_slot_height))
        _x = val1.pick_approach_direction
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.place_approach_direction
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.pick_edge_case_direction
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.place_edge_case_direction
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2B2f().pack(_x.priority, _x.payload_dimension, _x.mission_complete_time, _x.mission_distance))
      _x = self.mission_queue_index
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.mission_queue is None:
        self.mission_queue = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.mission_queue = []
      for i in range(0, length):
        val1 = rt_mission_msgs.msg.rt_mission()
        start = end
        end += 4
        (val1.task_enum,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.status = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.status = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pick_location_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pick_location_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.place_location_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.place_location_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pick_stage_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pick_stage_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.place_stage_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.place_stage_name = str[start:end]
        _v13 = val1.pick_location
        _v14 = _v13.position
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = _v13.orientation
        _x = _v15
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v16 = val1.pick_stage_location
        _v17 = _v16.position
        _x = _v17
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v18 = _v16.orientation
        _x = _v18
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v19 = val1.place_location
        _v20 = _v19.position
        _x = _v20
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v21 = _v19.orientation
        _x = _v21
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v22 = val1.place_stage_location
        _v23 = _v22.position
        _x = _v23
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v24 = _v22.orientation
        _x = _v24
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pallet_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pallet_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.pick_slot_height, _x.place_slot_height,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pick_approach_direction = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pick_approach_direction = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.place_approach_direction = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.place_approach_direction = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pick_edge_case_direction = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pick_edge_case_direction = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.place_edge_case_direction = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.place_edge_case_direction = str[start:end]
        _x = val1
        start = end
        end += 10
        (_x.priority, _x.payload_dimension, _x.mission_complete_time, _x.mission_distance,) = _get_struct_2B2f().unpack(str[start:end])
        val1.priority = bool(val1.priority)
        val1.payload_dimension = bool(val1.payload_dimension)
        self.mission_queue.append(val1)
      start = end
      end += 4
      (self.mission_queue_index,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.mission_queue)
      buff.write(_struct_I.pack(length))
      for val1 in self.mission_queue:
        _x = val1.task_enum
        buff.write(_get_struct_i().pack(_x))
        _x = val1.status
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.pick_location_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.place_location_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.pick_stage_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.place_stage_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v25 = val1.pick_location
        _v26 = _v25.position
        _x = _v26
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v27 = _v25.orientation
        _x = _v27
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v28 = val1.pick_stage_location
        _v29 = _v28.position
        _x = _v29
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v30 = _v28.orientation
        _x = _v30
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v31 = val1.place_location
        _v32 = _v31.position
        _x = _v32
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v33 = _v31.orientation
        _x = _v33
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v34 = val1.place_stage_location
        _v35 = _v34.position
        _x = _v35
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v36 = _v34.orientation
        _x = _v36
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _x = val1.pallet_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2f().pack(_x.pick_slot_height, _x.place_slot_height))
        _x = val1.pick_approach_direction
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.place_approach_direction
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.pick_edge_case_direction
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.place_edge_case_direction
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2B2f().pack(_x.priority, _x.payload_dimension, _x.mission_complete_time, _x.mission_distance))
      _x = self.mission_queue_index
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.mission_queue is None:
        self.mission_queue = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.mission_queue = []
      for i in range(0, length):
        val1 = rt_mission_msgs.msg.rt_mission()
        start = end
        end += 4
        (val1.task_enum,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.status = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.status = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pick_location_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pick_location_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.place_location_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.place_location_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pick_stage_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pick_stage_name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.place_stage_name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.place_stage_name = str[start:end]
        _v37 = val1.pick_location
        _v38 = _v37.position
        _x = _v38
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v39 = _v37.orientation
        _x = _v39
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v40 = val1.pick_stage_location
        _v41 = _v40.position
        _x = _v41
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v42 = _v40.orientation
        _x = _v42
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v43 = val1.place_location
        _v44 = _v43.position
        _x = _v44
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v45 = _v43.orientation
        _x = _v45
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v46 = val1.place_stage_location
        _v47 = _v46.position
        _x = _v47
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v48 = _v46.orientation
        _x = _v48
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pallet_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pallet_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.pick_slot_height, _x.place_slot_height,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pick_approach_direction = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pick_approach_direction = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.place_approach_direction = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.place_approach_direction = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.pick_edge_case_direction = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.pick_edge_case_direction = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.place_edge_case_direction = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.place_edge_case_direction = str[start:end]
        _x = val1
        start = end
        end += 10
        (_x.priority, _x.payload_dimension, _x.mission_complete_time, _x.mission_distance,) = _get_struct_2B2f().unpack(str[start:end])
        val1.priority = bool(val1.priority)
        val1.payload_dimension = bool(val1.payload_dimension)
        self.mission_queue.append(val1)
      start = end
      end += 4
      (self.mission_queue_index,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B2f = None
def _get_struct_2B2f():
    global _struct_2B2f
    if _struct_2B2f is None:
        _struct_2B2f = struct.Struct("<2B2f")
    return _struct_2B2f
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
