// Auto-generated. Do not edit!

// (in-package multimaster_msgs_fkie.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LinkState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.destination = null;
      this.quality = null;
    }
    else {
      if (initObj.hasOwnProperty('destination')) {
        this.destination = initObj.destination
      }
      else {
        this.destination = '';
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinkState
    // Serialize message field [destination]
    bufferOffset = _serializer.string(obj.destination, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.float32(obj.quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkState
    let len;
    let data = new LinkState(null);
    // Deserialize message field [destination]
    data.destination = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.destination.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multimaster_msgs_fkie/LinkState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3fe0aab52336c0bd0bfea55b131c66e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string destination
    float32 quality
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LinkState(null);
    if (msg.destination !== undefined) {
      resolved.destination = msg.destination;
    }
    else {
      resolved.destination = ''
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0.0
    }

    return resolved;
    }
};

module.exports = LinkState;
