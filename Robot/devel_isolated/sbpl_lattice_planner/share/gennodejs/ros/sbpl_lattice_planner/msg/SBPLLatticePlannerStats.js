// Auto-generated. Do not edit!

// (in-package sbpl_lattice_planner.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SBPLLatticePlannerStats {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.initial_epsilon = null;
      this.final_epsilon = null;
      this.plan_to_first_solution = null;
      this.allocated_time = null;
      this.actual_time = null;
      this.time_to_first_solution = null;
      this.solution_cost = null;
      this.path_size = null;
      this.final_number_of_expands = null;
      this.number_of_expands_initial_solution = null;
      this.start = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('initial_epsilon')) {
        this.initial_epsilon = initObj.initial_epsilon
      }
      else {
        this.initial_epsilon = 0.0;
      }
      if (initObj.hasOwnProperty('final_epsilon')) {
        this.final_epsilon = initObj.final_epsilon
      }
      else {
        this.final_epsilon = 0.0;
      }
      if (initObj.hasOwnProperty('plan_to_first_solution')) {
        this.plan_to_first_solution = initObj.plan_to_first_solution
      }
      else {
        this.plan_to_first_solution = false;
      }
      if (initObj.hasOwnProperty('allocated_time')) {
        this.allocated_time = initObj.allocated_time
      }
      else {
        this.allocated_time = 0.0;
      }
      if (initObj.hasOwnProperty('actual_time')) {
        this.actual_time = initObj.actual_time
      }
      else {
        this.actual_time = 0.0;
      }
      if (initObj.hasOwnProperty('time_to_first_solution')) {
        this.time_to_first_solution = initObj.time_to_first_solution
      }
      else {
        this.time_to_first_solution = 0.0;
      }
      if (initObj.hasOwnProperty('solution_cost')) {
        this.solution_cost = initObj.solution_cost
      }
      else {
        this.solution_cost = 0.0;
      }
      if (initObj.hasOwnProperty('path_size')) {
        this.path_size = initObj.path_size
      }
      else {
        this.path_size = 0.0;
      }
      if (initObj.hasOwnProperty('final_number_of_expands')) {
        this.final_number_of_expands = initObj.final_number_of_expands
      }
      else {
        this.final_number_of_expands = 0;
      }
      if (initObj.hasOwnProperty('number_of_expands_initial_solution')) {
        this.number_of_expands_initial_solution = initObj.number_of_expands_initial_solution
      }
      else {
        this.number_of_expands_initial_solution = 0;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SBPLLatticePlannerStats
    // Serialize message field [initial_epsilon]
    bufferOffset = _serializer.float64(obj.initial_epsilon, buffer, bufferOffset);
    // Serialize message field [final_epsilon]
    bufferOffset = _serializer.float64(obj.final_epsilon, buffer, bufferOffset);
    // Serialize message field [plan_to_first_solution]
    bufferOffset = _serializer.bool(obj.plan_to_first_solution, buffer, bufferOffset);
    // Serialize message field [allocated_time]
    bufferOffset = _serializer.float64(obj.allocated_time, buffer, bufferOffset);
    // Serialize message field [actual_time]
    bufferOffset = _serializer.float64(obj.actual_time, buffer, bufferOffset);
    // Serialize message field [time_to_first_solution]
    bufferOffset = _serializer.float64(obj.time_to_first_solution, buffer, bufferOffset);
    // Serialize message field [solution_cost]
    bufferOffset = _serializer.float64(obj.solution_cost, buffer, bufferOffset);
    // Serialize message field [path_size]
    bufferOffset = _serializer.float64(obj.path_size, buffer, bufferOffset);
    // Serialize message field [final_number_of_expands]
    bufferOffset = _serializer.int64(obj.final_number_of_expands, buffer, bufferOffset);
    // Serialize message field [number_of_expands_initial_solution]
    bufferOffset = _serializer.int64(obj.number_of_expands_initial_solution, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SBPLLatticePlannerStats
    let len;
    let data = new SBPLLatticePlannerStats(null);
    // Deserialize message field [initial_epsilon]
    data.initial_epsilon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_epsilon]
    data.final_epsilon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [plan_to_first_solution]
    data.plan_to_first_solution = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [allocated_time]
    data.allocated_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [actual_time]
    data.actual_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time_to_first_solution]
    data.time_to_first_solution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [solution_cost]
    data.solution_cost = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path_size]
    data.path_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_number_of_expands]
    data.final_number_of_expands = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [number_of_expands_initial_solution]
    data.number_of_expands_initial_solution = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.start);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal);
    return length + 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sbpl_lattice_planner/SBPLLatticePlannerStats';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1c85b1cec5e7b196cc477ac1440bbf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #planner stats
    float64 initial_epsilon
    float64 final_epsilon
    bool plan_to_first_solution
    float64 allocated_time
    float64 actual_time
    float64 time_to_first_solution
    float64 solution_cost
    float64 path_size
    int64 final_number_of_expands
    int64 number_of_expands_initial_solution
    
    #problem stats
    geometry_msgs/PoseStamped start
    geometry_msgs/PoseStamped goal
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SBPLLatticePlannerStats(null);
    if (msg.initial_epsilon !== undefined) {
      resolved.initial_epsilon = msg.initial_epsilon;
    }
    else {
      resolved.initial_epsilon = 0.0
    }

    if (msg.final_epsilon !== undefined) {
      resolved.final_epsilon = msg.final_epsilon;
    }
    else {
      resolved.final_epsilon = 0.0
    }

    if (msg.plan_to_first_solution !== undefined) {
      resolved.plan_to_first_solution = msg.plan_to_first_solution;
    }
    else {
      resolved.plan_to_first_solution = false
    }

    if (msg.allocated_time !== undefined) {
      resolved.allocated_time = msg.allocated_time;
    }
    else {
      resolved.allocated_time = 0.0
    }

    if (msg.actual_time !== undefined) {
      resolved.actual_time = msg.actual_time;
    }
    else {
      resolved.actual_time = 0.0
    }

    if (msg.time_to_first_solution !== undefined) {
      resolved.time_to_first_solution = msg.time_to_first_solution;
    }
    else {
      resolved.time_to_first_solution = 0.0
    }

    if (msg.solution_cost !== undefined) {
      resolved.solution_cost = msg.solution_cost;
    }
    else {
      resolved.solution_cost = 0.0
    }

    if (msg.path_size !== undefined) {
      resolved.path_size = msg.path_size;
    }
    else {
      resolved.path_size = 0.0
    }

    if (msg.final_number_of_expands !== undefined) {
      resolved.final_number_of_expands = msg.final_number_of_expands;
    }
    else {
      resolved.final_number_of_expands = 0
    }

    if (msg.number_of_expands_initial_solution !== undefined) {
      resolved.number_of_expands_initial_solution = msg.number_of_expands_initial_solution;
    }
    else {
      resolved.number_of_expands_initial_solution = 0
    }

    if (msg.start !== undefined) {
      resolved.start = geometry_msgs.msg.PoseStamped.Resolve(msg.start)
    }
    else {
      resolved.start = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.PoseStamped.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = SBPLLatticePlannerStats;
