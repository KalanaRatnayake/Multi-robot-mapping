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

class LoadLaunchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.package = null;
      this.file = null;
      this.argv = null;
    }
    else {
      if (initObj.hasOwnProperty('package')) {
        this.package = initObj.package
      }
      else {
        this.package = '';
      }
      if (initObj.hasOwnProperty('file')) {
        this.file = initObj.file
      }
      else {
        this.file = '';
      }
      if (initObj.hasOwnProperty('argv')) {
        this.argv = initObj.argv
      }
      else {
        this.argv = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadLaunchRequest
    // Serialize message field [package]
    bufferOffset = _serializer.string(obj.package, buffer, bufferOffset);
    // Serialize message field [file]
    bufferOffset = _serializer.string(obj.file, buffer, bufferOffset);
    // Serialize message field [argv]
    bufferOffset = _serializer.string(obj.argv, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadLaunchRequest
    let len;
    let data = new LoadLaunchRequest(null);
    // Deserialize message field [package]
    data.package = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [file]
    data.file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [argv]
    data.argv = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.package.length;
    length += object.file.length;
    length += object.argv.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/LoadLaunchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7cc67269dc4de0d6d7a3648f287878b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string package
    string file
    string argv
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadLaunchRequest(null);
    if (msg.package !== undefined) {
      resolved.package = msg.package;
    }
    else {
      resolved.package = ''
    }

    if (msg.file !== undefined) {
      resolved.file = msg.file;
    }
    else {
      resolved.file = ''
    }

    if (msg.argv !== undefined) {
      resolved.argv = msg.argv;
    }
    else {
      resolved.argv = ''
    }

    return resolved;
    }
};

class LoadLaunchResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadLaunchResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadLaunchResponse
    let len;
    let data = new LoadLaunchResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'multimaster_msgs_fkie/LoadLaunchResponse';
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
    const resolved = new LoadLaunchResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: LoadLaunchRequest,
  Response: LoadLaunchResponse,
  md5sum() { return 'e7cc67269dc4de0d6d7a3648f287878b'; },
  datatype() { return 'multimaster_msgs_fkie/LoadLaunch'; }
};
