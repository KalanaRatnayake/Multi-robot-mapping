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

let ROSMaster = require('../msg/ROSMaster.js');

//-----------------------------------------------------------

class DiscoverMastersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiscoverMastersRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiscoverMastersRequest
    let len;
    let data = new DiscoverMastersRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/DiscoverMastersRequest';
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
    const resolved = new DiscoverMastersRequest(null);
    return resolved;
    }
};

class DiscoverMastersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.masters = null;
    }
    else {
      if (initObj.hasOwnProperty('masters')) {
        this.masters = initObj.masters
      }
      else {
        this.masters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiscoverMastersResponse
    // Serialize message field [masters]
    // Serialize the length for message field [masters]
    bufferOffset = _serializer.uint32(obj.masters.length, buffer, bufferOffset);
    obj.masters.forEach((val) => {
      bufferOffset = ROSMaster.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiscoverMastersResponse
    let len;
    let data = new DiscoverMastersResponse(null);
    // Deserialize message field [masters]
    // Deserialize array length for message field [masters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.masters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.masters[i] = ROSMaster.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.masters.forEach((val) => {
      length += ROSMaster.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/DiscoverMastersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc7525cc24dd3b880f044a2cdfb95aad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    multimaster_msgs_fkie/ROSMaster[] masters
    
    
    ================================================================================
    MSG: multimaster_msgs_fkie/ROSMaster
    string name
    # ROS Master URI
    string uri
    # The timestamp of the state of the remoter ROS master
    float64 timestamp
    # The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.
    float64 timestamp_local
    bool online
    string discoverer_name
    string monitoruri
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiscoverMastersResponse(null);
    if (msg.masters !== undefined) {
      resolved.masters = new Array(msg.masters.length);
      for (let i = 0; i < resolved.masters.length; ++i) {
        resolved.masters[i] = ROSMaster.Resolve(msg.masters[i]);
      }
    }
    else {
      resolved.masters = []
    }

    return resolved;
    }
};

module.exports = {
  Request: DiscoverMastersRequest,
  Response: DiscoverMastersResponse,
  md5sum() { return 'bc7525cc24dd3b880f044a2cdfb95aad'; },
  datatype() { return 'multimaster_msgs_fkie/DiscoverMasters'; }
};
