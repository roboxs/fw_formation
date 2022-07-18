// Auto-generated. Do not edit!

// (in-package hust_fw_formation_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Fw_cmd_mode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planeID = null;
      this.need_idel = null;
      this.need_take_off = null;
      this.need_mission = null;
      this.need_land = null;
      this.need_formation = null;
      this.need_protected = null;
      this.swarm_shape = null;
    }
    else {
      if (initObj.hasOwnProperty('planeID')) {
        this.planeID = initObj.planeID
      }
      else {
        this.planeID = 0;
      }
      if (initObj.hasOwnProperty('need_idel')) {
        this.need_idel = initObj.need_idel
      }
      else {
        this.need_idel = false;
      }
      if (initObj.hasOwnProperty('need_take_off')) {
        this.need_take_off = initObj.need_take_off
      }
      else {
        this.need_take_off = false;
      }
      if (initObj.hasOwnProperty('need_mission')) {
        this.need_mission = initObj.need_mission
      }
      else {
        this.need_mission = false;
      }
      if (initObj.hasOwnProperty('need_land')) {
        this.need_land = initObj.need_land
      }
      else {
        this.need_land = false;
      }
      if (initObj.hasOwnProperty('need_formation')) {
        this.need_formation = initObj.need_formation
      }
      else {
        this.need_formation = false;
      }
      if (initObj.hasOwnProperty('need_protected')) {
        this.need_protected = initObj.need_protected
      }
      else {
        this.need_protected = false;
      }
      if (initObj.hasOwnProperty('swarm_shape')) {
        this.swarm_shape = initObj.swarm_shape
      }
      else {
        this.swarm_shape = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Fw_cmd_mode
    // Serialize message field [planeID]
    bufferOffset = _serializer.uint16(obj.planeID, buffer, bufferOffset);
    // Serialize message field [need_idel]
    bufferOffset = _serializer.bool(obj.need_idel, buffer, bufferOffset);
    // Serialize message field [need_take_off]
    bufferOffset = _serializer.bool(obj.need_take_off, buffer, bufferOffset);
    // Serialize message field [need_mission]
    bufferOffset = _serializer.bool(obj.need_mission, buffer, bufferOffset);
    // Serialize message field [need_land]
    bufferOffset = _serializer.bool(obj.need_land, buffer, bufferOffset);
    // Serialize message field [need_formation]
    bufferOffset = _serializer.bool(obj.need_formation, buffer, bufferOffset);
    // Serialize message field [need_protected]
    bufferOffset = _serializer.bool(obj.need_protected, buffer, bufferOffset);
    // Serialize message field [swarm_shape]
    bufferOffset = _serializer.uint8(obj.swarm_shape, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Fw_cmd_mode
    let len;
    let data = new Fw_cmd_mode(null);
    // Deserialize message field [planeID]
    data.planeID = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [need_idel]
    data.need_idel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [need_take_off]
    data.need_take_off = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [need_mission]
    data.need_mission = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [need_land]
    data.need_land = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [need_formation]
    data.need_formation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [need_protected]
    data.need_protected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [swarm_shape]
    data.swarm_shape = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hust_fw_formation_control/Fw_cmd_mode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1df1161f0a9e91fb07222ee1046d0d1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 planeID
    
    bool need_idel
    
    bool need_take_off
    
    bool need_mission
    
    bool need_land
    
    bool need_formation
    
    bool need_protected
    
    uint8 swarm_shape
    
    uint8 One_column=0
    uint8 Triangle=1
    uint8 One_row=2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Fw_cmd_mode(null);
    if (msg.planeID !== undefined) {
      resolved.planeID = msg.planeID;
    }
    else {
      resolved.planeID = 0
    }

    if (msg.need_idel !== undefined) {
      resolved.need_idel = msg.need_idel;
    }
    else {
      resolved.need_idel = false
    }

    if (msg.need_take_off !== undefined) {
      resolved.need_take_off = msg.need_take_off;
    }
    else {
      resolved.need_take_off = false
    }

    if (msg.need_mission !== undefined) {
      resolved.need_mission = msg.need_mission;
    }
    else {
      resolved.need_mission = false
    }

    if (msg.need_land !== undefined) {
      resolved.need_land = msg.need_land;
    }
    else {
      resolved.need_land = false
    }

    if (msg.need_formation !== undefined) {
      resolved.need_formation = msg.need_formation;
    }
    else {
      resolved.need_formation = false
    }

    if (msg.need_protected !== undefined) {
      resolved.need_protected = msg.need_protected;
    }
    else {
      resolved.need_protected = false
    }

    if (msg.swarm_shape !== undefined) {
      resolved.swarm_shape = msg.swarm_shape;
    }
    else {
      resolved.swarm_shape = 0
    }

    return resolved;
    }
};

// Constants for message
Fw_cmd_mode.Constants = {
  ONE_COLUMN: 0,
  TRIANGLE: 1,
  ONE_ROW: 2,
}

module.exports = Fw_cmd_mode;
