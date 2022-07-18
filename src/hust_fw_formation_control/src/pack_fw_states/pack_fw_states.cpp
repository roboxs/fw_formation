/**
 * @file pack_fw_states.cpp
 * @author hust
 * @brief
 * 1.将来自mavros的消息坐标变换后打包成Fw_state消息
 * 2.将需要发送给飞机的四通道控制量消息坐标变化解包，发给mavros
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "pack_fw_states.h"

void PackFwStates::set_planeID(int id)
{
    _planeID = id;
    switch (id)
    {
    case 0:
        _uavID = "uav0/"; /* 领机 */
        break;
    case 1:
        _uavID = "uav1/"; /*从机*/
        break;
    case 2:
        _uavID = "uav2/"; /*从机*/
        break;
    case 3:
        _uavID = "uav3/"; /*从机*/
        break;
    case 4:
        _uavID = "uav4/"; /*从机*/
        break;
    }
}

void PackFwStates::run(int argc, char **argv)
{
    ros::Rate rate(50.0); // 50HZ

    ros_sub_and_pub();
    PACK_FW_STATES_INFO("打包开始");

    long begin_time = get_sys_time();

    /**************************************************************************/
    while (ros::ok())
    {

        _print_counter++;

        if (_print_counter >= 100)
        {
            PACK_FW_STATES_INFO("本机ID:" << _planeID);
            PACK_FW_STATES_INFO(
                "历时:" << fixed << setprecision(5)
                        << double(get_time_from_begin(begin_time)) / 1000 << " 秒");
            _print_counter = 0;
        }

        //一直在向mavros发，保持px4的链接不断
        pack_fw_states();
        msg_to_mavros();
        srv_to_mavros();

        ros::spinOnce(); //挂起一段时间，保证周期的速度
        rate.sleep();
    }
    PACK_FW_STATES_INFO("打包退出");
}

void PackFwStates::ros_sub_and_pub()
{
    //##########################################订阅mavros消息+控制器指令cmd###################################################//
    _fixed_wing_states_sub 
        = _nh.subscribe<mavros_msgs::State>
          (add2str(_uavID, "mavros/state"), 10, &_FIXED_WING_SUB_PUB::state_cb,
           &_fixed_wing_sub_pub);
    
    // 【订阅】无人机imu信息，
    _fixed_wing_imu_sub                   
        = _nh.subscribe<sensor_msgs::Imu> 
            (add2str(_uavID, "mavros/imu/data"), 10, &_FIXED_WING_SUB_PUB::imu_cb,
            &_fixed_wing_sub_pub);
    // 【订阅】无人机gps位置
    _fixed_wing_global_position_form_px4_sub    
        = _nh.subscribe<sensor_msgs::NavSatFix> 
            (add2str(_uavID, "mavros/global_position/global"), 10,
            &_FIXED_WING_SUB_PUB::global_position_form_px4_cb,
            &_fixed_wing_sub_pub);

    //【订阅】无人机gps相对alt
    _fixed_wing_global_rel_alt_from_px4_sub 
        = _nh.subscribe<std_msgs::Float64>  
            (add2str(_uavID, "mavros/global_position/rel_alt"), 10,
            &_FIXED_WING_SUB_PUB::fixed_wing_global_rel_alt_from_px4_cb,
            &_fixed_wing_sub_pub);

    // 【订阅】无人机ump位置
    _fixed_wing_umt_position_from_px4_sub   
        = _nh.subscribe<nav_msgs::Odometry> 
            (add2str(_uavID, "mavros/global_position/local"), 10,
            &_FIXED_WING_SUB_PUB::umt_position_from_px4_cb, &_fixed_wing_sub_pub);

    // 【订阅】无人机gps三向速度
    _fixed_wing_velocity_global_fused_from_px4_sub   
        = _nh.subscribe<geometry_msgs::TwistStamped> 
            (add2str(_uavID, "mavros/global_position/raw/gps_vel"), 10,
            &_FIXED_WING_SUB_PUB::velocity_global_fused_from_px4_cb,
            &_fixed_wing_sub_pub);

    // 【订阅】无人机ned位置
    _fixed_wing_local_position_from_px4             
        = _nh.subscribe<geometry_msgs::PoseStamped> 
            (add2str(_uavID, "mavros/local_position/pose"), 10,
            &_FIXED_WING_SUB_PUB::local_position_from_px4_cb, &_fixed_wing_sub_pub);

    // 【订阅】无人机ned三向速度
    _fixed_wing_velocity_ned_fused_from_px4_sub      
        = _nh.subscribe<geometry_msgs::TwistStamped> 
            (add2str(_uavID, "mavros/local_position/velocity_local"), 10,
            &_FIXED_WING_SUB_PUB::velocity_ned_fused_from_px4_cb,
            &_fixed_wing_sub_pub);

    // 【订阅】无人机ned三向加速度
    _fixed_wing_acc_ned_from_px4_sub                               
        = _nh.subscribe<geometry_msgs::AccelWithCovarianceStamped> 
            (add2str(_uavID, "mavros/local_position/accel"), 10,
            &_FIXED_WING_SUB_PUB::acc_ned_from_px4_cb, &_fixed_wing_sub_pub);

    // 【订阅】无人机ned三向加速度
    _fixed_wing_wind_estimate_from_px4_sub                         
        = _nh.subscribe<geometry_msgs::TwistWithCovarianceStamped> 
            (add2str(_uavID, "mavros/wind_estimation"), 10,
            &_FIXED_WING_SUB_PUB::wind_estimate_from_px4_cb, &_fixed_wing_sub_pub);

    // 【订阅】无人机ned三向加速度
    _fixed_wing_battrey_state_from_px4_sub        
        = _nh.subscribe<sensor_msgs::BatteryState> 
            (add2str(_uavID, "mavros/battery"), 10,
            &_FIXED_WING_SUB_PUB::battrey_state_from_px4_cb, &_fixed_wing_sub_pub);

    // 【订阅】无人机当前航点
    _fixed_wing_waypoints_sub 
        = _nh.subscribe<mavros_msgs::WaypointList> 
            (add2str(_uavID, "mavros/mission/waypoints"), 10,
            &_FIXED_WING_SUB_PUB::waypointlist_from_px4_cb, &_fixed_wing_sub_pub);

    // 【订阅】无人机到达的航点
    _fixed_wing_waypointsreach_sub 
        = _nh.subscribe<mavros_msgs::WaypointReached> 
            (add2str(_uavID, "mavros/mission/reached"), 10,
            &_FIXED_WING_SUB_PUB::waypoints_reached_from_px4_cb,
            &_fixed_wing_sub_pub);
    
    //订阅高度
    _fixed_wing_altitude_from_px4_sub          
        = _nh.subscribe<mavros_msgs::Altitude> 
            (add2str(_uavID, "mavros/altitude"), 10,
            &_FIXED_WING_SUB_PUB::altitude_from_px4_cb, &_fixed_wing_sub_pub);

    //订阅空速、地速
    _fixed_wing_air_ground_speed_from_px4_sub 
        = _nh.subscribe<mavros_msgs::VFR_HUD> 
            (add2str(_uavID, "mavros/vfr_hud"), 10,
            &_FIXED_WING_SUB_PUB::air_ground_speed_from_px4_cb,
            &_fixed_wing_sub_pub);

    //订阅来自上层控制器的四通道控制量
    _fixed_wing_cmd_from_controller_sub
        = _nh.subscribe<hust_fw_formation_control::FWcmd>
            (add2str(_uavID,"hust_fw_formation_control/fw_cmd"), 10,
            &_FIXED_WING_SUB_PUB::cmd_from_controller_cb, &_fixed_wing_sub_pub);
    
    //##########################################发布mavros消息+飞机状态states###################################################//

    _fixed_wing_local_pos_sp_pub = _nh.advertise<mavros_msgs::PositionTarget>(
        add2str(_uavID, "mavros/setpoint_raw/local"), 10);

    _fixed_wing_global_pos_sp_pub =
        _nh.advertise<mavros_msgs::GlobalPositionTarget>(
            add2str(_uavID, "mavros/setpoint_raw/global"), 10);

    _fixed_wing_local_att_sp_pub = _nh.advertise<mavros_msgs::AttitudeTarget>(
        add2str(_uavID, "mavros/setpoint_raw/attitude"), 10);

    _fixed_wing_states_pub = _nh.advertise<hust_fw_formation_control::FWstates>(
            add2str(_uavID,"hust_fw_formation_control/fw_states"), 10);
    
    //##########################################服务###################################################//
    // 服务 修改系统模式
    _set_mode_client = _nh.serviceClient<mavros_msgs::SetMode>(
        add2str(_uavID, "mavros/set_mode"));
}

void PackFwStates::pack_fw_states() {
    //给结构体赋值；更新飞机状态
    //控制模式
    _fixed_wing_sub_pub.fw_states_form_mavros.control_mode =
        _fixed_wing_sub_pub.current_state.mode;

    //以下为GPS信息
    _fixed_wing_sub_pub.fw_states_form_mavros.altitude =
        _fixed_wing_sub_pub.global_position_form_px4.altitude;
    _fixed_wing_sub_pub.fw_states_form_mavros.latitude =
        _fixed_wing_sub_pub.global_position_form_px4.latitude;
    _fixed_wing_sub_pub.fw_states_form_mavros.longitude =
        _fixed_wing_sub_pub.global_position_form_px4.longitude;

    // GPS速度是在ned下的，
    _fixed_wing_sub_pub.fw_states_form_mavros.global_vel_x =
        _fixed_wing_sub_pub.velocity_global_fused_from_px4.twist.linear.y;
    _fixed_wing_sub_pub.fw_states_form_mavros.global_vel_y =
        _fixed_wing_sub_pub.velocity_global_fused_from_px4.twist.linear.x;
    _fixed_wing_sub_pub.fw_states_form_mavros.global_vel_z =
        -_fixed_wing_sub_pub.velocity_global_fused_from_px4.twist.linear.z;
    _fixed_wing_sub_pub.fw_states_form_mavros.relative_alt =
        _fixed_wing_sub_pub.global_rel_alt_from_px4.data;

    //以下为机体系和地面系的夹角，姿态角
    _fixed_wing_sub_pub.fw_states_form_mavros.roll_angle =
        _fixed_wing_sub_pub.att_angle_Euler[0];
    _fixed_wing_sub_pub.fw_states_form_mavros.pitch_angle =
        -_fixed_wing_sub_pub.att_angle_Euler[1]; //添加负号转换到px4的系

    if (-_fixed_wing_sub_pub.att_angle_Euler[2] + deg_2_rad(90.0) > 0)
        _fixed_wing_sub_pub.fw_states_form_mavros.yaw_angle =
            -_fixed_wing_sub_pub.att_angle_Euler[2] +
            deg_2_rad(90.0); //添加符号使增加方向相同，而且领先于px4 90°
    else
        _fixed_wing_sub_pub.fw_states_form_mavros.yaw_angle =
            -_fixed_wing_sub_pub.att_angle_Euler[2] + deg_2_rad(90.0) +
            deg_2_rad(360.0);

    //期望姿态角
    _fixed_wing_sub_pub.fw_states_form_mavros.roll_traget_angle =
        _fixed_wing_sub_pub.cmd_from_controller.roll_angle_sp;
    _fixed_wing_sub_pub.fw_states_form_mavros.pitch_traget_angle=
        _fixed_wing_sub_pub.cmd_from_controller.pitch_angle_sp;
    _fixed_wing_sub_pub.fw_states_form_mavros.yaw_traget_angle=
        _fixed_wing_sub_pub.cmd_from_controller.yaw_angle_sp;
        
    //姿态四元数赋值
    _att_angle[0] = _fixed_wing_sub_pub.fw_states_form_mavros.roll_angle;
    _att_angle[1] = _fixed_wing_sub_pub.fw_states_form_mavros.pitch_angle;
    _att_angle[2] = _fixed_wing_sub_pub.fw_states_form_mavros.yaw_angle;
    euler_2_quaternion(_att_angle, _att_quat);
    _fixed_wing_sub_pub.fw_states_form_mavros.att_quater.w = _att_quat[0];
    _fixed_wing_sub_pub.fw_states_form_mavros.att_quater.x = _att_quat[1];
    _fixed_wing_sub_pub.fw_states_form_mavros.att_quater.y = _att_quat[2];
    _fixed_wing_sub_pub.fw_states_form_mavros.att_quater.z = _att_quat[3];

    //以下为ned坐标系下的位置，速度
    _fixed_wing_sub_pub.fw_states_form_mavros.ned_pos_x =
        _fixed_wing_sub_pub.local_position_from_px4.pose.position.y;
    _fixed_wing_sub_pub.fw_states_form_mavros.ned_pos_y =
        _fixed_wing_sub_pub.local_position_from_px4.pose.position.x;
    _fixed_wing_sub_pub.fw_states_form_mavros.ned_pos_z =
        -_fixed_wing_sub_pub.local_position_from_px4.pose.position.z;

    _fixed_wing_sub_pub.fw_states_form_mavros.ned_vel_x =
        _fixed_wing_sub_pub.velocity_ned_fused_from_px4.twist.linear.y;
    _fixed_wing_sub_pub.fw_states_form_mavros.ned_vel_y =
        _fixed_wing_sub_pub.velocity_ned_fused_from_px4.twist.linear.x;
    _fixed_wing_sub_pub.fw_states_form_mavros.ned_vel_z =
        -_fixed_wing_sub_pub.velocity_ned_fused_from_px4.twist.linear.z;

    //以下为体轴系加速度，体轴系当中的加速度是符合px4机体系的定义的
    _fixed_wing_sub_pub.fw_states_form_mavros.body_acc_x =
        _fixed_wing_sub_pub.imu.linear_acceleration.x;
    _fixed_wing_sub_pub.fw_states_form_mavros.body_acc_y =
        _fixed_wing_sub_pub.imu.linear_acceleration.y;
    _fixed_wing_sub_pub.fw_states_form_mavros.body_acc_z =
        _fixed_wing_sub_pub.imu.linear_acceleration.z;

    _fixed_wing_sub_pub.fw_states_form_mavros.body_acc.x =
        _fixed_wing_sub_pub.imu.linear_acceleration.x;
    _fixed_wing_sub_pub.fw_states_form_mavros.body_acc.y =
        _fixed_wing_sub_pub.imu.linear_acceleration.y;
    _fixed_wing_sub_pub.fw_states_form_mavros.body_acc.z =
        _fixed_wing_sub_pub.imu.linear_acceleration.z;

    //以下来自altitude
    _fixed_wing_sub_pub.fw_states_form_mavros.relative_hight =
        _fixed_wing_sub_pub.altitude_from_px4.relative;
    _fixed_wing_sub_pub.fw_states_form_mavros.ned_altitude =
        _fixed_wing_sub_pub.altitude_from_px4.local;

    //空速和地速
    _fixed_wing_sub_pub.fw_states_form_mavros.air_speed =
        _fixed_wing_sub_pub.air_ground_speed_from_px4.airspeed;
    _fixed_wing_sub_pub.fw_states_form_mavros.ground_speed =
        _fixed_wing_sub_pub.air_ground_speed_from_px4.groundspeed;

    //风估计
    _fixed_wing_sub_pub.fw_states_form_mavros.wind_estimate_x =
        _fixed_wing_sub_pub.wind_estimate_from_px4.twist.twist.linear.y;
    _fixed_wing_sub_pub.fw_states_form_mavros.wind_estimate_y =
        _fixed_wing_sub_pub.wind_estimate_from_px4.twist.twist.linear.x;
    _fixed_wing_sub_pub.fw_states_form_mavros.wind_estimate_z =
        -_fixed_wing_sub_pub.wind_estimate_from_px4.twist.twist.linear.z;
    //电池状态
    _fixed_wing_sub_pub.fw_states_form_mavros.battery_current =
        _fixed_wing_sub_pub.battrey_state_from_px4.current;
    _fixed_wing_sub_pub.fw_states_form_mavros.battery_precentage =
        _fixed_wing_sub_pub.battrey_state_from_px4.percentage;
    _fixed_wing_sub_pub.fw_states_form_mavros.battery_voltage =
        _fixed_wing_sub_pub.battrey_state_from_px4.voltage;


    //打包的mavros发布
    _fixed_wing_states_pub.publish(_fixed_wing_sub_pub.fw_states_form_mavros);
}

void PackFwStates::msg_to_mavros() 
{
    //将期望值转换一下坐标系，并转化为四元数
    float angle[3], quat[4];

    angle[0] = _fixed_wing_sub_pub.cmd_from_controller.roll_angle_sp;
    angle[1] = -_fixed_wing_sub_pub.cmd_from_controller.pitch_angle_sp; //-1~1 1->90度  -1->-90
    angle[2] =-_fixed_wing_sub_pub.cmd_from_controller.yaw_angle_sp + deg_2_rad(90.0);
    _cnt++;
    euler_2_quaternion(angle, quat);
    _fixed_wing_sub_pub.att_sp.type_mask =0b0000000; // 1+2+4+64+128 body.rate_x,body.rate_y,body.rate_z thrust..  1表示屏蔽
    _fixed_wing_sub_pub.att_sp.orientation.w = quat[0];
    _fixed_wing_sub_pub.att_sp.orientation.x = quat[1];
    _fixed_wing_sub_pub.att_sp.orientation.y = quat[2];
    _fixed_wing_sub_pub.att_sp.orientation.z = quat[3];
    _fixed_wing_sub_pub.att_sp.thrust = _fixed_wing_sub_pub.cmd_from_controller.throttle_sp;
    _fixed_wing_local_att_sp_pub.publish(_fixed_wing_sub_pub.att_sp);
}

void PackFwStates::srv_to_mavros() 
{
    //设置模式
    _fixed_wing_sub_pub.mode_cmd.request.custom_mode =
        _fixed_wing_sub_pub.cmd_from_controller.cmd_mode;
    _set_mode_client.call(_fixed_wing_sub_pub.mode_cmd);
}
