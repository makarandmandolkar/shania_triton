# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fuse_pathfollowing_msgs/UpdatePathFeedback.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class UpdatePathFeedback(genpy.Message):
  _md5sum = "44f1771366ed4f018f0b801737cd8b2e"
  _type = "fuse_pathfollowing_msgs/UpdatePathFeedback"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback
string status
string[] completed_nodes # List of the completed node ids - excludes first node since it is never "reached" by the path follower
float64 percent_complete # Percent of the full path distance that has been traversed (0-100)
float64 distance_to_end  # Distance in meters (along path) to the end of the path
float64 distance_to_next_node # Distance in meters (along path) to the next node
"""
  __slots__ = ['status','completed_nodes','percent_complete','distance_to_end','distance_to_next_node']
  _slot_types = ['string','string[]','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       status,completed_nodes,percent_complete,distance_to_end,distance_to_next_node

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UpdatePathFeedback, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.status is None:
        self.status = ''
      if self.completed_nodes is None:
        self.completed_nodes = []
      if self.percent_complete is None:
        self.percent_complete = 0.
      if self.distance_to_end is None:
        self.distance_to_end = 0.
      if self.distance_to_next_node is None:
        self.distance_to_next_node = 0.
    else:
      self.status = ''
      self.completed_nodes = []
      self.percent_complete = 0.
      self.distance_to_end = 0.
      self.distance_to_next_node = 0.

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
      _x = self.status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.completed_nodes)
      buff.write(_struct_I.pack(length))
      for val1 in self.completed_nodes:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self
      buff.write(_get_struct_3d().pack(_x.percent_complete, _x.distance_to_end, _x.distance_to_next_node))
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.status = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.completed_nodes = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.completed_nodes.append(val1)
      _x = self
      start = end
      end += 24
      (_x.percent_complete, _x.distance_to_end, _x.distance_to_next_node,) = _get_struct_3d().unpack(str[start:end])
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
      _x = self.status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.completed_nodes)
      buff.write(_struct_I.pack(length))
      for val1 in self.completed_nodes:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self
      buff.write(_get_struct_3d().pack(_x.percent_complete, _x.distance_to_end, _x.distance_to_next_node))
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.status = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.completed_nodes = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.completed_nodes.append(val1)
      _x = self
      start = end
      end += 24
      (_x.percent_complete, _x.distance_to_end, _x.distance_to_next_node,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
