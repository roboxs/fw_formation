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

class Formation_control_states {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planeID = null;
      this.sp_ned_vel_x = null;
      this.sp_ned_vel_y = null;
      this.sp_ned_vel_z = null;
      this.sp_latitude = null;
      this.sp_longitude = null;
      this.sp_altitude = null;
      this.sp_relative_alt = null;
      this.sp_air_speed = null;
      this.sp_ground_speed = null;
      this.err_P_N = null;
      this.err_P_E = null;
      this.err_P_D = null;
      this.err_P_NE = null;
      this.err_PXk = null;
      this.err_PYk = null;
      this.err_PZk = null;
      this.led_fol_vxk = null;
      this.led_fol_vyk = null;
      this.led_fol_vzk = null;
      this.err_VXk = null;
      this.err_VYk = null;
      this.err_VZk = null;
      this.led_fol_eta = null;
      this.eta_deg = null;
      this.err_PXb = null;
      this.err_PYb = null;
      this.err_PZb = null;
      this.err_VXb = null;
      this.err_VYb = null;
      this.err_VZb = null;
      this.led_fol_vxb = null;
      this.led_fol_vyb = null;
      this.led_fol_vzb = null;
      this.a = null;
      this.b = null;
      this.c = null;
    }
    else {
      if (initObj.hasOwnProperty('planeID')) {
        this.planeID = initObj.planeID
      }
      else {
        this.planeID = 0;
      }
      if (initObj.hasOwnProperty('sp_ned_vel_x')) {
        this.sp_ned_vel_x = initObj.sp_ned_vel_x
      }
      else {
        this.sp_ned_vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('sp_ned_vel_y')) {
        this.sp_ned_vel_y = initObj.sp_ned_vel_y
      }
      else {
        this.sp_ned_vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('sp_ned_vel_z')) {
        this.sp_ned_vel_z = initObj.sp_ned_vel_z
      }
      else {
        this.sp_ned_vel_z = 0.0;
      }
      if (initObj.hasOwnProperty('sp_latitude')) {
        this.sp_latitude = initObj.sp_latitude
      }
      else {
        this.sp_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('sp_longitude')) {
        this.sp_longitude = initObj.sp_longitude
      }
      else {
        this.sp_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('sp_altitude')) {
        this.sp_altitude = initObj.sp_altitude
      }
      else {
        this.sp_altitude = 0.0;
      }
      if (initObj.hasOwnProperty('sp_relative_alt')) {
        this.sp_relative_alt = initObj.sp_relative_alt
      }
      else {
        this.sp_relative_alt = 0.0;
      }
      if (initObj.hasOwnProperty('sp_air_speed')) {
        this.sp_air_speed = initObj.sp_air_speed
      }
      else {
        this.sp_air_speed = 0.0;
      }
      if (initObj.hasOwnProperty('sp_ground_speed')) {
        this.sp_ground_speed = initObj.sp_ground_speed
      }
      else {
        this.sp_ground_speed = 0.0;
      }
      if (initObj.hasOwnProperty('err_P_N')) {
        this.err_P_N = initObj.err_P_N
      }
      else {
        this.err_P_N = 0.0;
      }
      if (initObj.hasOwnProperty('err_P_E')) {
        this.err_P_E = initObj.err_P_E
      }
      else {
        this.err_P_E = 0.0;
      }
      if (initObj.hasOwnProperty('err_P_D')) {
        this.err_P_D = initObj.err_P_D
      }
      else {
        this.err_P_D = 0.0;
      }
      if (initObj.hasOwnProperty('err_P_NE')) {
        this.err_P_NE = initObj.err_P_NE
      }
      else {
        this.err_P_NE = 0.0;
      }
      if (initObj.hasOwnProperty('err_PXk')) {
        this.err_PXk = initObj.err_PXk
      }
      else {
        this.err_PXk = 0.0;
      }
      if (initObj.hasOwnProperty('err_PYk')) {
        this.err_PYk = initObj.err_PYk
      }
      else {
        this.err_PYk = 0.0;
      }
      if (initObj.hasOwnProperty('err_PZk')) {
        this.err_PZk = initObj.err_PZk
      }
      else {
        this.err_PZk = 0.0;
      }
      if (initObj.hasOwnProperty('led_fol_vxk')) {
        this.led_fol_vxk = initObj.led_fol_vxk
      }
      else {
        this.led_fol_vxk = 0.0;
      }
      if (initObj.hasOwnProperty('led_fol_vyk')) {
        this.led_fol_vyk = initObj.led_fol_vyk
      }
      else {
        this.led_fol_vyk = 0.0;
      }
      if (initObj.hasOwnProperty('led_fol_vzk')) {
        this.led_fol_vzk = initObj.led_fol_vzk
      }
      else {
        this.led_fol_vzk = 0.0;
      }
      if (initObj.hasOwnProperty('err_VXk')) {
        this.err_VXk = initObj.err_VXk
      }
      else {
        this.err_VXk = 0.0;
      }
      if (initObj.hasOwnProperty('err_VYk')) {
        this.err_VYk = initObj.err_VYk
      }
      else {
        this.err_VYk = 0.0;
      }
      if (initObj.hasOwnProperty('err_VZk')) {
        this.err_VZk = initObj.err_VZk
      }
      else {
        this.err_VZk = 0.0;
      }
      if (initObj.hasOwnProperty('led_fol_eta')) {
        this.led_fol_eta = initObj.led_fol_eta
      }
      else {
        this.led_fol_eta = 0.0;
      }
      if (initObj.hasOwnProperty('eta_deg')) {
        this.eta_deg = initObj.eta_deg
      }
      else {
        this.eta_deg = 0.0;
      }
      if (initObj.hasOwnProperty('err_PXb')) {
        this.err_PXb = initObj.err_PXb
      }
      else {
        this.err_PXb = 0.0;
      }
      if (initObj.hasOwnProperty('err_PYb')) {
        this.err_PYb = initObj.err_PYb
      }
      else {
        this.err_PYb = 0.0;
      }
      if (initObj.hasOwnProperty('err_PZb')) {
        this.err_PZb = initObj.err_PZb
      }
      else {
        this.err_PZb = 0.0;
      }
      if (initObj.hasOwnProperty('err_VXb')) {
        this.err_VXb = initObj.err_VXb
      }
      else {
        this.err_VXb = 0.0;
      }
      if (initObj.hasOwnProperty('err_VYb')) {
        this.err_VYb = initObj.err_VYb
      }
      else {
        this.err_VYb = 0.0;
      }
      if (initObj.hasOwnProperty('err_VZb')) {
        this.err_VZb = initObj.err_VZb
      }
      else {
        this.err_VZb = 0.0;
      }
      if (initObj.hasOwnProperty('led_fol_vxb')) {
        this.led_fol_vxb = initObj.led_fol_vxb
      }
      else {
        this.led_fol_vxb = 0.0;
      }
      if (initObj.hasOwnProperty('led_fol_vyb')) {
        this.led_fol_vyb = initObj.led_fol_vyb
      }
      else {
        this.led_fol_vyb = 0.0;
      }
      if (initObj.hasOwnProperty('led_fol_vzb')) {
        this.led_fol_vzb = initObj.led_fol_vzb
      }
      else {
        this.led_fol_vzb = 0.0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0.0;
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Formation_control_states
    // Serialize message field [planeID]
    bufferOffset = _serializer.uint16(obj.planeID, buffer, bufferOffset);
    // Serialize message field [sp_ned_vel_x]
    bufferOffset = _serializer.float64(obj.sp_ned_vel_x, buffer, bufferOffset);
    // Serialize message field [sp_ned_vel_y]
    bufferOffset = _serializer.float64(obj.sp_ned_vel_y, buffer, bufferOffset);
    // Serialize message field [sp_ned_vel_z]
    bufferOffset = _serializer.float64(obj.sp_ned_vel_z, buffer, bufferOffset);
    // Serialize message field [sp_latitude]
    bufferOffset = _serializer.float64(obj.sp_latitude, buffer, bufferOffset);
    // Serialize message field [sp_longitude]
    bufferOffset = _serializer.float64(obj.sp_longitude, buffer, bufferOffset);
    // Serialize message field [sp_altitude]
    bufferOffset = _serializer.float64(obj.sp_altitude, buffer, bufferOffset);
    // Serialize message field [sp_relative_alt]
    bufferOffset = _serializer.float64(obj.sp_relative_alt, buffer, bufferOffset);
    // Serialize message field [sp_air_speed]
    bufferOffset = _serializer.float64(obj.sp_air_speed, buffer, bufferOffset);
    // Serialize message field [sp_ground_speed]
    bufferOffset = _serializer.float64(obj.sp_ground_speed, buffer, bufferOffset);
    // Serialize message field [err_P_N]
    bufferOffset = _serializer.float64(obj.err_P_N, buffer, bufferOffset);
    // Serialize message field [err_P_E]
    bufferOffset = _serializer.float64(obj.err_P_E, buffer, bufferOffset);
    // Serialize message field [err_P_D]
    bufferOffset = _serializer.float64(obj.err_P_D, buffer, bufferOffset);
    // Serialize message field [err_P_NE]
    bufferOffset = _serializer.float64(obj.err_P_NE, buffer, bufferOffset);
    // Serialize message field [err_PXk]
    bufferOffset = _serializer.float64(obj.err_PXk, buffer, bufferOffset);
    // Serialize message field [err_PYk]
    bufferOffset = _serializer.float64(obj.err_PYk, buffer, bufferOffset);
    // Serialize message field [err_PZk]
    bufferOffset = _serializer.float64(obj.err_PZk, buffer, bufferOffset);
    // Serialize message field [led_fol_vxk]
    bufferOffset = _serializer.float64(obj.led_fol_vxk, buffer, bufferOffset);
    // Serialize message field [led_fol_vyk]
    bufferOffset = _serializer.float64(obj.led_fol_vyk, buffer, bufferOffset);
    // Serialize message field [led_fol_vzk]
    bufferOffset = _serializer.float64(obj.led_fol_vzk, buffer, bufferOffset);
    // Serialize message field [err_VXk]
    bufferOffset = _serializer.float64(obj.err_VXk, buffer, bufferOffset);
    // Serialize message field [err_VYk]
    bufferOffset = _serializer.float64(obj.err_VYk, buffer, bufferOffset);
    // Serialize message field [err_VZk]
    bufferOffset = _serializer.float64(obj.err_VZk, buffer, bufferOffset);
    // Serialize message field [led_fol_eta]
    bufferOffset = _serializer.float64(obj.led_fol_eta, buffer, bufferOffset);
    // Serialize message field [eta_deg]
    bufferOffset = _serializer.float64(obj.eta_deg, buffer, bufferOffset);
    // Serialize message field [err_PXb]
    bufferOffset = _serializer.float64(obj.err_PXb, buffer, bufferOffset);
    // Serialize message field [err_PYb]
    bufferOffset = _serializer.float64(obj.err_PYb, buffer, bufferOffset);
    // Serialize message field [err_PZb]
    bufferOffset = _serializer.float64(obj.err_PZb, buffer, bufferOffset);
    // Serialize message field [err_VXb]
    bufferOffset = _serializer.float64(obj.err_VXb, buffer, bufferOffset);
    // Serialize message field [err_VYb]
    bufferOffset = _serializer.float64(obj.err_VYb, buffer, bufferOffset);
    // Serialize message field [err_VZb]
    bufferOffset = _serializer.float64(obj.err_VZb, buffer, bufferOffset);
    // Serialize message field [led_fol_vxb]
    bufferOffset = _serializer.float64(obj.led_fol_vxb, buffer, bufferOffset);
    // Serialize message field [led_fol_vyb]
    bufferOffset = _serializer.float64(obj.led_fol_vyb, buffer, bufferOffset);
    // Serialize message field [led_fol_vzb]
    bufferOffset = _serializer.float64(obj.led_fol_vzb, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.float64(obj.b, buffer, bufferOffset);
    // Serialize message field [c]
    bufferOffset = _serializer.float64(obj.c, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Formation_control_states
    let len;
    let data = new Formation_control_states(null);
    // Deserialize message field [planeID]
    data.planeID = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sp_ned_vel_x]
    data.sp_ned_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sp_ned_vel_y]
    data.sp_ned_vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sp_ned_vel_z]
    data.sp_ned_vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sp_latitude]
    data.sp_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sp_longitude]
    data.sp_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sp_altitude]
    data.sp_altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sp_relative_alt]
    data.sp_relative_alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sp_air_speed]
    data.sp_air_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sp_ground_speed]
    data.sp_ground_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_P_N]
    data.err_P_N = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_P_E]
    data.err_P_E = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_P_D]
    data.err_P_D = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_P_NE]
    data.err_P_NE = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_PXk]
    data.err_PXk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_PYk]
    data.err_PYk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_PZk]
    data.err_PZk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [led_fol_vxk]
    data.led_fol_vxk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [led_fol_vyk]
    data.led_fol_vyk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [led_fol_vzk]
    data.led_fol_vzk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_VXk]
    data.err_VXk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_VYk]
    data.err_VYk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_VZk]
    data.err_VZk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [led_fol_eta]
    data.led_fol_eta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [eta_deg]
    data.eta_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_PXb]
    data.err_PXb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_PYb]
    data.err_PYb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_PZb]
    data.err_PZb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_VXb]
    data.err_VXb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_VYb]
    data.err_VYb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_VZb]
    data.err_VZb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [led_fol_vxb]
    data.led_fol_vxb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [led_fol_vyb]
    data.led_fol_vyb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [led_fol_vzb]
    data.led_fol_vzb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c]
    data.c = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 290;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hust_fw_formation_control/Formation_control_states';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'add6e7cf7cfc8236a1710dcddb2c01ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #这里也要记得写上planeid，后面得向地面站发送哈！！！！
    uint16 planeID
    
    #####################################编队控制器期望状态###############################
    
    #编队期望ned速度
    float64 sp_ned_vel_x
    float64 sp_ned_vel_y
    float64 sp_ned_vel_z
    
    #编队期望经纬度
    float64 sp_latitude
    float64 sp_longitude
    float64 sp_altitude
    float64 sp_relative_alt
    
    #编队期望空速地速
    float64 sp_air_speed
    float64 sp_ground_speed
    
    #####################################编队控制器误差状态###############################
    
    #NED下的位置误差
    float64 err_P_N
    float64 err_P_E
    float64 err_P_D
    float64 err_P_NE
    
    #航迹轴系位置误差<与自己期望>
    float64 err_PXk
    float64 err_PYk
    float64 err_PZk
    
    #航迹系速度误差<与领机>
    float64 led_fol_vxk
    float64 led_fol_vyk
    float64 led_fol_vzk
    
    #航迹轴系速度误差<与自己期望>
    float64 err_VXk
    float64 err_VYk
    float64 err_VZk
    
    #角度误差
    float64 led_fol_eta
    float64 eta_deg
    
    #体轴系位置误差<与自己期望>
    float64 err_PXb
    float64 err_PYb
    float64 err_PZb
    
    #体轴系速度误差<与自己期望>
    float64 err_VXb
    float64 err_VYb
    float64 err_VZb
    
    #体轴系速度误差<与领机>
    float64 led_fol_vxb
    float64 led_fol_vyb
    float64 led_fol_vzb
    
    float64 a
    float64 b
    float64 c
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Formation_control_states(null);
    if (msg.planeID !== undefined) {
      resolved.planeID = msg.planeID;
    }
    else {
      resolved.planeID = 0
    }

    if (msg.sp_ned_vel_x !== undefined) {
      resolved.sp_ned_vel_x = msg.sp_ned_vel_x;
    }
    else {
      resolved.sp_ned_vel_x = 0.0
    }

    if (msg.sp_ned_vel_y !== undefined) {
      resolved.sp_ned_vel_y = msg.sp_ned_vel_y;
    }
    else {
      resolved.sp_ned_vel_y = 0.0
    }

    if (msg.sp_ned_vel_z !== undefined) {
      resolved.sp_ned_vel_z = msg.sp_ned_vel_z;
    }
    else {
      resolved.sp_ned_vel_z = 0.0
    }

    if (msg.sp_latitude !== undefined) {
      resolved.sp_latitude = msg.sp_latitude;
    }
    else {
      resolved.sp_latitude = 0.0
    }

    if (msg.sp_longitude !== undefined) {
      resolved.sp_longitude = msg.sp_longitude;
    }
    else {
      resolved.sp_longitude = 0.0
    }

    if (msg.sp_altitude !== undefined) {
      resolved.sp_altitude = msg.sp_altitude;
    }
    else {
      resolved.sp_altitude = 0.0
    }

    if (msg.sp_relative_alt !== undefined) {
      resolved.sp_relative_alt = msg.sp_relative_alt;
    }
    else {
      resolved.sp_relative_alt = 0.0
    }

    if (msg.sp_air_speed !== undefined) {
      resolved.sp_air_speed = msg.sp_air_speed;
    }
    else {
      resolved.sp_air_speed = 0.0
    }

    if (msg.sp_ground_speed !== undefined) {
      resolved.sp_ground_speed = msg.sp_ground_speed;
    }
    else {
      resolved.sp_ground_speed = 0.0
    }

    if (msg.err_P_N !== undefined) {
      resolved.err_P_N = msg.err_P_N;
    }
    else {
      resolved.err_P_N = 0.0
    }

    if (msg.err_P_E !== undefined) {
      resolved.err_P_E = msg.err_P_E;
    }
    else {
      resolved.err_P_E = 0.0
    }

    if (msg.err_P_D !== undefined) {
      resolved.err_P_D = msg.err_P_D;
    }
    else {
      resolved.err_P_D = 0.0
    }

    if (msg.err_P_NE !== undefined) {
      resolved.err_P_NE = msg.err_P_NE;
    }
    else {
      resolved.err_P_NE = 0.0
    }

    if (msg.err_PXk !== undefined) {
      resolved.err_PXk = msg.err_PXk;
    }
    else {
      resolved.err_PXk = 0.0
    }

    if (msg.err_PYk !== undefined) {
      resolved.err_PYk = msg.err_PYk;
    }
    else {
      resolved.err_PYk = 0.0
    }

    if (msg.err_PZk !== undefined) {
      resolved.err_PZk = msg.err_PZk;
    }
    else {
      resolved.err_PZk = 0.0
    }

    if (msg.led_fol_vxk !== undefined) {
      resolved.led_fol_vxk = msg.led_fol_vxk;
    }
    else {
      resolved.led_fol_vxk = 0.0
    }

    if (msg.led_fol_vyk !== undefined) {
      resolved.led_fol_vyk = msg.led_fol_vyk;
    }
    else {
      resolved.led_fol_vyk = 0.0
    }

    if (msg.led_fol_vzk !== undefined) {
      resolved.led_fol_vzk = msg.led_fol_vzk;
    }
    else {
      resolved.led_fol_vzk = 0.0
    }

    if (msg.err_VXk !== undefined) {
      resolved.err_VXk = msg.err_VXk;
    }
    else {
      resolved.err_VXk = 0.0
    }

    if (msg.err_VYk !== undefined) {
      resolved.err_VYk = msg.err_VYk;
    }
    else {
      resolved.err_VYk = 0.0
    }

    if (msg.err_VZk !== undefined) {
      resolved.err_VZk = msg.err_VZk;
    }
    else {
      resolved.err_VZk = 0.0
    }

    if (msg.led_fol_eta !== undefined) {
      resolved.led_fol_eta = msg.led_fol_eta;
    }
    else {
      resolved.led_fol_eta = 0.0
    }

    if (msg.eta_deg !== undefined) {
      resolved.eta_deg = msg.eta_deg;
    }
    else {
      resolved.eta_deg = 0.0
    }

    if (msg.err_PXb !== undefined) {
      resolved.err_PXb = msg.err_PXb;
    }
    else {
      resolved.err_PXb = 0.0
    }

    if (msg.err_PYb !== undefined) {
      resolved.err_PYb = msg.err_PYb;
    }
    else {
      resolved.err_PYb = 0.0
    }

    if (msg.err_PZb !== undefined) {
      resolved.err_PZb = msg.err_PZb;
    }
    else {
      resolved.err_PZb = 0.0
    }

    if (msg.err_VXb !== undefined) {
      resolved.err_VXb = msg.err_VXb;
    }
    else {
      resolved.err_VXb = 0.0
    }

    if (msg.err_VYb !== undefined) {
      resolved.err_VYb = msg.err_VYb;
    }
    else {
      resolved.err_VYb = 0.0
    }

    if (msg.err_VZb !== undefined) {
      resolved.err_VZb = msg.err_VZb;
    }
    else {
      resolved.err_VZb = 0.0
    }

    if (msg.led_fol_vxb !== undefined) {
      resolved.led_fol_vxb = msg.led_fol_vxb;
    }
    else {
      resolved.led_fol_vxb = 0.0
    }

    if (msg.led_fol_vyb !== undefined) {
      resolved.led_fol_vyb = msg.led_fol_vyb;
    }
    else {
      resolved.led_fol_vyb = 0.0
    }

    if (msg.led_fol_vzb !== undefined) {
      resolved.led_fol_vzb = msg.led_fol_vzb;
    }
    else {
      resolved.led_fol_vzb = 0.0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0
    }

    if (msg.c !== undefined) {
      resolved.c = msg.c;
    }
    else {
      resolved.c = 0.0
    }

    return resolved;
    }
};

module.exports = Formation_control_states;
