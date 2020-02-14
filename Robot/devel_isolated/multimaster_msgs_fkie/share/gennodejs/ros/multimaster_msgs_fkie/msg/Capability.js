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

class Capability {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.namespace = null;
      this.name = null;
      this.type = null;
      this.images = null;
      this.description = null;
      this.nodes = null;
    }
    else {
      if (initObj.hasOwnProperty('namespace')) {
        this.namespace = initObj.namespace
      }
      else {
        this.namespace = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('images')) {
        this.images = initObj.images
      }
      else {
        this.images = [];
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('nodes')) {
        this.nodes = initObj.nodes
      }
      else {
        this.nodes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Capability
    // Serialize message field [namespace]
    bufferOffset = _serializer.string(obj.namespace, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [images]
    bufferOffset = _arraySerializer.string(obj.images, buffer, bufferOffset, null);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [nodes]
    bufferOffset = _arraySerializer.string(obj.nodes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Capability
    let len;
    let data = new Capability(null);
    // Deserialize message field [namespace]
    data.namespace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [images]
    data.images = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nodes]
    data.nodes = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.namespace.length;
    length += object.name.length;
    length += object.type.length;
    object.images.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.description.length;
    object.nodes.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'multimaster_msgs_fkie/Capability';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca248f1a2644e7372795bf788ed1941b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Capability(null);
    if (msg.namespace !== undefined) {
      resolved.namespace = msg.namespace;
    }
    else {
      resolved.namespace = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.images !== undefined) {
      resolved.images = msg.images;
    }
    else {
      resolved.images = []
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.nodes !== undefined) {
      resolved.nodes = msg.nodes;
    }
    else {
      resolved.nodes = []
    }

    return resolved;
    }
};

module.exports = Capability;
