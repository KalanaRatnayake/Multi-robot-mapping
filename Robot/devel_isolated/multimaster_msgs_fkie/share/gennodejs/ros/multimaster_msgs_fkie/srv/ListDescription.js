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

let Capability = require('../msg/Capability.js');

//-----------------------------------------------------------

class ListDescriptionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListDescriptionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListDescriptionRequest
    let len;
    let data = new ListDescriptionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/ListDescriptionRequest';
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
    const resolved = new ListDescriptionRequest(null);
    return resolved;
    }
};

class ListDescriptionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.robot_type = null;
      this.robot_images = null;
      this.robot_descr = null;
      this.capabilities = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('robot_type')) {
        this.robot_type = initObj.robot_type
      }
      else {
        this.robot_type = '';
      }
      if (initObj.hasOwnProperty('robot_images')) {
        this.robot_images = initObj.robot_images
      }
      else {
        this.robot_images = [];
      }
      if (initObj.hasOwnProperty('robot_descr')) {
        this.robot_descr = initObj.robot_descr
      }
      else {
        this.robot_descr = '';
      }
      if (initObj.hasOwnProperty('capabilities')) {
        this.capabilities = initObj.capabilities
      }
      else {
        this.capabilities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListDescriptionResponse
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [robot_type]
    bufferOffset = _serializer.string(obj.robot_type, buffer, bufferOffset);
    // Serialize message field [robot_images]
    bufferOffset = _arraySerializer.string(obj.robot_images, buffer, bufferOffset, null);
    // Serialize message field [robot_descr]
    bufferOffset = _serializer.string(obj.robot_descr, buffer, bufferOffset);
    // Serialize message field [capabilities]
    // Serialize the length for message field [capabilities]
    bufferOffset = _serializer.uint32(obj.capabilities.length, buffer, bufferOffset);
    obj.capabilities.forEach((val) => {
      bufferOffset = Capability.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListDescriptionResponse
    let len;
    let data = new ListDescriptionResponse(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_type]
    data.robot_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_images]
    data.robot_images = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [robot_descr]
    data.robot_descr = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [capabilities]
    // Deserialize array length for message field [capabilities]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.capabilities = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.capabilities[i] = Capability.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_name.length;
    length += object.robot_type.length;
    object.robot_images.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.robot_descr.length;
    object.capabilities.forEach((val) => {
      length += Capability.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/ListDescriptionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a36ba5a97ce785b9b964aa015b26332b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_name
    string robot_type
    string[] robot_images
    string robot_descr
    multimaster_msgs_fkie/Capability[] capabilities
    
    ================================================================================
    MSG: multimaster_msgs_fkie/Capability
    # the ROS namespace of the capability
    string namespace
    # the name of the capability
    string name
    # the type of the capability
    string type
    # list of the images assigned to the this capability
    string[] images
    # the description of the capability
    string description
    # a list of nodes assigned to this group. The nodes are described by full ROS name (with namesspace)
    string[] nodes 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListDescriptionResponse(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.robot_type !== undefined) {
      resolved.robot_type = msg.robot_type;
    }
    else {
      resolved.robot_type = ''
    }

    if (msg.robot_images !== undefined) {
      resolved.robot_images = msg.robot_images;
    }
    else {
      resolved.robot_images = []
    }

    if (msg.robot_descr !== undefined) {
      resolved.robot_descr = msg.robot_descr;
    }
    else {
      resolved.robot_descr = ''
    }

    if (msg.capabilities !== undefined) {
      resolved.capabilities = new Array(msg.capabilities.length);
      for (let i = 0; i < resolved.capabilities.length; ++i) {
        resolved.capabilities[i] = Capability.Resolve(msg.capabilities[i]);
      }
    }
    else {
      resolved.capabilities = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListDescriptionRequest,
  Response: ListDescriptionResponse,
  md5sum() { return 'a36ba5a97ce785b9b964aa015b26332b'; },
  datatype() { return 'multimaster_msgs_fkie/ListDescription'; }
};
