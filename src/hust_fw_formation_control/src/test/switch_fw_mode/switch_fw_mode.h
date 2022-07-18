/**
 * @file switch_fw_mode.h
 * @author hust (xydu@hust.edu.cn)
 * @brief 切换飞控模式
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#ifndef _SWITCH_FW_MODE_H
#define _SWITCH_FW_MODE_H

#include <iostream>
#include <ros/ros.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/State.h>
#include "hust_fw_formation_control/Fw_cmd_mode.h"
// bit库
#include "../../fixed_wing_lib/syslib.hpp"

#define SWITCH_FW_MODE_INFO(a) cout << "[SWITCH_FW_MODE_INFO]:" << a << endl

class SwitchFwMode
{
public:
    void set_planeID(int id);
    void run();

private:
    int _planeID{1};
    std::string _uavID{"uav1/"};

    ros::NodeHandle _nh;
    ros::Time _begin_time;

    mavros_msgs::State _current_state; //无人机当前状态[包含上锁状态 模式] (从飞控中读取)
    mavros_msgs::SetMode _mode_cmd;    //模式容器
    mavros_msgs::CommandBool _arm_cmd;
    hust_fw_formation_control::Fw_cmd_mode task_cmd_mode; //任务模式切换

    mavros_msgs::State my_current_state[5];
    mavros_msgs::SetMode my_mode_cmd[5]; /*  模式容器 */
    mavros_msgs::CommandBool my_arm_cmd[5];
    hust_fw_formation_control::Fw_cmd_mode my_task_cmd_mode[5]; /* 任务模式切换 */

    int _times_out = 50;    //次数限制
    int _counters = 0;      //计数器
    bool _out_flag = false; //退出标志位

    float get_ros_time(ros::Time begin);

    void state_cb(const mavros_msgs::State::ConstPtr &msg)
    {
        _current_state = *msg;
    }
};

#endif
