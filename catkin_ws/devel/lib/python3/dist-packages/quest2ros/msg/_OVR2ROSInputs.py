# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from quest2ros/OVR2ROSInputs.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class OVR2ROSInputs(genpy.Message):
  _md5sum = "8758130cf7abdc4f62ab78aeafd59057"
  _type = "quest2ros/OVR2ROSInputs"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Inputs
bool button_upper
bool button_lower
float32 thumb_stick_horizontal
float32 thumb_stick_vertical
float32 press_index
float32 press_middle"""
  __slots__ = ['button_upper','button_lower','thumb_stick_horizontal','thumb_stick_vertical','press_index','press_middle']
  _slot_types = ['bool','bool','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       button_upper,button_lower,thumb_stick_horizontal,thumb_stick_vertical,press_index,press_middle

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OVR2ROSInputs, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.button_upper is None:
        self.button_upper = False
      if self.button_lower is None:
        self.button_lower = False
      if self.thumb_stick_horizontal is None:
        self.thumb_stick_horizontal = 0.
      if self.thumb_stick_vertical is None:
        self.thumb_stick_vertical = 0.
      if self.press_index is None:
        self.press_index = 0.
      if self.press_middle is None:
        self.press_middle = 0.
    else:
      self.button_upper = False
      self.button_lower = False
      self.thumb_stick_horizontal = 0.
      self.thumb_stick_vertical = 0.
      self.press_index = 0.
      self.press_middle = 0.

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
      _x = self
      buff.write(_get_struct_2B4f().pack(_x.button_upper, _x.button_lower, _x.thumb_stick_horizontal, _x.thumb_stick_vertical, _x.press_index, _x.press_middle))
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
      _x = self
      start = end
      end += 18
      (_x.button_upper, _x.button_lower, _x.thumb_stick_horizontal, _x.thumb_stick_vertical, _x.press_index, _x.press_middle,) = _get_struct_2B4f().unpack(str[start:end])
      self.button_upper = bool(self.button_upper)
      self.button_lower = bool(self.button_lower)
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
      _x = self
      buff.write(_get_struct_2B4f().pack(_x.button_upper, _x.button_lower, _x.thumb_stick_horizontal, _x.thumb_stick_vertical, _x.press_index, _x.press_middle))
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
      _x = self
      start = end
      end += 18
      (_x.button_upper, _x.button_lower, _x.thumb_stick_horizontal, _x.thumb_stick_vertical, _x.press_index, _x.press_middle,) = _get_struct_2B4f().unpack(str[start:end])
      self.button_upper = bool(self.button_upper)
      self.button_lower = bool(self.button_lower)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B4f = None
def _get_struct_2B4f():
    global _struct_2B4f
    if _struct_2B4f is None:
        _struct_2B4f = struct.Struct("<2B4f")
    return _struct_2B4f
