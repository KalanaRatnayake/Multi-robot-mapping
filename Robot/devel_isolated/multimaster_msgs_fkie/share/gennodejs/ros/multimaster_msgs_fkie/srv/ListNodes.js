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


//-----------------------------------------------------------

class ListNodesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListNodesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListNodesRequest
    let len;
    let data = new ListNodesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/ListNodesRequest';
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
    const resolved = new ListNodesRequest(null);
    return resolved;
    }
};

class ListNodesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nodes = null;
    }
    else {
      if (initObj.hasOwnProperty('nodes')) {
        this.nodes = initObj.nodes
      }
      else {
        this.nodes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListNodesResponse
    // Serialize message field [nodes]
    bufferOffset = _arraySerializer.string(obj.nodes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListNodesResponse
    let len;
    let data = new ListNodesResponse(null);
    // Deserialize message field [nodes]
    data.nodes = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.nodes.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/ListNodesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d07bfda1268b4f76b16b7ba8a82665d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] nodes
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListNodesResponse(null);
    if (msg.nodes !== undefined) {
      resolved.nodes = msg.nodes;
    }
    else {
      resolved.nodes = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListNodesRequest,
  Response: ListNodesResponse,
  md5sum() { return '3d07bfda1268b4f76b16b7ba8a82665d'; },
  datatype() { return 'multimaster_msgs_fkie/ListNodes'; }
};
