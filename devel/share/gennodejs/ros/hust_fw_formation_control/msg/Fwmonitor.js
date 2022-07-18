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

class Fwmonitor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planeID = null;
      this.fw_complete_idel = null;
      this.fw_is_connected = null;
      this.fw_is_wellctrlled = null;
      this.fw_complete_takeoff = null;
      this.fw_complete_landed = null;
      this.formation_distance_complete = null;
      this.formation_time_complete = null;
    }
    else {
      if (initObj.hasOwnProperty('planeID')) {
        this.planeID = initObj.planeID
      }
      else {
        this.planeID = 0;
      }
      if (initObj.hasOwnProperty('fw_complete_idel')) {
        this.fw_complete_idel = initObj.fw_complete_idel
      }
      else {
        this.fw_complete_idel = false;
      }
      if (initObj.hasOwnProperty('fw_is_connected')) {
        this.fw_is_connected = initObj.fw_is_connected
      }
      else {
        this.fw_is_connected = false;
      }
      if (initObj.hasOwnProperty('fw_is_wellctrlled')) {
        this.fw_is_wellctrlled = initObj.fw_is_wellctrlled
      }
      else {
        this.fw_is_wellctrlled = false;
      }
      if (initObj.hasOwnProperty('fw_complete_takeoff')) {
        this.fw_complete_takeoff = initObj.fw_complete_takeoff
      }
      else {
        this.fw_complete_takeoff = false;
      }
      if (initObj.hasOwnProperty('fw_complete_landed')) {
        this.fw_complete_landed = initObj.fw_complete_landed
      }
      else {
        this.fw_complete_landed = false;
      }
      if (initObj.hasOwnProperty('formation_distance_complete')) {
        this.formation_distance_complete = initObj.formation_distance_complete
      }
      else {
        this.formation_distance_complete = false;
      }
      if (initObj.hasOwnProperty('formation_time_complete')) {
        this.formation_time_complete = initObj.formation_time_complete
      }
      else {
        this.formation_time_complete = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Fwmonitor
    // Serialize message field [planeID]
    bufferOffset = _serializer.uint8(obj.planeID, buffer, bufferOffset);
    // Serialize message field [fw_complete_idel]
    bufferOffset = _serializer.bool(obj.fw_complete_idel, buffer, bufferOffset);
    // Serialize message field [fw_is_connected]
    bufferOffset = _serializer.bool(obj.fw_is_connected, buffer, bufferOffset);
    // Serialize message field [fw_is_wellctrlled]
    bufferOffset = _serializer.bool(obj.fw_is_wellctrlled, buffer, bufferOffset);
    // Serialize message field [fw_complete_takeoff]
    bufferOffset = _serializer.bool(obj.fw_complete_takeoff, buffer, bufferOffset);
    // Serialize message field [fw_complete_landed]
    bufferOffset = _serializer.bool(obj.fw_complete_landed, buffer, bufferOffset);
    // Serialize message field [formation_distance_complete]
    bufferOffset = _serializer.bool(obj.formation_distance_complete, buffer, bufferOffset);
    // Serialize message field [formation_time_complete]
    bufferOffset = _serializer.bool(obj.formation_time_complete, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Fwmonitor
    let len;
    let data = new Fwmonitor(null);
    // Deserialize message field [planeID]
    data.planeID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fw_complete_idel]
    data.fw_complete_idel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fw_is_connected]
    data.fw_is_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fw_is_wellctrlled]
    data.fw_is_wellctrlled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fw_complete_takeoff]
    data.fw_complete_takeoff = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fw_complete_landed]
    data.fw_complete_landed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [formation_distance_complete]
    data.formation_distance_complete = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [formation_time_complete]
    data.formation_time_complete = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hust_fw_formation_control/Fwmonitor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3094edf1d529e87912463a6fbc28d66c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #飞机的控制状态，任务状态的flags，表示任务完成状况，飞机的飞行状态，失联状态，
    #飞机控制保护状态
    
    uint8 planeID#飞机编号
    
    bool fw_complete_idel#飞机已经空闲
    
    bool fw_is_connected #飞机链接地面站标志位
    
    bool fw_is_wellctrlled #飞机控制状态标志位
    
    bool fw_complete_takeoff #飞机已经起飞标志位
    
    bool fw_complete_landed #飞机已经降落标志位
    
    bool formation_distance_complete #飞机编队距离已经满足
    
    bool formation_time_complete #飞机编队时间已经满足
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Fwmonitor(null);
    if (msg.planeID !== undefined) {
      resolved.planeID = msg.planeID;
    }
    else {
      resolved.planeID = 0
    }

    if (msg.fw_complete_idel !== undefined) {
      resolved.fw_complete_idel = msg.fw_complete_idel;
    }
    else {
      resolved.fw_complete_idel = false
    }

    if (msg.fw_is_connected !== undefined) {
      resolved.fw_is_connected = msg.fw_is_connected;
    }
    else {
      resolved.fw_is_connected = false
    }

    if (msg.fw_is_wellctrlled !== undefined) {
      resolved.fw_is_wellctrlled = msg.fw_is_wellctrlled;
    }
    else {
      resolved.fw_is_wellctrlled = false
    }

    if (msg.fw_complete_takeoff !== undefined) {
      resolved.fw_complete_takeoff = msg.fw_complete_takeoff;
    }
    else {
      resolved.fw_complete_takeoff = false
    }

    if (msg.fw_complete_landed !== undefined) {
      resolved.fw_complete_landed = msg.fw_complete_landed;
    }
    else {
      resolved.fw_complete_landed = false
    }

    if (msg.formation_distance_complete !== undefined) {
      resolved.formation_distance_complete = msg.formation_distance_complete;
    }
    else {
      resolved.formation_distance_complete = false
    }

    if (msg.formation_time_complete !== undefined) {
      resolved.formation_time_complete = msg.formation_time_complete;
    }
    else {
      resolved.formation_time_complete = false
    }

    return resolved;
    }
};

module.exports = Fwmonitor;
