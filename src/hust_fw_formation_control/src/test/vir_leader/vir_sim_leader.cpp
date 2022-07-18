/**
 * @file vir_sim_leader.cpp
 * @author hust
 * @brief 虚拟领导者库文件
 *
 * @copyright Copyright (c) 2022
 *
 */
#include "vir_sim_leader.h"

void VirLeader::set_planeID(int id)
{
    _planeID = id;
    switch (_planeID)
    {
    case 0:
        _uavID = "uav0/";
    case 1:
        _uavID = "uav1/";
        break;
    case 2:
        _uavID = "uav2/";
        break;
    case 3:
        _uavID = "uav3/";
        break;
    }
}

void VirLeader::run(int argc, char **argv)
{
    ros::Rate rate(10.0);
    _begin_time = ros::Time::now(); /* 记录启控时间 */
    ros_sub_pub();                  //继承而来，只是发布消息

    while (ros::ok())
    {
        _current_time = get_ros_time(_begin_time);
        VIR_SIM_LEADER_INFO("当前时间：[" << _current_time << "]s");

        _leaderstates.airspeed = _fwstates.air_speed;
        _leaderstates.altitude = _fwstates.altitude;
        _leaderstates.latitude = _fwstates.latitude;
        _leaderstates.longitude = _fwstates.longitude;
        _leaderstates.relative_alt = _fwstates.relative_alt;
        _leaderstates.ned_vel_x = _fwstates.ned_vel_x;
        _leaderstates.ned_vel_y = _fwstates.ned_vel_y;
        _leaderstates.ned_vel_z = _fwstates.ned_vel_z;
        _leaderstates.global_vel_x = _fwstates.global_vel_x;
        _leaderstates.global_vel_y = _fwstates.global_vel_y;
        _leaderstates.global_vel_z = _fwstates.global_vel_z;
        cout << "global_vel_x:" << _fwstates.global_vel_x << endl;
        cout << "global_vel_y:" << _fwstates.global_vel_y << endl;
        cout << "global_vel_z:" << _fwstates.altitude << endl;

        _vir_leader_pub.publish(_leaderstates);

        ros::spinOnce(); //挂起一段时间，保证周期的速度
        rate.sleep();
    }
}

void VirLeader::ros_sub_pub()
{
    /* 【发布】领机UAV0发布 */
    _vir_leader_pub = _nh.advertise<hust_fw_formation_control::Leaderstates>(
        add2str(_uavID, "hust_fw_formation_control/leader_states"), 10);

    /* 【订阅】UAV0当前状态 */
    _fw_states_sub = _nh.subscribe<hust_fw_formation_control::FWstates>(
        add2str(_uavID, "hust_fw_formation_control/fw_states"), 10,
        &VirLeader::fw_state_cb, this);
}

void VirLeader::fw_state_cb(const hust_fw_formation_control::FWstates::ConstPtr &msg)
{
    _fwstates = *msg;
}

float VirLeader::get_ros_time(ros::Time begin)
{
    ros::Time time_now = ros::Time::now();
    float currTimeSec = time_now.sec - begin.sec;
    float currTimenSec = time_now.nsec / 1e9 - begin.nsec / 1e9;
    return (currTimeSec + currTimenSec);
}