/**
 * @file vir_sim_leader.h
 * @author hust
 * @brief 虚拟领导者库文件
 *
 * @copyright Copyright (c) 2022
 *
 */

#ifndef _VIR_SIM_LEADER_H
#define _VIR_SIM_LEADER_H

#include <iostream>
#include <ros/ros.h>
#include "hust_fw_formation_control/Leaderstates.h"
#include "hust_fw_formation_control/FWstates.h"
//bit库
#include "../../fixed_wing_lib/syslib.hpp"

#define VIR_SIM_LEADER_INFO(a) cout<<"[]:"<<a<<endl


class VirLeader
{
public:
    void run(int argc, char **argv);
    void set_planeID(int id);/* 注意，此处是领机的id，一般设置为0 */
private:
    int _planeID{0};
    std::string _uavID{"uav0/"};

    ros::Time _begin_time;
    float _current_time;

    ros::NodeHandle _nh;
    ros::Publisher _vir_leader_pub;
    ros::Subscriber _fw_states_sub; 

    hust_fw_formation_control::Leaderstates _leaderstates; /*//即将要发布的领机的状态*/
    hust_fw_formation_control::FWstates _fwstates;         /*//自定义--飞机打包的全部状态*/


    void ros_sub_pub();
    void fw_state_cb(const hust_fw_formation_control::FWstates::ConstPtr &msg);
    float get_ros_time(ros::Time begin);
};

#endif
