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

class SyncServiceInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service = null;
      this.serviceuri = null;
      this.node = null;
      this.nodeuri = null;
    }
    else {
      if (initObj.hasOwnProperty('service')) {
        this.service = initObj.service
      }
      else {
        this.service = '';
      }
      if (initObj.hasOwnProperty('serviceuri')) {
        this.serviceuri = initObj.serviceuri
      }
      else {
        this.serviceuri = '';
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
    // Serializes a message object of type SyncServiceInfo
    // Serialize message field [service]
    bufferOffset = _serializer.string(obj.service, buffer, bufferOffset);
    // Serialize message field [serviceuri]
    bufferOffset = _serializer.string(obj.serviceuri, buffer, bufferOffset);
    // Serialize message field [node]
    bufferOffset = _serializer.string(obj.node, buffer, bufferOffset);
    // Serialize message field [nodeuri]
    bufferOffset = _serializer.string(obj.nodeuri, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncServiceInfo
    let len;
    let data = new SyncServiceInfo(null);
    // Deserialize message field [service]
    data.service = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [serviceuri]
    data.serviceuri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [node]
    data.node = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nodeuri]
    data.nodeuri = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.service.length;
    length += object.serviceuri.length;
    length += object.node.length;
    length += object.nodeuri.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multimaster_msgs_fkie/SyncServiceInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c21bb9ea24403924441840b8c167c40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SyncServiceInfo(null);
    if (msg.service !== undefined) {
      resolved.service = msg.service;
    }
    else {
      resolved.service = ''
    }

    if (msg.serviceuri !== undefined) {
      resolved.serviceuri = msg.serviceuri;
    }
    else {
      resolved.serviceuri = ''
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

module.exports = SyncServiceInfo;
