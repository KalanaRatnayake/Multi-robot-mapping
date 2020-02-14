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

class SyncTopicInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
      this.node = null;
      this.nodeuri = null;
    }
    else {
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = '';
      }
      if (initObj.hasOwnProperty('nodeuri')) {
        this.nodeuri = initObj.nodeuri
      }
      else {
        this.nodeuri = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SyncTopicInfo
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    // Serialize message field [node]
    bufferOffset = _serializer.string(obj.node, buffer, bufferOffset);
    // Serialize message field [nodeuri]
    bufferOffset = _serializer.string(obj.nodeuri, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncTopicInfo
    let len;
    let data = new SyncTopicInfo(null);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [node]
    data.node = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nodeuri]
    data.nodeuri = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic.length;
    length += object.node.length;
    length += object.nodeuri.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multimaster_msgs_fkie/SyncTopicInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b296160d6f5a9d7f6550f6130da2ba4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic
    string node
    string nodeuri
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SyncTopicInfo(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = ''
    }

    if (msg.nodeuri !== undefined) {
      resolved.nodeuri = msg.nodeuri;
    }
    else {
      resolved.nodeuri = ''
    }

    return resolved;
    }
};

module.exports = SyncTopicInfo;
