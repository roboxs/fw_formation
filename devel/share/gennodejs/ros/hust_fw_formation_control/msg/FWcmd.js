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

class FWcmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_mode = null;
      this.pitch_angle_sp = null;
      this.yaw_angle_sp = null;
      this.roll_angle_sp = null;
      this.throttle_sp = null;
      this.t_flight = null;
      this.date_pitch = null;
      this.date_pitchcmd = null;
      this.date_roll = null;
      this.date_rollcmd = null;
      this.date_v = null;
      this.date_vcmd = null;
      this.date_h = null;
      this.date_hcmd = null;
      this.date_vy = null;
      this.date_vycmd = null;
      this.date_delta_perr = null;
      this.date_delta_verr = null;
      this.date_delta_gd = null;
      this.date_yaw = null;
      this.date_yawcmd = null;
      this.date_flag_zw = null;
      this.z0 = null;
      this.z1 = null;
      this.z2 = null;
      this.z3 = null;
      this.z4 = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_mode')) {
        this.cmd_mode = initObj.cmd_mode
      }
      else {
        this.cmd_mode = '';
      }
      if (initObj.hasOwnProperty('pitch_angle_sp')) {
        this.pitch_angle_sp = initObj.pitch_angle_sp
      }
      else {
        this.pitch_angle_sp = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_angle_sp')) {
        this.yaw_angle_sp = initObj.yaw_angle_sp
      }
      else {
        this.yaw_angle_sp = 0.0;
      }
      if (initObj.hasOwnProperty('roll_angle_sp')) {
        this.roll_angle_sp = initObj.roll_angle_sp
      }
      else {
        this.roll_angle_sp = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_sp')) {
        this.throttle_sp = initObj.throttle_sp
      }
      else {
        this.throttle_sp = 0.0;
      }
      if (initObj.hasOwnProperty('t_flight')) {
        this.t_flight = initObj.t_flight
      }
      else {
        this.t_flight = 0.0;
      }
      if (initObj.hasOwnProperty('date_pitch')) {
        this.date_pitch = initObj.date_pitch
      }
      else {
        this.date_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('date_pitchcmd')) {
        this.date_pitchcmd = initObj.date_pitchcmd
      }
      else {
        this.date_pitchcmd = 0.0;
      }
      if (initObj.hasOwnProperty('date_roll')) {
        this.date_roll = initObj.date_roll
      }
      else {
        this.date_roll = 0.0;
      }
      if (initObj.hasOwnProperty('date_rollcmd')) {
        this.date_rollcmd = initObj.date_rollcmd
      }
      else {
        this.date_rollcmd = 0.0;
      }
      if (initObj.hasOwnProperty('date_v')) {
        this.date_v = initObj.date_v
      }
      else {
        this.date_v = 0.0;
      }
      if (initObj.hasOwnProperty('date_vcmd')) {
        this.date_vcmd = initObj.date_vcmd
      }
      else {
        this.date_vcmd = 0.0;
      }
      if (initObj.hasOwnProperty('date_h')) {
        this.date_h = initObj.date_h
      }
      else {
        this.date_h = 0.0;
      }
      if (initObj.hasOwnProperty('date_hcmd')) {
        this.date_hcmd = initObj.date_hcmd
      }
      else {
        this.date_hcmd = 0.0;
      }
      if (initObj.hasOwnProperty('date_vy')) {
        this.date_vy = initObj.date_vy
      }
      else {
        this.date_vy = 0.0;
      }
      if (initObj.hasOwnProperty('date_vycmd')) {
        this.date_vycmd = initObj.date_vycmd
      }
      else {
        this.date_vycmd = 0.0;
      }
      if (initObj.hasOwnProperty('date_delta_perr')) {
        this.date_delta_perr = initObj.date_delta_perr
      }
      else {
        this.date_delta_perr = 0.0;
      }
      if (initObj.hasOwnProperty('date_delta_verr')) {
        this.date_delta_verr = initObj.date_delta_verr
      }
      else {
        this.date_delta_verr = 0.0;
      }
      if (initObj.hasOwnProperty('date_delta_gd')) {
        this.date_delta_gd = initObj.date_delta_gd
      }
      else {
        this.date_delta_gd = 0.0;
      }
      if (initObj.hasOwnProperty('date_yaw')) {
        this.date_yaw = initObj.date_yaw
      }
      else {
        this.date_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('date_yawcmd')) {
        this.date_yawcmd = initObj.date_yawcmd
      }
      else {
        this.date_yawcmd = 0.0;
      }
      if (initObj.hasOwnProperty('date_flag_zw')) {
        this.date_flag_zw = initObj.date_flag_zw
      }
      else {
        this.date_flag_zw = 0.0;
      }
      if (initObj.hasOwnProperty('z0')) {
        this.z0 = initObj.z0
      }
      else {
        this.z0 = 0.0;
      }
      if (initObj.hasOwnProperty('z1')) {
        this.z1 = initObj.z1
      }
      else {
        this.z1 = 0.0;
      }
      if (initObj.hasOwnProperty('z2')) {
        this.z2 = initObj.z2
      }
      else {
        this.z2 = 0.0;
      }
      if (initObj.hasOwnProperty('z3')) {
        this.z3 = initObj.z3
      }
      else {
        this.z3 = 0.0;
      }
      if (initObj.hasOwnProperty('z4')) {
        this.z4 = initObj.z4
      }
      else {
        this.z4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FWcmd
    // Serialize message field [cmd_mode]
    bufferOffset = _serializer.string(obj.cmd_mode, buffer, bufferOffset);
    // Serialize message field [pitch_angle_sp]
    bufferOffset = _serializer.float64(obj.pitch_angle_sp, buffer, bufferOffset);
    // Serialize message field [yaw_angle_sp]
    bufferOffset = _serializer.float64(obj.yaw_angle_sp, buffer, bufferOffset);
    // Serialize message field [roll_angle_sp]
    bufferOffset = _serializer.float64(obj.roll_angle_sp, buffer, bufferOffset);
    // Serialize message field [throttle_sp]
    bufferOffset = _serializer.float64(obj.throttle_sp, buffer, bufferOffset);
    // Serialize message field [t_flight]
    bufferOffset = _serializer.float64(obj.t_flight, buffer, bufferOffset);
    // Serialize message field [date_pitch]
    bufferOffset = _serializer.float64(obj.date_pitch, buffer, bufferOffset);
    // Serialize message field [date_pitchcmd]
    bufferOffset = _serializer.float64(obj.date_pitchcmd, buffer, bufferOffset);
    // Serialize message field [date_roll]
    bufferOffset = _serializer.float64(obj.date_roll, buffer, bufferOffset);
    // Serialize message field [date_rollcmd]
    bufferOffset = _serializer.float64(obj.date_rollcmd, buffer, bufferOffset);
    // Serialize message field [date_v]
    bufferOffset = _serializer.float64(obj.date_v, buffer, bufferOffset);
    // Serialize message field [date_vcmd]
    bufferOffset = _serializer.float64(obj.date_vcmd, buffer, bufferOffset);
    // Serialize message field [date_h]
    bufferOffset = _serializer.float64(obj.date_h, buffer, bufferOffset);
    // Serialize message field [date_hcmd]
    bufferOffset = _serializer.float64(obj.date_hcmd, buffer, bufferOffset);
    // Serialize message field [date_vy]
    bufferOffset = _serializer.float64(obj.date_vy, buffer, bufferOffset);
    // Serialize message field [date_vycmd]
    bufferOffset = _serializer.float64(obj.date_vycmd, buffer, bufferOffset);
    // Serialize message field [date_delta_perr]
    bufferOffset = _serializer.float64(obj.date_delta_perr, buffer, bufferOffset);
    // Serialize message field [date_delta_verr]
    bufferOffset = _serializer.float64(obj.date_delta_verr, buffer, bufferOffset);
    // Serialize message field [date_delta_gd]
    bufferOffset = _serializer.float64(obj.date_delta_gd, buffer, bufferOffset);
    // Serialize message field [date_yaw]
    bufferOffset = _serializer.float64(obj.date_yaw, buffer, bufferOffset);
    // Serialize message field [date_yawcmd]
    bufferOffset = _serializer.float64(obj.date_yawcmd, buffer, bufferOffset);
    // Serialize message field [date_flag_zw]
    bufferOffset = _serializer.float64(obj.date_flag_zw, buffer, bufferOffset);
    // Serialize message field [z0]
    bufferOffset = _serializer.float64(obj.z0, buffer, bufferOffset);
    // Serialize message field [z1]
    bufferOffset = _serializer.float64(obj.z1, buffer, bufferOffset);
    // Serialize message field [z2]
    bufferOffset = _serializer.float64(obj.z2, buffer, bufferOffset);
    // Serialize message field [z3]
    bufferOffset = _serializer.float64(obj.z3, buffer, bufferOffset);
    // Serialize message field [z4]
    bufferOffset = _serializer.float64(obj.z4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FWcmd
    let len;
    let data = new FWcmd(null);
    // Deserialize message field [cmd_mode]
    data.cmd_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pitch_angle_sp]
    data.pitch_angle_sp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_angle_sp]
    data.yaw_angle_sp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_angle_sp]
    data.roll_angle_sp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle_sp]
    data.throttle_sp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [t_flight]
    data.t_flight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_pitch]
    data.date_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_pitchcmd]
    data.date_pitchcmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_roll]
    data.date_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_rollcmd]
    data.date_rollcmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_v]
    data.date_v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_vcmd]
    data.date_vcmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_h]
    data.date_h = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_hcmd]
    data.date_hcmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_vy]
    data.date_vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_vycmd]
    data.date_vycmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_delta_perr]
    data.date_delta_perr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_delta_verr]
    data.date_delta_verr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_delta_gd]
    data.date_delta_gd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_yaw]
    data.date_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_yawcmd]
    data.date_yawcmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [date_flag_zw]
    data.date_flag_zw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z0]
    data.z0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z1]
    data.z1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z2]
    data.z2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z3]
    data.z3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z4]
    data.z4 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd_mode.length;
    return length + 212;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hust_fw_formation_control/FWcmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1a541e09a3ea10b2429785cd152840b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #固定翼控制指令的期望值		
    string cmd_mode
    
    float64 pitch_angle_sp
    
    float64 yaw_angle_sp
    
    float64 roll_angle_sp
    
    float64 throttle_sp
    
    
    float64 t_flight
    float64 date_pitch
    float64 date_pitchcmd
    float64 date_roll
    float64 date_rollcmd
    float64 date_v
    float64 date_vcmd
    float64 date_h
    float64 date_hcmd
    float64 date_vy
    float64 date_vycmd
    float64 date_delta_perr
    float64 date_delta_verr
    float64 date_delta_gd
    float64 date_yaw
    float64 date_yawcmd
    float64 date_flag_zw
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    float64 z0
    
    float64 z1
    
    float64 z2
    
    float64 z3
    
    float64 z4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FWcmd(null);
    if (msg.cmd_mode !== undefined) {
      resolved.cmd_mode = msg.cmd_mode;
    }
    else {
      resolved.cmd_mode = ''
    }

    if (msg.pitch_angle_sp !== undefined) {
      resolved.pitch_angle_sp = msg.pitch_angle_sp;
    }
    else {
      resolved.pitch_angle_sp = 0.0
    }

    if (msg.yaw_angle_sp !== undefined) {
      resolved.yaw_angle_sp = msg.yaw_angle_sp;
    }
    else {
      resolved.yaw_angle_sp = 0.0
    }

    if (msg.roll_angle_sp !== undefined) {
      resolved.roll_angle_sp = msg.roll_angle_sp;
    }
    else {
      resolved.roll_angle_sp = 0.0
    }

    if (msg.throttle_sp !== undefined) {
      resolved.throttle_sp = msg.throttle_sp;
    }
    else {
      resolved.throttle_sp = 0.0
    }

    if (msg.t_flight !== undefined) {
      resolved.t_flight = msg.t_flight;
    }
    else {
      resolved.t_flight = 0.0
    }

    if (msg.date_pitch !== undefined) {
      resolved.date_pitch = msg.date_pitch;
    }
    else {
      resolved.date_pitch = 0.0
    }

    if (msg.date_pitchcmd !== undefined) {
      resolved.date_pitchcmd = msg.date_pitchcmd;
    }
    else {
      resolved.date_pitchcmd = 0.0
    }

    if (msg.date_roll !== undefined) {
      resolved.date_roll = msg.date_roll;
    }
    else {
      resolved.date_roll = 0.0
    }

    if (msg.date_rollcmd !== undefined) {
      resolved.date_rollcmd = msg.date_rollcmd;
    }
    else {
      resolved.date_rollcmd = 0.0
    }

    if (msg.date_v !== undefined) {
      resolved.date_v = msg.date_v;
    }
    else {
      resolved.date_v = 0.0
    }

    if (msg.date_vcmd !== undefined) {
      resolved.date_vcmd = msg.date_vcmd;
    }
    else {
      resolved.date_vcmd = 0.0
    }

    if (msg.date_h !== undefined) {
      resolved.date_h = msg.date_h;
    }
    else {
      resolved.date_h = 0.0
    }

    if (msg.date_hcmd !== undefined) {
      resolved.date_hcmd = msg.date_hcmd;
    }
    else {
      resolved.date_hcmd = 0.0
    }

    if (msg.date_vy !== undefined) {
      resolved.date_vy = msg.date_vy;
    }
    else {
      resolved.date_vy = 0.0
    }

    if (msg.date_vycmd !== undefined) {
      resolved.date_vycmd = msg.date_vycmd;
    }
    else {
      resolved.date_vycmd = 0.0
    }

    if (msg.date_delta_perr !== undefined) {
      resolved.date_delta_perr = msg.date_delta_perr;
    }
    else {
      resolved.date_delta_perr = 0.0
    }

    if (msg.date_delta_verr !== undefined) {
      resolved.date_delta_verr = msg.date_delta_verr;
    }
    else {
      resolved.date_delta_verr = 0.0
    }

    if (msg.date_delta_gd !== undefined) {
      resolved.date_delta_gd = msg.date_delta_gd;
    }
    else {
      resolved.date_delta_gd = 0.0
    }

    if (msg.date_yaw !== undefined) {
      resolved.date_yaw = msg.date_yaw;
    }
    else {
      resolved.date_yaw = 0.0
    }

    if (msg.date_yawcmd !== undefined) {
      resolved.date_yawcmd = msg.date_yawcmd;
    }
    else {
      resolved.date_yawcmd = 0.0
    }

    if (msg.date_flag_zw !== undefined) {
      resolved.date_flag_zw = msg.date_flag_zw;
    }
    else {
      resolved.date_flag_zw = 0.0
    }

    if (msg.z0 !== undefined) {
      resolved.z0 = msg.z0;
    }
    else {
      resolved.z0 = 0.0
    }

    if (msg.z1 !== undefined) {
      resolved.z1 = msg.z1;
    }
    else {
      resolved.z1 = 0.0
    }

    if (msg.z2 !== undefined) {
      resolved.z2 = msg.z2;
    }
    else {
      resolved.z2 = 0.0
    }

    if (msg.z3 !== undefined) {
      resolved.z3 = msg.z3;
    }
    else {
      resolved.z3 = 0.0
    }

    if (msg.z4 !== undefined) {
      resolved.z4 = msg.z4;
    }
    else {
      resolved.z4 = 0.0
    }

    return resolved;
    }
};

module.exports = FWcmd;
