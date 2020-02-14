// Auto-generated. Do not edit!

// (in-package multimaster_msgs_fkie.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let SyncMasterInfo = require('../msg/SyncMasterInfo.js');

//-----------------------------------------------------------

class GetSyncInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSyncInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSyncInfoRequest
    let len;
    let data = new GetSyncInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/GetSyncInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSyncInfoRequest(null);
    return resolved;
    }
};

class GetSyncInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hosts = null;
    }
    else {
      if (initObj.hasOwnProperty('hosts')) {
        this.hosts = initObj.hosts
      }
      else {
        this.hosts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSyncInfoResponse
    // Serialize message field [hosts]
    // Serialize the length for message field [hosts]
    bufferOffset = _serializer.uint32(obj.hosts.length, buffer, bufferOffset);
    obj.hosts.forEach((val) => {
      bufferOffset = SyncMasterInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSyncInfoResponse
    let len;
    let data = new GetSyncInfoResponse(null);
    // Deserialize message field [hosts]
    // Deserialize array length for message field [hosts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.hosts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.hosts[i] = SyncMasterInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.hosts.forEach((val) => {
      length += SyncMasterInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/GetSyncInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5261ec56e202860a07fb47b41e1b2a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    multimaster_msgs_fkie/SyncMasterInfo[] hosts
    
    ================================================================================
    MSG: multimaster_msgs_fkie/SyncMasterInfo
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
    const resolved = new GetSyncInfoResponse(null);
    if (msg.hosts !== undefined) {
      resolved.hosts = new Array(msg.hosts.length);
      for (let i = 0; i < resolved.hosts.length; ++i) {
        resolved.hosts[i] = SyncMasterInfo.Resolve(msg.hosts[i]);
      }
    }
    else {
      resolved.hosts = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSyncInfoRequest,
  Response: GetSyncInfoResponse,
  md5sum() { return 'd5261ec56e202860a07fb47b41e1b2a8'; },
  datatype() { return 'multimaster_msgs_fkie/GetSyncInfo'; }
};
