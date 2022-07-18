/**
 * @file switch_fw_mode.cpp
 * @author hust
 * @brief 切换飞控模式
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "switch_fw_mode.h"

/**
 * @Input: int
 * @Output:
 * @Description: 设定当前飞机的ID
 */
void SwitchFwMode::set_planeID(int id)
{
    _planeID = id;
    switch (_planeID)
    {
    case 1:
        _uavID = "uav1/";
        break;
    case 2:
        _uavID = "uav2/";
        break;
    case 3:
        _uavID = "uav3/";
        break;
    case 4:
        _uavID = "uav4/";
        break;
    }
}

void SwitchFwMode::run()
{
    _begin_time = ros::Time::now();
    ros::Rate rate(5.0);

    /* 【订阅】无人机当前状态 */
    ros::Subscriber state_sub = _nh.subscribe<mavros_msgs::State>(
        add2str(_uavID, "mavros/state"), 10, &SwitchFwMode::state_cb, this);

    /* 【发布】编队控制器模式 */
    ros::Publisher task_cmd_mode_pub =
        _nh.advertise<hust_fw_formation_control::Fw_cmd_mode>(
            add2str(_uavID, "hust_fw_formation_control/fw_cmd_mode"), 10);

    /* 【服务】 修改锁定状态 */
    ros::ServiceClient arm_client =
        _nh.serviceClient<mavros_msgs::CommandBool>(add2str(_uavID, "mavros/cmd/arming"));

    /* 【服务】 修改系统模式 */
    ros::ServiceClient set_mode_client =
        _nh.serviceClient<mavros_msgs::SetMode>(add2str(_uavID, "mavros/set_mode"));

    ros::Publisher my_task_cmd_mode_pub[5];
    ros::ServiceClient my_set_mode_client[5];
    ros::ServiceClient my_arm_client[5];
    ros::Subscriber my_state_sub[5];
    for (int i = 1; i < 5; i++)
    {
        my_task_cmd_mode_pub[i] = _nh.advertise<hust_fw_formation_control::Fw_cmd_mode>("uav" + std::to_string(i) + "/hust_fw_formation_control/fw_cmd_mode", 10);
        my_set_mode_client[i] = _nh.serviceClient<mavros_msgs::SetMode>("uav" + std::to_string(i) + "/mavros/set_mode");
        my_arm_client[i] = _nh.serviceClient<mavros_msgs::CommandBool>("uav" + std::to_string(i) + "/mavros/cmd/arming");
        my_state_sub[i] = _nh.subscribe<mavros_msgs::State>("uav" + std::to_string(i) + "/mavros/state", 10, &SwitchFwMode::state_cb, this);
    }
    while (ros::ok() && (!_out_flag))
    {
        float current_time = get_ros_time(_begin_time); /* 当前时间 */

        cout << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>SWITCH_FW_MODE<<<<<<<<<<<<<<<<<<<<<<<<<<" << endl;
        SWITCH_FW_MODE_INFO("本机ID:" << _planeID);
        SWITCH_FW_MODE_INFO("当前时刻：" << current_time);
        SWITCH_FW_MODE_INFO("更换模式:0 arm, 1 offboard_takeoff, 2 offboard_formation, 3 offboard_mission, 4 offboard_land, 5 offboard_idel,6 switch_shape, 999 protect");
        SWITCH_FW_MODE_INFO("更换模式:11 auto.take_off, 12 auto.mission, 13 auto.land, 14 out");

        int mode_type = 0; /* 模式类型 */
        int formation_shape = 0;
        cin >> mode_type;

        switch (mode_type)
        {
        case 0:
            for (int i = 1; i < 5; i++)
            {
                my_arm_cmd[i].request.value = true;
                my_arm_client[i].call(my_arm_cmd[i]);
            }
            break;
        case 1:
            for (int i = 1; i < 5; i++)
            {
                my_mode_cmd[i].request.custom_mode = "OFFBOARD";
                my_task_cmd_mode[i].need_take_off = true;
                my_task_cmd_mode[i].need_formation = false;
                my_task_cmd_mode[i].need_mission = false;
                my_task_cmd_mode[i].need_land = false;
                my_task_cmd_mode[i].need_idel = false;
                my_task_cmd_mode[i].need_protected = false;
                my_task_cmd_mode_pub[i].publish(my_task_cmd_mode[i]);
            }
            break;
        case 2:
            for (int i = 1; i < 5; i++)
            {
                my_mode_cmd[i].request.custom_mode = "OFFBOARD";
                my_task_cmd_mode[i].need_take_off = false;
                my_task_cmd_mode[i].need_formation = true;
                my_task_cmd_mode[i].need_mission = false;
                my_task_cmd_mode[i].need_land = false;
                my_task_cmd_mode[i].need_idel = false;
                my_task_cmd_mode[i].need_protected = false;
                my_task_cmd_mode_pub[i].publish(my_task_cmd_mode[i]);
            }
            break;
        case 3:
            _mode_cmd.request.custom_mode = "OFFBOARD";
            task_cmd_mode.need_take_off = false; /*need_mission*/
            task_cmd_mode.need_formation = false;
            task_cmd_mode.need_mission = true;
            task_cmd_mode.need_land = false;
            task_cmd_mode.need_idel = false;
            task_cmd_mode.need_protected = false;
            task_cmd_mode_pub.publish(task_cmd_mode);
            break;
        case 4:
            _mode_cmd.request.custom_mode = "OFFBOARD";
            task_cmd_mode.need_take_off = false; /*need_land*/
            task_cmd_mode.need_formation = false;
            task_cmd_mode.need_mission = false;
            task_cmd_mode.need_land = true;
            task_cmd_mode.need_idel = false;
            task_cmd_mode.need_protected = false;
            task_cmd_mode_pub.publish(task_cmd_mode);
            break;
        case 5:
            _mode_cmd.request.custom_mode = "OFFBOARD";
            task_cmd_mode.need_take_off = false; /*need_idel*/
            task_cmd_mode.need_formation = false;
            task_cmd_mode.need_mission = false;
            task_cmd_mode.need_land = false;
            task_cmd_mode.need_idel = true;
            task_cmd_mode.need_protected = false;
            task_cmd_mode_pub.publish(task_cmd_mode);
            break;
        case 6:
            SWITCH_FW_MODE_INFO("选择队形:0 One_column, 1 Triangle, 2 One_row");
            cin >> formation_shape; /*switch_shape*/
            for (int i = 1; i < 5; i++)
            {
                my_task_cmd_mode[i].swarm_shape = formation_shape;
                my_task_cmd_mode_pub[i].publish(my_task_cmd_mode[i]);
            }
            break;
        case 999:
            _mode_cmd.request.custom_mode = "OFFBOARD";
            task_cmd_mode.need_take_off = false; /*need_protected*/
            task_cmd_mode.need_formation = false;
            task_cmd_mode.need_mission = false;
            task_cmd_mode.need_land = false;
            task_cmd_mode.need_idel = false;
            task_cmd_mode.need_protected = true;
            task_cmd_mode_pub.publish(task_cmd_mode);
            break;
        case 11:
            for (int i = 1; i < 5; i++)
            {
                my_mode_cmd[i].request.custom_mode = "AUTO.TAKEOFF";
            }
            break;
        case 12:
            _mode_cmd.request.custom_mode = "AUTO.MISSION"; /*auto.mission*/
            break;
        case 13:
            _mode_cmd.request.custom_mode = "AUTO.LAND"; /*auto.land*/
            break;
        case 14:
            _out_flag = true;
            break;
        }

        /*  如果当前模式与设定模式不一致，切换，（有次数限制） */
        for (int i = 1; i < 5; i++)
        {
            my_set_mode_client[i].call(my_mode_cmd[i]);
        }
        ros::spinOnce();
        rate.sleep();
    }
}

float SwitchFwMode::get_ros_time(ros::Time begin)
{
    ros::Time time_now = ros::Time::now();
    float currTimeSec = time_now.sec - begin.sec;
    float currTimenSec = time_now.nsec / 1e9 - begin.nsec / 1e9;
    return (currTimeSec + currTimenSec);
}
