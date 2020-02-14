// Auto-generated. Do not edit!

// (in-package multimaster_msgs_fkie.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ROSMaster = require('./ROSMaster.js');

//-----------------------------------------------------------

class MasterState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.master = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = '';
      }
      if (initObj.hasOwnProperty('master')) {
        this.master = initObj.master
      }
      else {
        this.master = new ROSMaster();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MasterState
    // Serialize message field [state]
    bufferOffset = _serializer.string(obj.state, buffer, bufferOffset);
    // Serialize message field [master]
    bufferOffset = ROSMaster.serialize(obj.master, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MasterState
    let len;
    let data = new MasterState(null);
    // Deserialize message field [state]
    data.state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [master]
    data.master = ROSMaster.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state.length;
    length += ROSMaster.getMessageSize(object.master);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multimaster_msgs_fkie/MasterState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80884072ff659ac99555a763e9ba0b23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string state
    multimaster_msgs_fkie/ROSMaster master
    
    string STATE_NEW='new'
    string STATE_REMOVED='removed'
    string STATE_CHANGED='changed'
    
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
    const resolved = new MasterState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = ''
    }

    if (msg.master !== undefined) {
      resolved.master = ROSMaster.Resolve(msg.master)
    }
    else {
      resolved.master = new ROSMaster()
    }

    return resolved;
    }
};

// Constants for message
MasterState.Constants = {
  STATE_NEW: ''new'',
  STATE_REMOVED: ''removed'',
  STATE_CHANGED: ''changed'',
}

module.exports = MasterState;
