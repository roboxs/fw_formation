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

class Leaderstates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pitch_angle = null;
      this.yaw_angle = null;
      this.yaw_valid = null;
      this.roll_angle = null;
      this.thrust = null;
      this.latitude = null;
      this.altitude = null;
      this.longitude = null;
      this.relative_alt = null;
      this.airspeed = null;
      this.ned_vel_x = null;
      this.ned_vel_y = null;
      this.ned_vel_z = null;
      this.global_vel_x = null;
      this.global_vel_y = null;
      this.global_vel_z = null;
      this.ned_acc_x = null;
      this.ned_acc_y = null;
      this.ned_acc_z = null;
      this.body_acc_x = null;
      this.body_acc_y = null;
      this.body_acc_z = null;
      this.rel_pos_Xb = null;
      this.rel_pos_Yb = null;
      this.rel_pos_Zb = null;
      this.rel_vel_Xb = null;
      this.rel_vel_Yb = null;
      this.rel_vel_Zb = null;
      this.rel_angle_a = null;
      this.rel_angle_b = null;
      this.rel_angle_c = null;
      this.rel_att_pitch = null;
      this.rel_att_roll = null;
      this.rel_att_yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('pitch_angle')) {
        this.pitch_angle = initObj.pitch_angle
      }
      else {
        this.pitch_angle = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_angle')) {
        this.yaw_angle = initObj.yaw_angle
      }
      else {
        this.yaw_angle = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_valid')) {
        this.yaw_valid = initObj.yaw_valid
      }
      else {
        this.yaw_valid = false;
      }
      if (initObj.hasOwnProperty('roll_angle')) {
        this.roll_angle = initObj.roll_angle
      }
      else {
        this.roll_angle = 0.0;
      }
      if (initObj.hasOwnProperty('thrust')) {
        this.thrust = initObj.thrust
      }
      else {
        this.thrust = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('relative_alt')) {
        this.relative_alt = initObj.relative_alt
      }
      else {
        this.relative_alt = 0.0;
      }
      if (initObj.hasOwnProperty('airspeed')) {
        this.airspeed = initObj.airspeed
      }
      else {
        this.airspeed = 0.0;
      }
      if (initObj.hasOwnProperty('ned_vel_x')) {
        this.ned_vel_x = initObj.ned_vel_x
      }
      else {
        this.ned_vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('ned_vel_y')) {
        this.ned_vel_y = initObj.ned_vel_y
      }
      else {
        this.ned_vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('ned_vel_z')) {
        this.ned_vel_z = initObj.ned_vel_z
      }
      else {
        this.ned_vel_z = 0.0;
      }
      if (initObj.hasOwnProperty('global_vel_x')) {
        this.global_vel_x = initObj.global_vel_x
      }
      else {
        this.global_vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('global_vel_y')) {
        this.global_vel_y = initObj.global_vel_y
      }
      else {
        this.global_vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('global_vel_z')) {
        this.global_vel_z = initObj.global_vel_z
      }
      else {
        this.global_vel_z = 0.0;
      }
      if (initObj.hasOwnProperty('ned_acc_x')) {
        this.ned_acc_x = initObj.ned_acc_x
      }
      else {
        this.ned_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('ned_acc_y')) {
        this.ned_acc_y = initObj.ned_acc_y
      }
      else {
        this.ned_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('ned_acc_z')) {
        this.ned_acc_z = initObj.ned_acc_z
      }
      else {
        this.ned_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('body_acc_x')) {
        this.body_acc_x = initObj.body_acc_x
      }
      else {
        this.body_acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('body_acc_y')) {
        this.body_acc_y = initObj.body_acc_y
      }
      else {
        this.body_acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('body_acc_z')) {
        this.body_acc_z = initObj.body_acc_z
      }
      else {
        this.body_acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('rel_pos_Xb')) {
        this.rel_pos_Xb = initObj.rel_pos_Xb
      }
      else {
        this.rel_pos_Xb = 0.0;
      }
      if (initObj.hasOwnProperty('rel_pos_Yb')) {
        this.rel_pos_Yb = initObj.rel_pos_Yb
      }
      else {
        this.rel_pos_Yb = 0.0;
      }
      if (initObj.hasOwnProperty('rel_pos_Zb')) {
        this.rel_pos_Zb = initObj.rel_pos_Zb
      }
      else {
        this.rel_pos_Zb = 0.0;
      }
      if (initObj.hasOwnProperty('rel_vel_Xb')) {
        this.rel_vel_Xb = initObj.rel_vel_Xb
      }
      else {
        this.rel_vel_Xb = 0.0;
      }
      if (initObj.hasOwnProperty('rel_vel_Yb')) {
        this.rel_vel_Yb = initObj.rel_vel_Yb
      }
      else {
        this.rel_vel_Yb = 0.0;
      }
      if (initObj.hasOwnProperty('rel_vel_Zb')) {
        this.rel_vel_Zb = initObj.rel_vel_Zb
      }
      else {
        this.rel_vel_Zb = 0.0;
      }
      if (initObj.hasOwnProperty('rel_angle_a')) {
        this.rel_angle_a = initObj.rel_angle_a
      }
      else {
        this.rel_angle_a = 0.0;
      }
      if (initObj.hasOwnProperty('rel_angle_b')) {
        this.rel_angle_b = initObj.rel_angle_b
      }
      else {
        this.rel_angle_b = 0.0;
      }
      if (initObj.hasOwnProperty('rel_angle_c')) {
        this.rel_angle_c = initObj.rel_angle_c
      }
      else {
        this.rel_angle_c = 0.0;
      }
      if (initObj.hasOwnProperty('rel_att_pitch')) {
        this.rel_att_pitch = initObj.rel_att_pitch
      }
      else {
        this.rel_att_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('rel_att_roll')) {
        this.rel_att_roll = initObj.rel_att_roll
      }
      else {
        this.rel_att_roll = 0.0;
      }
      if (initObj.hasOwnProperty('rel_att_yaw')) {
        this.rel_att_yaw = initObj.rel_att_yaw
      }
      else {
        this.rel_att_yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Leaderstates
    // Serialize message field [pitch_angle]
    bufferOffset = _serializer.float64(obj.pitch_angle, buffer, bufferOffset);
    // Serialize message field [yaw_angle]
    bufferOffset = _serializer.float64(obj.yaw_angle, buffer, bufferOffset);
    // Serialize message field [yaw_valid]
    bufferOffset = _serializer.bool(obj.yaw_valid, buffer, bufferOffset);
    // Serialize message field [roll_angle]
    bufferOffset = _serializer.float64(obj.roll_angle, buffer, bufferOffset);
    // Serialize message field [thrust]
    bufferOffset = _serializer.float64(obj.thrust, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [relative_alt]
    bufferOffset = _serializer.float64(obj.relative_alt, buffer, bufferOffset);
    // Serialize message field [airspeed]
    bufferOffset = _serializer.float64(obj.airspeed, buffer, bufferOffset);
    // Serialize message field [ned_vel_x]
    bufferOffset = _serializer.float64(obj.ned_vel_x, buffer, bufferOffset);
    // Serialize message field [ned_vel_y]
    bufferOffset = _serializer.float64(obj.ned_vel_y, buffer, bufferOffset);
    // Serialize message field [ned_vel_z]
    bufferOffset = _serializer.float64(obj.ned_vel_z, buffer, bufferOffset);
    // Serialize message field [global_vel_x]
    bufferOffset = _serializer.float64(obj.global_vel_x, buffer, bufferOffset);
    // Serialize message field [global_vel_y]
    bufferOffset = _serializer.float64(obj.global_vel_y, buffer, bufferOffset);
    // Serialize message field [global_vel_z]
    bufferOffset = _serializer.float64(obj.global_vel_z, buffer, bufferOffset);
    // Serialize message field [ned_acc_x]
    bufferOffset = _serializer.float64(obj.ned_acc_x, buffer, bufferOffset);
    // Serialize message field [ned_acc_y]
    bufferOffset = _serializer.float64(obj.ned_acc_y, buffer, bufferOffset);
    // Serialize message field [ned_acc_z]
    bufferOffset = _serializer.float64(obj.ned_acc_z, buffer, bufferOffset);
    // Serialize message field [body_acc_x]
    bufferOffset = _serializer.float64(obj.body_acc_x, buffer, bufferOffset);
    // Serialize message field [body_acc_y]
    bufferOffset = _serializer.float64(obj.body_acc_y, buffer, bufferOffset);
    // Serialize message field [body_acc_z]
    bufferOffset = _serializer.float64(obj.body_acc_z, buffer, bufferOffset);
    // Serialize message field [rel_pos_Xb]
    bufferOffset = _serializer.float64(obj.rel_pos_Xb, buffer, bufferOffset);
    // Serialize message field [rel_pos_Yb]
    bufferOffset = _serializer.float64(obj.rel_pos_Yb, buffer, bufferOffset);
    // Serialize message field [rel_pos_Zb]
    bufferOffset = _serializer.float64(obj.rel_pos_Zb, buffer, bufferOffset);
    // Serialize message field [rel_vel_Xb]
    bufferOffset = _serializer.float64(obj.rel_vel_Xb, buffer, bufferOffset);
    // Serialize message field [rel_vel_Yb]
    bufferOffset = _serializer.float64(obj.rel_vel_Yb, buffer, bufferOffset);
    // Serialize message field [rel_vel_Zb]
    bufferOffset = _serializer.float64(obj.rel_vel_Zb, buffer, bufferOffset);
    // Serialize message field [rel_angle_a]
    bufferOffset = _serializer.float64(obj.rel_angle_a, buffer, bufferOffset);
    // Serialize message field [rel_angle_b]
    bufferOffset = _serializer.float64(obj.rel_angle_b, buffer, bufferOffset);
    // Serialize message field [rel_angle_c]
    bufferOffset = _serializer.float64(obj.rel_angle_c, buffer, bufferOffset);
    // Serialize message field [rel_att_pitch]
    bufferOffset = _serializer.float64(obj.rel_att_pitch, buffer, bufferOffset);
    // Serialize message field [rel_att_roll]
    bufferOffset = _serializer.float64(obj.rel_att_roll, buffer, bufferOffset);
    // Serialize message field [rel_att_yaw]
    bufferOffset = _serializer.float64(obj.rel_att_yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Leaderstates
    let len;
    let data = new Leaderstates(null);
    // Deserialize message field [pitch_angle]
    data.pitch_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_angle]
    data.yaw_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_valid]
    data.yaw_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [roll_angle]
    data.roll_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust]
    data.thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_alt]
    data.relative_alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [airspeed]
    data.airspeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_vel_x]
    data.ned_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_vel_y]
    data.ned_vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_vel_z]
    data.ned_vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_vel_x]
    data.global_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_vel_y]
    data.global_vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_vel_z]
    data.global_vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_acc_x]
    data.ned_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_acc_y]
    data.ned_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_acc_z]
    data.ned_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_acc_x]
    data.body_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_acc_y]
    data.body_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_acc_z]
    data.body_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_pos_Xb]
    data.rel_pos_Xb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_pos_Yb]
    data.rel_pos_Yb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_pos_Zb]
    data.rel_pos_Zb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_vel_Xb]
    data.rel_vel_Xb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_vel_Yb]
    data.rel_vel_Yb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_vel_Zb]
    data.rel_vel_Zb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_angle_a]
    data.rel_angle_a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_angle_b]
    data.rel_angle_b = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_angle_c]
    data.rel_angle_c = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_att_pitch]
    data.rel_att_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_att_roll]
    data.rel_att_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rel_att_yaw]
    data.rel_att_yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 265;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hust_fw_formation_control/Leaderstates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68a80b14eea42d16a0353d5db35bf100';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #本消息是定义的领机的状态消息，同样也包含了相对运动的关系
    
    #如果能得到领机的当前姿态信息，相当于协同
    float64 pitch_angle
    
    float64 yaw_angle
    
    bool yaw_valid
    
    float64 roll_angle
    
    float64 thrust#这个有点不好获得
    
    #领机的绝对位置速度信息
    float64 latitude
    
    float64 altitude
    
    float64 longitude
    
    float64 relative_alt
    
    float64 airspeed
    
    float64 ned_vel_x
    
    float64 ned_vel_y
    
    float64 ned_vel_z
    
    float64 global_vel_x
    
    float64 global_vel_y
    
    float64 global_vel_z
    
    float64 ned_acc_x
    
    float64 ned_acc_y
    
    float64 ned_acc_z
    
    float64 body_acc_x
    
    float64 body_acc_y
    
    float64 body_acc_z
    
    #领机与本机相对位置速度信息
    float64 rel_pos_Xb
    
    float64 rel_pos_Yb
    
    float64 rel_pos_Zb
    
    float64 rel_vel_Xb
    
    float64 rel_vel_Yb
    
    float64 rel_vel_Zb
    
    float64 rel_angle_a#相对角度，之后再改名
    
    float64 rel_angle_b
    
    float64 rel_angle_c
    
    float64 rel_att_pitch
    
    float64 rel_att_roll
    
    float64 rel_att_yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Leaderstates(null);
    if (msg.pitch_angle !== undefined) {
      resolved.pitch_angle = msg.pitch_angle;
    }
    else {
      resolved.pitch_angle = 0.0
    }

    if (msg.yaw_angle !== undefined) {
      resolved.yaw_angle = msg.yaw_angle;
    }
    else {
      resolved.yaw_angle = 0.0
    }

    if (msg.yaw_valid !== undefined) {
      resolved.yaw_valid = msg.yaw_valid;
    }
    else {
      resolved.yaw_valid = false
    }

    if (msg.roll_angle !== undefined) {
      resolved.roll_angle = msg.roll_angle;
    }
    else {
      resolved.roll_angle = 0.0
    }

    if (msg.thrust !== undefined) {
      resolved.thrust = msg.thrust;
    }
    else {
      resolved.thrust = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.relative_alt !== undefined) {
      resolved.relative_alt = msg.relative_alt;
    }
    else {
      resolved.relative_alt = 0.0
    }

    if (msg.airspeed !== undefined) {
      resolved.airspeed = msg.airspeed;
    }
    else {
      resolved.airspeed = 0.0
    }

    if (msg.ned_vel_x !== undefined) {
      resolved.ned_vel_x = msg.ned_vel_x;
    }
    else {
      resolved.ned_vel_x = 0.0
    }

    if (msg.ned_vel_y !== undefined) {
      resolved.ned_vel_y = msg.ned_vel_y;
    }
    else {
      resolved.ned_vel_y = 0.0
    }

    if (msg.ned_vel_z !== undefined) {
      resolved.ned_vel_z = msg.ned_vel_z;
    }
    else {
      resolved.ned_vel_z = 0.0
    }

    if (msg.global_vel_x !== undefined) {
      resolved.global_vel_x = msg.global_vel_x;
    }
    else {
      resolved.global_vel_x = 0.0
    }

    if (msg.global_vel_y !== undefined) {
      resolved.global_vel_y = msg.global_vel_y;
    }
    else {
      resolved.global_vel_y = 0.0
    }

    if (msg.global_vel_z !== undefined) {
      resolved.global_vel_z = msg.global_vel_z;
    }
    else {
      resolved.global_vel_z = 0.0
    }

    if (msg.ned_acc_x !== undefined) {
      resolved.ned_acc_x = msg.ned_acc_x;
    }
    else {
      resolved.ned_acc_x = 0.0
    }

    if (msg.ned_acc_y !== undefined) {
      resolved.ned_acc_y = msg.ned_acc_y;
    }
    else {
      resolved.ned_acc_y = 0.0
    }

    if (msg.ned_acc_z !== undefined) {
      resolved.ned_acc_z = msg.ned_acc_z;
    }
    else {
      resolved.ned_acc_z = 0.0
    }

    if (msg.body_acc_x !== undefined) {
      resolved.body_acc_x = msg.body_acc_x;
    }
    else {
      resolved.body_acc_x = 0.0
    }

    if (msg.body_acc_y !== undefined) {
      resolved.body_acc_y = msg.body_acc_y;
    }
    else {
      resolved.body_acc_y = 0.0
    }

    if (msg.body_acc_z !== undefined) {
      resolved.body_acc_z = msg.body_acc_z;
    }
    else {
      resolved.body_acc_z = 0.0
    }

    if (msg.rel_pos_Xb !== undefined) {
      resolved.rel_pos_Xb = msg.rel_pos_Xb;
    }
    else {
      resolved.rel_pos_Xb = 0.0
    }

    if (msg.rel_pos_Yb !== undefined) {
      resolved.rel_pos_Yb = msg.rel_pos_Yb;
    }
    else {
      resolved.rel_pos_Yb = 0.0
    }

    if (msg.rel_pos_Zb !== undefined) {
      resolved.rel_pos_Zb = msg.rel_pos_Zb;
    }
    else {
      resolved.rel_pos_Zb = 0.0
    }

    if (msg.rel_vel_Xb !== undefined) {
      resolved.rel_vel_Xb = msg.rel_vel_Xb;
    }
    else {
      resolved.rel_vel_Xb = 0.0
    }

    if (msg.rel_vel_Yb !== undefined) {
      resolved.rel_vel_Yb = msg.rel_vel_Yb;
    }
    else {
      resolved.rel_vel_Yb = 0.0
    }

    if (msg.rel_vel_Zb !== undefined) {
      resolved.rel_vel_Zb = msg.rel_vel_Zb;
    }
    else {
      resolved.rel_vel_Zb = 0.0
    }

    if (msg.rel_angle_a !== undefined) {
      resolved.rel_angle_a = msg.rel_angle_a;
    }
    else {
      resolved.rel_angle_a = 0.0
    }

    if (msg.rel_angle_b !== undefined) {
      resolved.rel_angle_b = msg.rel_angle_b;
    }
    else {
      resolved.rel_angle_b = 0.0
    }

    if (msg.rel_angle_c !== undefined) {
      resolved.rel_angle_c = msg.rel_angle_c;
    }
    else {
      resolved.rel_angle_c = 0.0
    }

    if (msg.rel_att_pitch !== undefined) {
      resolved.rel_att_pitch = msg.rel_att_pitch;
    }
    else {
      resolved.rel_att_pitch = 0.0
    }

    if (msg.rel_att_roll !== undefined) {
      resolved.rel_att_roll = msg.rel_att_roll;
    }
    else {
      resolved.rel_att_roll = 0.0
    }

    if (msg.rel_att_yaw !== undefined) {
      resolved.rel_att_yaw = msg.rel_att_yaw;
    }
    else {
      resolved.rel_att_yaw = 0.0
    }

    return resolved;
    }
};

module.exports = Leaderstates;
