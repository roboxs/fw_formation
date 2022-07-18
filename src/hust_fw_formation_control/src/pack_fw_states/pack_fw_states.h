/**
 * @file pack_fw_states.h
 * @author hust
 * @brief
 * 1.将来自mavros的消息坐标变换后打包成Fw_state消息
 * 2.将需要发送给飞机的四通道控制量消息坐标变化解包，发给mavros
 *
 * @copyright Copyright (c) 2022
 *
 */

#ifndef _PACK_FW_STATES_H
#define _PACK_FW_STATES_H

#include <iostream>
#include <ros/ros.h>

#include "fixed_wing_sub_pub.hpp"
#include "../fixed_wing_lib/syslib.hpp"

#define PACK_FW_STATES_INFO(a) cout << "[PACK_FW_STATES_INFO]:" << a << endl

class PackFwStates
{
private:
    int _planeID{1};
    std::string _uavID{"uav1/"};
    int _print_counter{0};

    _FIXED_WING_SUB_PUB _fixed_wing_sub_pub;

    ros::NodeHandle _nh;

    ros::Subscriber _fixed_wing_states_sub; //【订阅】无人机当前模式

    ros::Subscriber _fixed_wing_imu_sub; //【订阅】无人机imu信息

    ros::Subscriber _fixed_wing_global_position_form_px4_sub; //【订阅】无人机gps位置

    ros::Subscriber _fixed_wing_global_rel_alt_from_px4_sub; //【订阅】无人机gps相对alt

    ros::Subscriber _fixed_wing_umt_position_from_px4_sub; //【订阅】无人机ump位置

    ros::Subscriber _fixed_wing_velocity_global_fused_from_px4_sub; //【订阅】无人机gps三向速度

    ros::Subscriber _fixed_wing_local_position_from_px4; // 【订阅】无人机ned位置

    ros::Subscriber _fixed_wing_velocity_ned_fused_from_px4_sub; // 【订阅】无人机ned三向速度

    ros::Subscriber _fixed_wing_acc_ned_from_px4_sub; // 【订阅】无人机ned三向加速度

    ros::Subscriber _fixed_wing_wind_estimate_from_px4_sub; // 【订阅】无人机ned三向加速度

    ros::Subscriber _fixed_wing_battrey_state_from_px4_sub; // 【订阅】无人机ned三向加速度

    ros::Subscriber _fixed_wing_waypoints_sub; // 【订阅】无人机当前航点

    ros::Subscriber _fixed_wing_waypointsreach_sub; // 【订阅】无人机到达的航点

    ros::Subscriber _fixed_wing_altitude_from_px4_sub; // 【订阅】无人机的高度

    ros::Subscriber _fixed_wing_air_ground_speed_from_px4_sub; // 【订阅】无人机的空速地速

    ros::Subscriber _fixed_wing_cmd_from_controller_sub;//【订阅】来自上层控制器的四通道控制量

    ros::Publisher _fixed_wing_local_pos_sp_pub;//【发布】

    ros::Publisher _fixed_wing_global_pos_sp_pub;//【发布】

    ros::Publisher _fixed_wing_local_att_sp_pub;//【发布】

    ros::Publisher _fixed_wing_states_pub; //【发布】打包的飞机信息

    ros::ServiceClient _set_mode_client;//【客户端】

    float _att_angle[3], _att_quat[4]; //转换四元数中间量

    int _cnt=0;

    /* 子函数（组） */
    
    void ros_sub_and_pub();
    void pack_fw_states();
    void msg_to_mavros();
    void srv_to_mavros();

public:
    void run(int argc, char **argv);
    void set_planeID(int id);
};

#endif
