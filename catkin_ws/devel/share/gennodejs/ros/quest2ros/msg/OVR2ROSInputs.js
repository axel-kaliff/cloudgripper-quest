// Auto-generated. Do not edit!

// (in-package quest2ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OVR2ROSInputs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.button_upper = null;
      this.button_lower = null;
      this.thumb_stick_horizontal = null;
      this.thumb_stick_vertical = null;
      this.press_index = null;
      this.press_middle = null;
    }
    else {
      if (initObj.hasOwnProperty('button_upper')) {
        this.button_upper = initObj.button_upper
      }
      else {
        this.button_upper = false;
      }
      if (initObj.hasOwnProperty('button_lower')) {
        this.button_lower = initObj.button_lower
      }
      else {
        this.button_lower = false;
      }
      if (initObj.hasOwnProperty('thumb_stick_horizontal')) {
        this.thumb_stick_horizontal = initObj.thumb_stick_horizontal
      }
      else {
        this.thumb_stick_horizontal = 0.0;
      }
      if (initObj.hasOwnProperty('thumb_stick_vertical')) {
        this.thumb_stick_vertical = initObj.thumb_stick_vertical
      }
      else {
        this.thumb_stick_vertical = 0.0;
      }
      if (initObj.hasOwnProperty('press_index')) {
        this.press_index = initObj.press_index
      }
      else {
        this.press_index = 0.0;
      }
      if (initObj.hasOwnProperty('press_middle')) {
        this.press_middle = initObj.press_middle
      }
      else {
        this.press_middle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OVR2ROSInputs
    // Serialize message field [button_upper]
    bufferOffset = _serializer.bool(obj.button_upper, buffer, bufferOffset);
    // Serialize message field [button_lower]
    bufferOffset = _serializer.bool(obj.button_lower, buffer, bufferOffset);
    // Serialize message field [thumb_stick_horizontal]
    bufferOffset = _serializer.float32(obj.thumb_stick_horizontal, buffer, bufferOffset);
    // Serialize message field [thumb_stick_vertical]
    bufferOffset = _serializer.float32(obj.thumb_stick_vertical, buffer, bufferOffset);
    // Serialize message field [press_index]
    bufferOffset = _serializer.float32(obj.press_index, buffer, bufferOffset);
    // Serialize message field [press_middle]
    bufferOffset = _serializer.float32(obj.press_middle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OVR2ROSInputs
    let len;
    let data = new OVR2ROSInputs(null);
    // Deserialize message field [button_upper]
    data.button_upper = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [button_lower]
    data.button_lower = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [thumb_stick_horizontal]
    data.thumb_stick_horizontal = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [thumb_stick_vertical]
    data.thumb_stick_vertical = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [press_index]
    data.press_index = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [press_middle]
    data.press_middle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quest2ros/OVR2ROSInputs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8758130cf7abdc4f62ab78aeafd59057';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Inputs
    bool button_upper
    bool button_lower
    float32 thumb_stick_horizontal
    float32 thumb_stick_vertical
    float32 press_index
    float32 press_middle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OVR2ROSInputs(null);
    if (msg.button_upper !== undefined) {
      resolved.button_upper = msg.button_upper;
    }
    else {
      resolved.button_upper = false
    }

    if (msg.button_lower !== undefined) {
      resolved.button_lower = msg.button_lower;
    }
    else {
      resolved.button_lower = false
    }

    if (msg.thumb_stick_horizontal !== undefined) {
      resolved.thumb_stick_horizontal = msg.thumb_stick_horizontal;
    }
    else {
      resolved.thumb_stick_horizontal = 0.0
    }

    if (msg.thumb_stick_vertical !== undefined) {
      resolved.thumb_stick_vertical = msg.thumb_stick_vertical;
    }
    else {
      resolved.thumb_stick_vertical = 0.0
    }

    if (msg.press_index !== undefined) {
      resolved.press_index = msg.press_index;
    }
    else {
      resolved.press_index = 0.0
    }

    if (msg.press_middle !== undefined) {
      resolved.press_middle = msg.press_middle;
    }
    else {
      resolved.press_middle = 0.0
    }

    return resolved;
    }
};

module.exports = OVR2ROSInputs;
