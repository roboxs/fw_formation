// Auto-generated. Do not edit!

// (in-package hust_fw_formation_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FWstates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planeID = null;
      this.target_planeID = null;
      this.altitude_lock = null;
      this.in_air = null;
      this.control_mode = null;
      this.pitch_angle = null;
      this.yaw_angle = null;
      this.yaw_valid = null;
      this.roll_angle = null;
      this.roll_traget_angle = null;
      this.pitch_traget_angle = null;
      this.yaw_traget_angle = null;
      this.att_quater = null;
      this.ground_speed_ned_n = null;
      this.ground_speed_ned_e = null;
      this.ground_speed_ned_d = null;
      this.ground_speed = null;
      this.ground_speed_traget = null;
      this.global_vel_x = null;
      this.global_vel_y = null;
      this.global_vel_z = null;
      this.air_speed = null;
      this.wind_estimate_x = null;
      this.wind_estimate_y = null;
      this.wind_estimate_z = null;
      this.relative_hight = null;
      this.relative_hight_traget = null;
      this.latitude = null;
      this.altitude = null;
      this.longitude = null;
      this.relative_alt = null;
      this.ned_altitude = null;
      this.ned_pos_x = null;
      this.ned_pos_y = null;
      this.ned_pos_z = null;
      this.ned_vel_x = null;
      this.ned_vel_y = null;
      this.ned_vel_z = null;
      this.ned_acc_x = null;
      this.ned_acc_y = null;
      this.ned_acc_z = null;
      this.ned_acc = null;
      this.body_acc_x = null;
      this.body_acc_y = null;
      this.body_acc_z = null;
      this.body_acc = null;
      this.battery_voltage = null;
      this.battery_precentage = null;
      this.battery_current = null;
    }
    else {
      if (initObj.hasOwnProperty('planeID')) {
        this.planeID = initObj.planeID
      }
      else {
        this.planeID = 0;
      }
      if (initObj.hasOwnProperty('target_planeID')) {
        this.target_planeID = initObj.target_planeID
      }
      else {
        this.target_planeID = 0;
      }
      if (initObj.hasOwnProperty('altitude_lock')) {
        this.altitude_lock = initObj.altitude_lock
      }
      else {
        this.altitude_lock = false;
      }
      if (initObj.hasOwnProperty('in_air')) {
        this.in_air = initObj.in_air
      }
      else {
        this.in_air = false;
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = '';
      }
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
      if (initObj.hasOwnProperty('roll_traget_angle')) {
        this.roll_traget_angle = initObj.roll_traget_angle
      }
      else {
        this.roll_traget_angle = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_traget_angle')) {
        this.pitch_traget_angle = initObj.pitch_traget_angle
      }
      else {
        this.pitch_traget_angle = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_traget_angle')) {
        this.yaw_traget_angle = initObj.yaw_traget_angle
      }
      else {
        this.yaw_traget_angle = 0.0;
      }
      if (initObj.hasOwnProperty('att_quater')) {
        this.att_quater = initObj.att_quater
      }
      else {
        this.att_quater = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('ground_speed_ned_n')) {
        this.ground_speed_ned_n = initObj.ground_speed_ned_n
      }
      else {
        this.ground_speed_ned_n = 0.0;
      }
      if (initObj.hasOwnProperty('ground_speed_ned_e')) {
        this.ground_speed_ned_e = initObj.ground_speed_ned_e
      }
      else {
        this.ground_speed_ned_e = 0.0;
      }
      if (initObj.hasOwnProperty('ground_speed_ned_d')) {
        this.ground_speed_ned_d = initObj.ground_speed_ned_d
      }
      else {
        this.ground_speed_ned_d = 0.0;
      }
      if (initObj.hasOwnProperty('ground_speed')) {
        this.ground_speed = initObj.ground_speed
      }
      else {
        this.ground_speed = 0.0;
      }
      if (initObj.hasOwnProperty('ground_speed_traget')) {
        this.ground_speed_traget = initObj.ground_speed_traget
      }
      else {
        this.ground_speed_traget = 0.0;
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
      if (initObj.hasOwnProperty('air_speed')) {
        this.air_speed = initObj.air_speed
      }
      else {
        this.air_speed = 0.0;
      }
      if (initObj.hasOwnProperty('wind_estimate_x')) {
        this.wind_estimate_x = initObj.wind_estimate_x
      }
      else {
        this.wind_estimate_x = 0.0;
      }
      if (initObj.hasOwnProperty('wind_estimate_y')) {
        this.wind_estimate_y = initObj.wind_estimate_y
      }
      else {
        this.wind_estimate_y = 0.0;
      }
      if (initObj.hasOwnProperty('wind_estimate_z')) {
        this.wind_estimate_z = initObj.wind_estimate_z
      }
      else {
        this.wind_estimate_z = 0.0;
      }
      if (initObj.hasOwnProperty('relative_hight')) {
        this.relative_hight = initObj.relative_hight
      }
      else {
        this.relative_hight = 0.0;
      }
      if (initObj.hasOwnProperty('relative_hight_traget')) {
        this.relative_hight_traget = initObj.relative_hight_traget
      }
      else {
        this.relative_hight_traget = 0.0;
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
      if (initObj.hasOwnProperty('ned_altitude')) {
        this.ned_altitude = initObj.ned_altitude
      }
      else {
        this.ned_altitude = 0.0;
      }
      if (initObj.hasOwnProperty('ned_pos_x')) {
        this.ned_pos_x = initObj.ned_pos_x
      }
      else {
        this.ned_pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('ned_pos_y')) {
        this.ned_pos_y = initObj.ned_pos_y
      }
      else {
        this.ned_pos_y = 0.0;
      }
      if (initObj.hasOwnProperty('ned_pos_z')) {
        this.ned_pos_z = initObj.ned_pos_z
      }
      else {
        this.ned_pos_z = 0.0;
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
      if (initObj.hasOwnProperty('ned_acc')) {
        this.ned_acc = initObj.ned_acc
      }
      else {
        this.ned_acc = new geometry_msgs.msg.Vector3();
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
      if (initObj.hasOwnProperty('body_acc')) {
        this.body_acc = initObj.body_acc
      }
      else {
        this.body_acc = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('battery_precentage')) {
        this.battery_precentage = initObj.battery_precentage
      }
      else {
        this.battery_precentage = 0.0;
      }
      if (initObj.hasOwnProperty('battery_current')) {
        this.battery_current = initObj.battery_current
      }
      else {
        this.battery_current = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FWstates
    // Serialize message field [planeID]
    bufferOffset = _serializer.uint16(obj.planeID, buffer, bufferOffset);
    // Serialize message field [target_planeID]
    bufferOffset = _serializer.uint16(obj.target_planeID, buffer, bufferOffset);
    // Serialize message field [altitude_lock]
    bufferOffset = _serializer.bool(obj.altitude_lock, buffer, bufferOffset);
    // Serialize message field [in_air]
    bufferOffset = _serializer.bool(obj.in_air, buffer, bufferOffset);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.string(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [pitch_angle]
    bufferOffset = _serializer.float64(obj.pitch_angle, buffer, bufferOffset);
    // Serialize message field [yaw_angle]
    bufferOffset = _serializer.float64(obj.yaw_angle, buffer, bufferOffset);
    // Serialize message field [yaw_valid]
    bufferOffset = _serializer.bool(obj.yaw_valid, buffer, bufferOffset);
    // Serialize message field [roll_angle]
    bufferOffset = _serializer.float64(obj.roll_angle, buffer, bufferOffset);
    // Serialize message field [roll_traget_angle]
    bufferOffset = _serializer.float64(obj.roll_traget_angle, buffer, bufferOffset);
    // Serialize message field [pitch_traget_angle]
    bufferOffset = _serializer.float64(obj.pitch_traget_angle, buffer, bufferOffset);
    // Serialize message field [yaw_traget_angle]
    bufferOffset = _serializer.float64(obj.yaw_traget_angle, buffer, bufferOffset);
    // Serialize message field [att_quater]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.att_quater, buffer, bufferOffset);
    // Serialize message field [ground_speed_ned_n]
    bufferOffset = _serializer.float64(obj.ground_speed_ned_n, buffer, bufferOffset);
    // Serialize message field [ground_speed_ned_e]
    bufferOffset = _serializer.float64(obj.ground_speed_ned_e, buffer, bufferOffset);
    // Serialize message field [ground_speed_ned_d]
    bufferOffset = _serializer.float64(obj.ground_speed_ned_d, buffer, bufferOffset);
    // Serialize message field [ground_speed]
    bufferOffset = _serializer.float64(obj.ground_speed, buffer, bufferOffset);
    // Serialize message field [ground_speed_traget]
    bufferOffset = _serializer.float64(obj.ground_speed_traget, buffer, bufferOffset);
    // Serialize message field [global_vel_x]
    bufferOffset = _serializer.float64(obj.global_vel_x, buffer, bufferOffset);
    // Serialize message field [global_vel_y]
    bufferOffset = _serializer.float64(obj.global_vel_y, buffer, bufferOffset);
    // Serialize message field [global_vel_z]
    bufferOffset = _serializer.float64(obj.global_vel_z, buffer, bufferOffset);
    // Serialize message field [air_speed]
    bufferOffset = _serializer.float64(obj.air_speed, buffer, bufferOffset);
    // Serialize message field [wind_estimate_x]
    bufferOffset = _serializer.float64(obj.wind_estimate_x, buffer, bufferOffset);
    // Serialize message field [wind_estimate_y]
    bufferOffset = _serializer.float64(obj.wind_estimate_y, buffer, bufferOffset);
    // Serialize message field [wind_estimate_z]
    bufferOffset = _serializer.float64(obj.wind_estimate_z, buffer, bufferOffset);
    // Serialize message field [relative_hight]
    bufferOffset = _serializer.float64(obj.relative_hight, buffer, bufferOffset);
    // Serialize message field [relative_hight_traget]
    bufferOffset = _serializer.float64(obj.relative_hight_traget, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [relative_alt]
    bufferOffset = _serializer.float64(obj.relative_alt, buffer, bufferOffset);
    // Serialize message field [ned_altitude]
    bufferOffset = _serializer.float64(obj.ned_altitude, buffer, bufferOffset);
    // Serialize message field [ned_pos_x]
    bufferOffset = _serializer.float64(obj.ned_pos_x, buffer, bufferOffset);
    // Serialize message field [ned_pos_y]
    bufferOffset = _serializer.float64(obj.ned_pos_y, buffer, bufferOffset);
    // Serialize message field [ned_pos_z]
    bufferOffset = _serializer.float64(obj.ned_pos_z, buffer, bufferOffset);
    // Serialize message field [ned_vel_x]
    bufferOffset = _serializer.float64(obj.ned_vel_x, buffer, bufferOffset);
    // Serialize message field [ned_vel_y]
    bufferOffset = _serializer.float64(obj.ned_vel_y, buffer, bufferOffset);
    // Serialize message field [ned_vel_z]
    bufferOffset = _serializer.float64(obj.ned_vel_z, buffer, bufferOffset);
    // Serialize message field [ned_acc_x]
    bufferOffset = _serializer.float64(obj.ned_acc_x, buffer, bufferOffset);
    // Serialize message field [ned_acc_y]
    bufferOffset = _serializer.float64(obj.ned_acc_y, buffer, bufferOffset);
    // Serialize message field [ned_acc_z]
    bufferOffset = _serializer.float64(obj.ned_acc_z, buffer, bufferOffset);
    // Serialize message field [ned_acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ned_acc, buffer, bufferOffset);
    // Serialize message field [body_acc_x]
    bufferOffset = _serializer.float64(obj.body_acc_x, buffer, bufferOffset);
    // Serialize message field [body_acc_y]
    bufferOffset = _serializer.float64(obj.body_acc_y, buffer, bufferOffset);
    // Serialize message field [body_acc_z]
    bufferOffset = _serializer.float64(obj.body_acc_z, buffer, bufferOffset);
    // Serialize message field [body_acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.body_acc, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float64(obj.battery_voltage, buffer, bufferOffset);
    // Serialize message field [battery_precentage]
    bufferOffset = _serializer.float64(obj.battery_precentage, buffer, bufferOffset);
    // Serialize message field [battery_current]
    bufferOffset = _serializer.float64(obj.battery_current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FWstates
    let len;
    let data = new FWstates(null);
    // Deserialize message field [planeID]
    data.planeID = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [target_planeID]
    data.target_planeID = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [altitude_lock]
    data.altitude_lock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [in_air]
    data.in_air = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pitch_angle]
    data.pitch_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_angle]
    data.yaw_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_valid]
    data.yaw_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [roll_angle]
    data.roll_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_traget_angle]
    data.roll_traget_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_traget_angle]
    data.pitch_traget_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_traget_angle]
    data.yaw_traget_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [att_quater]
    data.att_quater = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [ground_speed_ned_n]
    data.ground_speed_ned_n = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ground_speed_ned_e]
    data.ground_speed_ned_e = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ground_speed_ned_d]
    data.ground_speed_ned_d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ground_speed]
    data.ground_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ground_speed_traget]
    data.ground_speed_traget = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_vel_x]
    data.global_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_vel_y]
    data.global_vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [global_vel_z]
    data.global_vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [air_speed]
    data.air_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wind_estimate_x]
    data.wind_estimate_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wind_estimate_y]
    data.wind_estimate_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wind_estimate_z]
    data.wind_estimate_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_hight]
    data.relative_hight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_hight_traget]
    data.relative_hight_traget = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_alt]
    data.relative_alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_altitude]
    data.ned_altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_pos_x]
    data.ned_pos_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_pos_y]
    data.ned_pos_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_pos_z]
    data.ned_pos_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_vel_x]
    data.ned_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_vel_y]
    data.ned_vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_vel_z]
    data.ned_vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_acc_x]
    data.ned_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_acc_y]
    data.ned_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_acc_z]
    data.ned_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ned_acc]
    data.ned_acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [body_acc_x]
    data.body_acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_acc_y]
    data.body_acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_acc_z]
    data.body_acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [body_acc]
    data.body_acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [battery_precentage]
    data.battery_precentage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [battery_current]
    data.battery_current = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.control_mode.length;
    return length + 411;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hust_fw_formation_control/FWstates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a9dfc7015c39929bc474960d75372d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message 固定翼的编队控制，可能用到的消息类型全定义
    uint16 planeID
    
    uint16 target_planeID
    
    bool altitude_lock
    
    bool in_air
    
    string control_mode
    
    float64 pitch_angle
    
    float64 yaw_angle
    
    bool yaw_valid
    
    float64 roll_angle
    
    float64 roll_traget_angle
    
    float64 pitch_traget_angle
    
    float64 yaw_traget_angle
    
    
    geometry_msgs/Quaternion att_quater #姿态四元数，只能在外面弄下旋转矩阵了
    
    float64 ground_speed_ned_n
    
    float64 ground_speed_ned_e
    
    float64 ground_speed_ned_d
    
    float64 ground_speed
    
    float64 ground_speed_traget
    
    float64 global_vel_x
    
    float64 global_vel_y
    
    float64 global_vel_z
    
    
    float64 air_speed
    
    float64 wind_estimate_x
    
    float64 wind_estimate_y
    
    float64 wind_estimate_z
    
    float64 relative_hight
    
    float64 relative_hight_traget
    
    float64 latitude
    
    float64 altitude
    
    float64 longitude
    
    float64 relative_alt
    
    float64 ned_altitude
    
    float64 ned_pos_x
    
    float64 ned_pos_y
    
    float64 ned_pos_z
    
    float64 ned_vel_x
    
    float64 ned_vel_y
    
    float64 ned_vel_z
    
    float64 ned_acc_x
    
    float64 ned_acc_y
    
    float64 ned_acc_z
    
    geometry_msgs/Vector3 ned_acc
    
    float64 body_acc_x
    
    float64 body_acc_y
    
    float64 body_acc_z
    
    geometry_msgs/Vector3 body_acc
    
    float64 battery_voltage
    
    float64 battery_precentage
    
    float64 battery_current
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FWstates(null);
    if (msg.planeID !== undefined) {
      resolved.planeID = msg.planeID;
    }
    else {
      resolved.planeID = 0
    }

    if (msg.target_planeID !== undefined) {
      resolved.target_planeID = msg.target_planeID;
    }
    else {
      resolved.target_planeID = 0
    }

    if (msg.altitude_lock !== undefined) {
      resolved.altitude_lock = msg.altitude_lock;
    }
    else {
      resolved.altitude_lock = false
    }

    if (msg.in_air !== undefined) {
      resolved.in_air = msg.in_air;
    }
    else {
      resolved.in_air = false
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = ''
    }

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

    if (msg.roll_traget_angle !== undefined) {
      resolved.roll_traget_angle = msg.roll_traget_angle;
    }
    else {
      resolved.roll_traget_angle = 0.0
    }

    if (msg.pitch_traget_angle !== undefined) {
      resolved.pitch_traget_angle = msg.pitch_traget_angle;
    }
    else {
      resolved.pitch_traget_angle = 0.0
    }

    if (msg.yaw_traget_angle !== undefined) {
      resolved.yaw_traget_angle = msg.yaw_traget_angle;
    }
    else {
      resolved.yaw_traget_angle = 0.0
    }

    if (msg.att_quater !== undefined) {
      resolved.att_quater = geometry_msgs.msg.Quaternion.Resolve(msg.att_quater)
    }
    else {
      resolved.att_quater = new geometry_msgs.msg.Quaternion()
    }

    if (msg.ground_speed_ned_n !== undefined) {
      resolved.ground_speed_ned_n = msg.ground_speed_ned_n;
    }
    else {
      resolved.ground_speed_ned_n = 0.0
    }

    if (msg.ground_speed_ned_e !== undefined) {
      resolved.ground_speed_ned_e = msg.ground_speed_ned_e;
    }
    else {
      resolved.ground_speed_ned_e = 0.0
    }

    if (msg.ground_speed_ned_d !== undefined) {
      resolved.ground_speed_ned_d = msg.ground_speed_ned_d;
    }
    else {
      resolved.ground_speed_ned_d = 0.0
    }

    if (msg.ground_speed !== undefined) {
      resolved.ground_speed = msg.ground_speed;
    }
    else {
      resolved.ground_speed = 0.0
    }

    if (msg.ground_speed_traget !== undefined) {
      resolved.ground_speed_traget = msg.ground_speed_traget;
    }
    else {
      resolved.ground_speed_traget = 0.0
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

    if (msg.air_speed !== undefined) {
      resolved.air_speed = msg.air_speed;
    }
    else {
      resolved.air_speed = 0.0
    }

    if (msg.wind_estimate_x !== undefined) {
      resolved.wind_estimate_x = msg.wind_estimate_x;
    }
    else {
      resolved.wind_estimate_x = 0.0
    }

    if (msg.wind_estimate_y !== undefined) {
      resolved.wind_estimate_y = msg.wind_estimate_y;
    }
    else {
      resolved.wind_estimate_y = 0.0
    }

    if (msg.wind_estimate_z !== undefined) {
      resolved.wind_estimate_z = msg.wind_estimate_z;
    }
    else {
      resolved.wind_estimate_z = 0.0
    }

    if (msg.relative_hight !== undefined) {
      resolved.relative_hight = msg.relative_hight;
    }
    else {
      resolved.relative_hight = 0.0
    }

    if (msg.relative_hight_traget !== undefined) {
      resolved.relative_hight_traget = msg.relative_hight_traget;
    }
    else {
      resolved.relative_hight_traget = 0.0
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

    if (msg.ned_altitude !== undefined) {
      resolved.ned_altitude = msg.ned_altitude;
    }
    else {
      resolved.ned_altitude = 0.0
    }

    if (msg.ned_pos_x !== undefined) {
      resolved.ned_pos_x = msg.ned_pos_x;
    }
    else {
      resolved.ned_pos_x = 0.0
    }

    if (msg.ned_pos_y !== undefined) {
      resolved.ned_pos_y = msg.ned_pos_y;
    }
    else {
      resolved.ned_pos_y = 0.0
    }

    if (msg.ned_pos_z !== undefined) {
      resolved.ned_pos_z = msg.ned_pos_z;
    }
    else {
      resolved.ned_pos_z = 0.0
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

    if (msg.ned_acc !== undefined) {
      resolved.ned_acc = geometry_msgs.msg.Vector3.Resolve(msg.ned_acc)
    }
    else {
      resolved.ned_acc = new geometry_msgs.msg.Vector3()
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

    if (msg.body_acc !== undefined) {
      resolved.body_acc = geometry_msgs.msg.Vector3.Resolve(msg.body_acc)
    }
    else {
      resolved.body_acc = new geometry_msgs.msg.Vector3()
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.battery_precentage !== undefined) {
      resolved.battery_precentage = msg.battery_precentage;
    }
    else {
      resolved.battery_precentage = 0.0
    }

    if (msg.battery_current !== undefined) {
      resolved.battery_current = msg.battery_current;
    }
    else {
      resolved.battery_current = 0.0
    }

    return resolved;
    }
};

module.exports = FWstates;
