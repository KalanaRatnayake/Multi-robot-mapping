// Auto-generated. Do not edit!

// (in-package multimaster_msgs_fkie.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SyncTopicInfo = require('./SyncTopicInfo.js');
let SyncServiceInfo = require('./SyncServiceInfo.js');

//-----------------------------------------------------------

class SyncMasterInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.masteruri = null;
      this.nodes = null;
      this.publisher = null;
      this.subscriber = null;
      this.services = null;
    }
    else {
      if (initObj.hasOwnProperty('masteruri')) {
        this.masteruri = initObj.masteruri
      }
      else {
        this.masteruri = '';
      }
      if (initObj.hasOwnProperty('nodes')) {
        this.nodes = initObj.nodes
      }
      else {
        this.nodes = [];
      }
      if (initObj.hasOwnProperty('publisher')) {
        this.publisher = initObj.publisher
      }
      else {
        this.publisher = [];
      }
      if (initObj.hasOwnProperty('subscriber')) {
        this.subscriber = initObj.subscriber
      }
      else {
        this.subscriber = [];
      }
      if (initObj.hasOwnProperty('services')) {
        this.services = initObj.services
      }
      else {
        this.services = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SyncMasterInfo
    // Serialize message field [masteruri]
    bufferOffset = _serializer.string(obj.masteruri, buffer, bufferOffset);
    // Serialize message field [nodes]
    bufferOffset = _arraySerializer.string(obj.nodes, buffer, bufferOffset, null);
    // Serialize message field [publisher]
    // Serialize the length for message field [publisher]
    bufferOffset = _serializer.uint32(obj.publisher.length, buffer, bufferOffset);
    obj.publisher.forEach((val) => {
      bufferOffset = SyncTopicInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [subscriber]
    // Serialize the length for message field [subscriber]
    bufferOffset = _serializer.uint32(obj.subscriber.length, buffer, bufferOffset);
    obj.subscriber.forEach((val) => {
      bufferOffset = SyncTopicInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [services]
    // Serialize the length for message field [services]
    bufferOffset = _serializer.uint32(obj.services.length, buffer, bufferOffset);
    obj.services.forEach((val) => {
      bufferOffset = SyncServiceInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncMasterInfo
    let len;
    let data = new SyncMasterInfo(null);
    // Deserialize message field [masteruri]
    data.masteruri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nodes]
    data.nodes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [publisher]
    // Deserialize array length for message field [publisher]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.publisher = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.publisher[i] = SyncTopicInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [subscriber]
    // Deserialize array length for message field [subscriber]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.subscriber = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.subscriber[i] = SyncTopicInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [services]
    // Deserialize array length for message field [services]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.services = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.services[i] = SyncServiceInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.masteruri.length;
    object.nodes.forEach((val) => {
      length += 4 + val.length;
    });
    object.publisher.forEach((val) => {
      length += SyncTopicInfo.getMessageSize(val);
    });
    object.subscriber.forEach((val) => {
      length += SyncTopicInfo.getMessageSize(val);
    });
    object.services.forEach((val) => {
      length += SyncServiceInfo.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multimaster_msgs_fkie/SyncMasterInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba4b02792114bcc4bae507c60dd14d66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string masteruri
    string[] nodes
    multimaster_msgs_fkie/SyncTopicInfo[] publisher
    multimaster_msgs_fkie/SyncTopicInfo[] subscriber
    multimaster_msgs_fkie/SyncServiceInfo[] services
    ================================================================================
    MSG: multimaster_msgs_fkie/SyncTopicInfo
    string topic
    string node
    string nodeuri
    ================================================================================
    MSG: multimaster_msgs_fkie/SyncServiceInfo
    string service
    string serviceuri
    string node
    string nodeuri
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SyncMasterInfo(null);
    if (msg.masteruri !== undefined) {
      resolved.masteruri = msg.masteruri;
    }
    else {
      resolved.masteruri = ''
    }

    if (msg.nodes !== undefined) {
      resolved.nodes = msg.nodes;
    }
    else {
      resolved.nodes = []
    }

    if (msg.publisher !== undefined) {
      resolved.publisher = new Array(msg.publisher.length);
      for (let i = 0; i < resolved.publisher.length; ++i) {
        resolved.publisher[i] = SyncTopicInfo.Resolve(msg.publisher[i]);
      }
    }
    else {
      resolved.publisher = []
    }

    if (msg.subscriber !== undefined) {
      resolved.subscriber = new Array(msg.subscriber.length);
      for (let i = 0; i < resolved.subscriber.length; ++i) {
        resolved.subscriber[i] = SyncTopicInfo.Resolve(msg.subscriber[i]);
      }
    }
    else {
      resolved.subscriber = []
    }

    if (msg.services !== undefined) {
      resolved.services = new Array(msg.services.length);
      for (let i = 0; i < resolved.services.length; ++i) {
        resolved.services[i] = SyncServiceInfo.Resolve(msg.services[i]);
      }
    }
    else {
      resolved.services = []
    }

    return resolved;
    }
};

module.exports = SyncMasterInfo;
