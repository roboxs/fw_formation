/**
 * @file TaskMain.cpp
 * @author hust
 * @brief
 * 1.制导环
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "task_main.h"


void TaskMain::set_planeID(int id) {
  _planeID = id;
  switch (_planeID) {
  case 0:
    _uavID = "uav0/";
    break;
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


void TaskMain::run()
{
    ros::Rate rate(50.0);  //设置频率
    _begin_time = ros::Time::now(); /* 记录启控时间 */

    ros_sub_pub();

    input_params();//读取参数

    while (ros::ok())
    {
        /**
        * 任务大循环，根据来自switch_mode的控制指令来进行响应的控制动作
        */
        _current_time = get_ros_time(_begin_time); /*此时刻，只作为纪录，不用于控制*/
        TASK_MAIN_INFO("Time:" << _current_time);
        /*更新飞机状态*/
        update_fwsates();
        
        if (!_fw_cmd_mode.need_take_off &&
            !_fw_cmd_mode.need_formation &&
            !_fw_cmd_mode.need_land &&
            !_fw_cmd_mode.need_idel &&
            _fw_cmd_mode.need_protected&&
            !_fw_cmd_mode.need_mission)
        {
            TASK_MAIN_INFO("保护子程序");
            /**
             * TODO:保护子程序
             */
            // control_protected();//只要这一个
        }
        else if (!_fw_cmd_mode.need_take_off &&
                 !_fw_cmd_mode.need_formation &&
                 !_fw_cmd_mode.need_land &&
                 _fw_cmd_mode.need_idel &&
                 !_fw_cmd_mode.need_protected&&
                 !_fw_cmd_mode.need_mission)
        {
            TASK_MAIN_INFO("空闲子程序");
            /**
             * TODO:空闲子程序
             */
            // fw_current_mode.mode = fixed_wing_formation_control::Fw_current_mode::FW_IN_IDEL;
        }
        else if (!_fw_cmd_mode.need_take_off &&
                 !_fw_cmd_mode.need_formation &&
                 _fw_cmd_mode.need_land &&
                 !_fw_cmd_mode.need_idel &&
                 !_fw_cmd_mode.need_protected&&
                 !_fw_cmd_mode.need_mission)
        {
            TASK_MAIN_INFO("降落子程序");
            /**
                 * TODO:降落子程序
                */
            // control_land();
            // fw_current_mode.mode = fixed_wing_formation_control::Fw_current_mode::FW_IN_LANDING;
        }
        else if (!_fw_cmd_mode.need_take_off &&
                 _fw_cmd_mode.need_formation &&
                 !_fw_cmd_mode.need_land &&
                 !_fw_cmd_mode.need_idel &&
                 !_fw_cmd_mode.need_protected&&
                !_fw_cmd_mode.need_mission)
        {
            TASK_MAIN_INFO("编队子程序");
            /**
                 * TODO:虽然完成了节点参数的输入函数以及各个通路，但是节点的参数并没有加载进来
                */
            control_formation();
            _fw_current_mode.mode = hust_fw_formation_control::Fw_current_mode::FW_IN_FORMATION;
        }
        else if (_fw_cmd_mode.need_take_off &&
                 !_fw_cmd_mode.need_formation &&
                 !_fw_cmd_mode.need_land &&
                 !_fw_cmd_mode.need_idel &&
                 !_fw_cmd_mode.need_protected&&
                 !_fw_cmd_mode.need_mission)
        {

            // TASK_MAIN_INFO("起飞子程序");
            /**
                 * TODO:起飞子程序
                */
            control_takeoff();
        }
        else if (!_fw_cmd_mode.need_take_off &&
                 !_fw_cmd_mode.need_formation &&
                 !_fw_cmd_mode.need_land &&
                 !_fw_cmd_mode.need_idel &&
                 !_fw_cmd_mode.need_protected&&
                 _fw_cmd_mode.need_mission)
        {
            TASK_MAIN_INFO("任务子程序");
            /**
                 * TODO:任务子程序
                */
        //   control_mission();
        }
        else
        {
            TASK_MAIN_INFO("错误，飞机当前状态有误");
        }

        
        /**
         * 发布飞机当前状态
        */
        // fw_current_mode_pub.publish(fw_current_mode);

        /****通信测试***/
        // test1();//收一个俯仰角指令，然后发布出去

        // fw_state_pub();

        ros::spinOnce();
        rate.sleep();
    }

    return;
}

/**
 * @name: control_formation
 * @description: 编队控制器主函数，完成对于领机从机状态的赋值，传入编队控制器
 * @author: hust
 * @return {*}
 */
void TaskMain::control_formation()
{
    /*1、获取形状*/
    /* 设定编队形状  根据模式切换得到  id,swarm_shape,swarm_size,swarm_num */
    _formation_controller.set_formation_type(_planeID, _fw_cmd_mode.swarm_shape, 20, 3);
    /*2、获取控制器参数 kv_p  kp_p   mix_kp/ki/kd*/
    /* 设定前向编队混合参数 */
    _formation_controller.set_mix_Xerr_params(_mix_Xerr_params);

    /* 设定侧向编队混合参数 */
    _formation_controller.set_mix_Yerr_params(_mix_Yerr_params);

    /* 模式不一致，刚切换进来的话，重置一下控制器，还得做到控制连续！！ */
    if (_fw_col_mode_current != _fw_col_mode_last)
    {
        _formation_controller.reset_formation_controller();
    }

    /*3、更新飞机状态，领机和当前飞机，当前的飞机用指针，更加方便，避免内存浪费*/
    /* 更新飞机状态，领机状态 */
    _formation_controller.update_led_fol_states(&_leader_states, &_thisfw_states);

    /* 4、编队控制 */
    _formation_controller.control_formation();

    /* 5、获得最终控制量 */
    _formation_controller.get_formation_4cmd(_formation_cmd);
    /*6、 获得编队控制期望值   更新 */
    _formation_controller.get_formation_sp(_formation_sp);
    /*7、 获得编队误差信息  更新*/
    _formation_controller.get_formation_error(_formation_error);

    /* 8、控制量赋值 */
    _fw_4cmd.throttle_sp = _formation_cmd.thrust;
    _fw_4cmd.roll_angle_sp = _formation_cmd.roll;
    _fw_4cmd.pitch_angle_sp = _formation_cmd.pitch;
    _fw_4cmd.yaw_angle_sp = _formation_cmd.yaw;
    _fw_cmd_pub.publish(_fw_4cmd); /* 发布四通道控制量  编队控制器得到内环期望的姿态角度 */
    formation_states_pub();      /* 发布编队控制器状态 */

    _fw_col_mode_last = _fw_col_mode_current; /* 上一次模式的纪录 */
}

void TaskMain::ros_sub_pub()
{
    /* 【订阅】固定翼全部状态量 */
    _fw_states_sub = 
        _nh.subscribe 
        <hust_fw_formation_control::FWstates>(
            add2str(_uavID, "hust_fw_formation_control/fw_states"),
            10, &TaskMain::fw_state_cb, this);

    /* 【订阅】领机信息 */
    _leader_states_sub =
        _nh.subscribe 
        <hust_fw_formation_control::Leaderstates>(
            add2str(_leaderID, "hust_fw_formation_control/leader_states"), 10,
            &TaskMain::leader_states_cb, this);

    /* 【订阅】监控节点飞机以及任务状态 */
    _fwmonitor_sub =
        _nh.subscribe 
        <hust_fw_formation_control::Fwmonitor>(
            add2str(_uavID, "hust_fw_formation_control/fwmonitor_flags"), 10,
            &TaskMain::fw_fwmonitor_cb, this);

    /* 【订阅】commander指定模式 */
    _fw_cmd_mode_sub =
        _nh.subscribe 
        <hust_fw_formation_control::Fw_cmd_mode>(
            add2str(_uavID, "hust_fw_formation_control/fw_cmd_mode"), 10,
            &TaskMain::fw_cmd_mode_cb, this);

    /* 【订阅】waypoint */
    _way_points_sub=
        _nh.subscribe
            <mavros_msgs::WaypointList>(
            add2str(_uavID, "mavros/mission/waypoints"), 10,
            &TaskMain::waypoints_cb, this);

    /* 【发布】固定翼四通道控制量 */
    _fw_cmd_pub = _nh.advertise
                <hust_fw_formation_control::FWcmd>(
                    add2str(_uavID, "hust_fw_formation_control/fw_cmd"), 10);

     /* 【发布】编队控制器状态 */
    _formation_control_states_pub =
        _nh.advertise
        <hust_fw_formation_control::Formation_control_states>(
            add2str(_uavID,
                    "hust_fw_formation_control/formation_control_states"), 10);

     /* 【发布】任务进所处阶段 */
    _fw_current_mode_pub =
        _nh.advertise
        <hust_fw_formation_control::Fw_current_mode>(
            add2str(_uavID, "hust_fw_formation_control/fw_current_mode"), 10);
}

void TaskMain::input_params()
{
    //从参数服务中寻找，如果没有的话使用默认值
    /* 速度产生的参数调参 */
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_V_sp/kv_p"      , _mix_Xerr_params.kv_p   , 0.1);//0.2  0.5
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_V_sp/kp_p"      , _mix_Xerr_params.kp_p   , 1.5 );//0.5    1
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_V_sp/mix_kp"    , _mix_Xerr_params.mix_kp ,1.5);//0.4  0.5
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_V_sp/mix_ki"    , _mix_Xerr_params.mix_ki , 0.001);//0  0
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_V_sp/mix_kd"    , _mix_Xerr_params.mix_kd , 0.1);//0.1  0.1


    /* 滚转角产生的参数调参 */
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_roll_sp/keta_p" , _mix_Yerr_params.keta_p , 0.5);//0.5  0.5
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_roll_sp/kp_p"   , _mix_Yerr_params.kp_p   ,1);//0.2  1
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_roll_sp/mix_kp" , _mix_Yerr_params.mix_kp ,1);//0.4 1
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_roll_sp/mix_ki" , _mix_Yerr_params.mix_ki , 0.001);//0 0.001
    _nh.param<float>("fixwing_formation_control/abs_formation_controller/gen_roll_sp/mix_kd" , _mix_Yerr_params.mix_kd , 0.1);//0.1 0.1



    TASK_MAIN_INFO(_mix_Xerr_params.kv_p  );
    TASK_MAIN_INFO(_mix_Xerr_params.kp_p  );
    TASK_MAIN_INFO(_mix_Xerr_params.mix_kp);
    TASK_MAIN_INFO(_mix_Xerr_params.mix_ki);
    TASK_MAIN_INFO(_mix_Xerr_params.mix_kd);

    TASK_MAIN_INFO(_mix_Yerr_params.keta_p);
    TASK_MAIN_INFO(_mix_Yerr_params.kp_p  );
    TASK_MAIN_INFO(_mix_Yerr_params.mix_kp);
    TASK_MAIN_INFO(_mix_Yerr_params.mix_ki);
    TASK_MAIN_INFO(_mix_Yerr_params.mix_kd);
}

/**
 * @name: update_fwsates
 * @description: 更新本机与邻机飞机状态参数
 * @author: hust
 * @return {*}
 */
void TaskMain::update_fwsates()
{
    _fw_col_mode_current = _fwstates.control_mode;
    /* 领机状态赋值 */
    _leader_states.air_speed = _leaderstates.airspeed;

    _leader_states.altitude = _leaderstates.altitude;
    _leader_states.latitude = _leaderstates.latitude;
    _leader_states.longitude = _leaderstates.longitude;
    _leader_states.relative_alt = _leaderstates.relative_alt;

    _leader_states.global_vel_x = _leaderstates.global_vel_x;
    _leader_states.global_vel_y = _leaderstates.global_vel_y;
    _leader_states.global_vel_z = _leaderstates.global_vel_z;

    _leader_states.ned_vel_x = _leaderstates.ned_vel_x;
    _leader_states.ned_vel_y = _leaderstates.ned_vel_y;
    _leader_states.ned_vel_z = _leaderstates.ned_vel_z;

    _leader_states.pitch_angle = _leaderstates.pitch_angle;
    _leader_states.roll_angle = _leaderstates.roll_angle;
    _leader_states.yaw_angle = _leaderstates.yaw_angle;
    _leader_states.yaw_valid = false; /* 目前来讲，领机的yaw不能直接获得 */

    /* 从机状态赋值 */
    _thisfw_states.flight_mode = _fwstates.control_mode;

    _thisfw_states.air_speed = _fwstates.air_speed;
    _thisfw_states.in_air = _fwstates.in_air;

    _thisfw_states.altitude = _fwstates.altitude;
    _thisfw_states.altitude_lock = true; /* 保证TECS */
    _thisfw_states.in_air = true;        /* 保证tecs */
    _thisfw_states.latitude = _fwstates.latitude;
    _thisfw_states.longitude = _fwstates.longitude;

    _thisfw_states.relative_alt = _fwstates.relative_alt;

    _thisfw_states.ned_vel_x = _fwstates.ned_vel_x;
    _thisfw_states.ned_vel_y = _fwstates.ned_vel_y;
    _thisfw_states.ned_vel_z = _fwstates.ned_vel_z;

    _thisfw_states.global_vel_x = _fwstates.global_vel_x;
    _thisfw_states.global_vel_y = _fwstates.global_vel_y;
    _thisfw_states.global_vel_z = _fwstates.global_vel_z;

    _thisfw_states.ground_speed=_fwstates.ground_speed;
    _thisfw_states.air_speed=_fwstates.air_speed;
    _thisfw_states.pitch_angle = _fwstates.pitch_angle;
    _thisfw_states.roll_angle = _fwstates.roll_angle;
    _thisfw_states.yaw_angle = _fwstates.yaw_angle;
    _thisfw_states.att_quat[0] = _fwstates.att_quater.w;
    _thisfw_states.att_quat[1] = _fwstates.att_quater.x;
    _thisfw_states.att_quat[2] = _fwstates.att_quater.y;
    _thisfw_states.att_quat[3] = _fwstates.att_quater.z;
    quat_2_rotmax(_thisfw_states.att_quat, _thisfw_states.rotmat);

    _thisfw_states.body_acc[0] = _fwstates.body_acc_x;
    _thisfw_states.body_acc[1] = _fwstates.body_acc_y;
    _thisfw_states.body_acc[2] = _fwstates.body_acc_z;
    matrix_plus_vector_3(_thisfw_states.ned_acc, _thisfw_states.rotmat, _thisfw_states.body_acc);

    _thisfw_states.wind_estimate_x = _fwstates.wind_estimate_x;
    _thisfw_states.wind_estimate_y = _fwstates.wind_estimate_y;
    _thisfw_states.wind_estimate_z = _fwstates.wind_estimate_z;
    
    _thisfw_states.relative_hight=_fwstates.relative_hight;
    _formation_control_states.err_PZb = _formation_error.PZb;
}

void TaskMain::formation_states_pub()
{
    _formation_control_states.planeID = _planeID;

    /* 本部分是关于编队的从机的自己与期望值的误差以及领从机偏差的赋值 */
    _formation_control_states.err_P_N = _formation_error.P_N;
    _formation_control_states.err_P_E = _formation_error.P_E;
    _formation_control_states.err_P_D = _formation_error.P_D;
    _formation_control_states.err_P_NE = _formation_error.P_NE;

    _formation_control_states.err_PXb = _formation_error.PXb;
    _formation_control_states.err_PYb = _formation_error.PYb;
    _formation_control_states.err_PZb = _formation_error.PZb;
    _formation_control_states.err_VXb = _formation_error.VXb;
    _formation_control_states.err_VYb = _formation_error.VYb;
    _formation_control_states.err_VZb = _formation_error.VZb;
    _formation_control_states.led_fol_vxb = _formation_error.led_fol_vxb;
    _formation_control_states.led_fol_vyb = _formation_error.led_fol_vyb;
    _formation_control_states.led_fol_vzb = _formation_error.led_fol_vzb;

    _formation_control_states.err_PXk = _formation_error.PXk;
    _formation_control_states.err_PYk = _formation_error.PYk;
    _formation_control_states.err_PZk = _formation_error.PZk;
    _formation_control_states.err_VXk = _formation_error.VXk;
    _formation_control_states.err_VYk = _formation_error.VYk;
    _formation_control_states.err_VZk = _formation_error.VZk;
    _formation_control_states.led_fol_vxk = _formation_error.led_fol_vxk;
    _formation_control_states.led_fol_vyk = _formation_error.led_fol_vyk;
    _formation_control_states.led_fol_vzk = _formation_error.led_fol_vzk;

    _formation_control_states.led_fol_eta = _formation_error.led_fol_eta;
    _formation_control_states.eta_deg = rad_2_deg(_formation_error.led_fol_eta);

    /* 本部分关于从机的期望值的赋值 */
    _formation_control_states.sp_air_speed = _formation_sp.air_speed;
    _formation_control_states.sp_altitude = _formation_sp.altitude;
    _formation_control_states.sp_ground_speed = _formation_sp.ground_speed;
    _formation_control_states.sp_latitude = _formation_sp.latitude;
    _formation_control_states.sp_longitude = _formation_sp.longitude;
    _formation_control_states.sp_ned_vel_x = _formation_sp.ned_vel_x;
    _formation_control_states.sp_ned_vel_y = _formation_sp.ned_vel_y;
    _formation_control_states.sp_ned_vel_z = _formation_sp.ned_vel_z;
    _formation_control_states.sp_relative_alt = _formation_sp.relative_alt;

    /* 发布编队控制器控制状态 */
    _formation_control_states_pub.publish(_formation_control_states);
}

void TaskMain::fw_state_cb(const hust_fw_formation_control::FWstates::ConstPtr &msg)
{
    _fwstates = *msg;
}

void TaskMain::leader_states_cb(const hust_fw_formation_control::Leaderstates::ConstPtr &msg)
{
    _leaderstates = *msg;
}

void TaskMain::fw_fwmonitor_cb(const hust_fw_formation_control::Fwmonitor::ConstPtr &msg)
{
    _fwmonitor_flag = *msg;
}

void TaskMain::fw_cmd_mode_cb(const hust_fw_formation_control::Fw_cmd_mode::ConstPtr &msg)
{
    _fw_cmd_mode = *msg;
}

void TaskMain::waypoints_cb(const mavros_msgs::WaypointList::ConstPtr& msg)
{
    _current_waypoints = *msg;
}

float TaskMain::get_ros_time(ros::Time begin)
{
    ros::Time time_now = ros::Time::now();
    float currTimeSec = time_now.sec - begin.sec;
    float currTimenSec = time_now.nsec / 1e9 - begin.nsec / 1e9;
    return (currTimeSec + currTimenSec);
}

void TaskMain::control_takeoff()
{

    if (start_control == 0)
    {
        cout << "*********刚开始start_control=0*************" << endl;
        throttle_cmd = 0.6;
        roll_cmd = 0.0;
        pitch_cmd = 20.0;
        yaw_cmd = 0.0;
        if (_thisfw_states.pitch_angle * Rad2Deg >= 18.0)
        {
            start_control = 1;
            // waypoint_qgc数组都是弧度
            //角度都是弧度
            // thisfw_status中经纬为°，角度是弧度
            for (size_t i = 0; i < _current_waypoints.waypoints.size(); i++)
            {
                if (_current_waypoints.waypoints[i].command == 16) // 16普通航路点   22起飞航点 单位rad
                {
                    POINT_NUM_QGC++; // 0为无人机开始位置，1为第一个普通航点，起飞点不要  Sin cos计算用rad
                    waypoint_qgc[POINT_NUM_QGC][0] = _current_waypoints.waypoints[i].x_lat * Deg2Rad;
                    waypoint_qgc[POINT_NUM_QGC][1] = _current_waypoints.waypoints[i].y_long * Deg2Rad;
                }
            }
            waypoint_qgc[0][0] = _thisfw_states.latitude * Deg2Rad;
            waypoint_qgc[0][1] = _thisfw_states.longitude * Deg2Rad;
            start_time = _current_time;
            Lat_ini = _thisfw_states.latitude * Deg2Rad;
            Long_ini = _thisfw_states.longitude * Deg2Rad;
            Lat_Target = waypoint_qgc[1][0];
            Long_Target = waypoint_qgc[1][1];
            ALPHA_start = _thisfw_states.pitch_angle * Rad2Deg;
            R_Target = 100.0; //转弯半径
            angle_Target = 90;
            start_height = _thisfw_states.relative_alt;
        }
    }

    if (start_control == 1)
    {
        cout << "*******进入起控start_control=11111**************" << endl;
        /**************************状态更新********************************/
        t_Flight = _current_time - start_time;
        g_Height = _thisfw_states.relative_alt - start_height;
        u_Ymis_n = _thisfw_states.relative_alt - start_height;
        u_GAMMA = _thisfw_states.roll_angle * Rad2Deg;
        u_THETA = _thisfw_states.pitch_angle * Rad2Deg;
        V_MIS = _thisfw_states.air_speed;
        VN_x = _thisfw_states.ned_vel_x;
        VE_z = _thisfw_states.ned_vel_y;
        u_VY_n = -_thisfw_states.ned_vel_z;
        Lat = _thisfw_states.latitude * Deg2Rad;
        Long = _thisfw_states.longitude * Deg2Rad;
        PSCI_t = _thisfw_states.yaw_angle;
        if (PSCI_t >= 0.0 && PSCI_t <= PI)
            PSCI_t = -PSCI_t;
        else if (PSCI_t > PI && PSCI_t < 2.0 * PI)
            PSCI_t = -1.0 * (PSCI_t - 2.0 * PI);
        /**************************状态更新********************************/
        /**************************俯仰控制********************************/
        // X_MIS_n_L = X_MIS_n_L+25*STEP_20ms;
        if (g_Height < 50.0 && flag_xh == 0)
        {
            if (t_Flight < 1.0) // 1s内仅有姿态
            {
                //过渡函数  //从起控点记录的俯仰角过度到15°
                ALFA_cmd = ALPHA_start * (1.0 - TaskMain::Transition(0.0, 1.0, t_Flight)) + 15.0 * (TaskMain::Transition(0.0, 1.0, t_Flight)); //俯仰角起控点--->15
                //记录上一步长的值             用于渐变
                time_old = t_Flight;      //记录时间
                VYold0 = u_VY_n;          //记录垂向速度
                H_cx = g_Height;          //记录垂向高度
                Hold = g_Height;          //记录垂向高度
                ALFA_cmd_old0 = ALFA_cmd; //记录俯仰角指令
                date_hcmd = 0;
                date_vycmd = 0;
            }
            else if (g_Height < 50.0)
            {
                // 3s内过渡	  合理过渡   从第一阶段结束的垂速过渡到3M/S
                Vy_CX = VYold0 * (1.0 - TaskMain::Transition(time_old, time_old + 6.0, t_Flight)) + 3.0 * TaskMain::Transition(time_old, time_old + 6.0, t_Flight); //垂速指令
                H_cx = H_cx + Vy_CX * STEP_20ms;                                                                                                                    //频率20ms，50HZ       垂直高度  STEP_20ms
                // ALFA_cmd =  ALFA_cmd_old0* (1.0-TaskMain::Transition_function(time_old,time_old+1.0,t_Flight)) +
                //     ( 11.0-(u_Ymis_n-H_cx)*0.8-(u_VY_n-Vy_CX)*0.6+1.0*(1.0-cos(u_GAMMA/57.3)) )*TaskMain::Transition(time_old,time_old+1.0,t_Flight) ;
                ALFA_cmd = ALFA_cmd_old0 - (u_Ymis_n - H_cx) * 4.0 - (u_VY_n - Vy_CX) * 0.8 + 1.0 * (1.0 - cos(u_GAMMA / 57.3));
                //保存原始
                VYold = u_VY_n;       //纵向速度
                H_cx1 = g_Height;     //垂直高度
                time_old1 = t_Flight; //
                ALFA_cmd_old = ALFA_cmd;
                wz_cmd = 0;
                date_hcmd = H_cx;
                date_vycmd = Vy_CX;
                //增加过度过程
            }
        }
        else
        {
            // 30M以上巡航  标志位
            flag_xh = 1;
            //垂速控制指令  3S以内衰减为0
            Vy_CX = VYold * (1.0 - TaskMain::Transition(time_old1, time_old1 + 3.0, t_Flight));
            //时间
            H_cx1 = H_cx1 + Vy_CX * STEP_20ms; // STEP_20ms
            JF_NY = (u_Ymis_n - H_cx1) * STEP_20ms + JF_NY;
            // 1S内衰减
            ALFA_cmd = ALFA_cmd_old - (u_Ymis_n - H_cx1) * 4.0 - (u_VY_n - Vy_CX) * 0.8 + 1.0 * (1.0 - cos(u_GAMMA / 57.3)) - JF_NY * 0;
            date_hcmd = H_cx1;
            date_vycmd = Vy_CX;
        }
        /**************************俯仰控制********************************/

        /**************************速度控制********************************/
        if (V_MIS < 18.0 && flag_sd == 0)
        {
            Fai_real = 0.5; // 油门为0.65   920kv   9*5桨
            date_vcmd = 0;
        }
        else
        {
            flag_sd = 1;                                          //速度标志位
            JF_ma = JF_ma + (V_MIS - 20.0) * STEP_20ms;           //
            Fai_real = 0.5 - 0.1 * (V_MIS - 20.0) - 0.08 * JF_ma; //速度PI
            Fai_real = limit2(Fai_real, 1, 0.2);
            date_vcmd = 20 * 1.5;

            // Error_X_MIS = X_MIS_n_L-X_MIS_n;
            // JF_Error_X_MIS = JF_Error_X_MIS+Error_X_MIS*STEP_5ms;
            // V_MIS_F = 4*(Error_X_MIS - 30) + 1*(25-V_MIS)+ 0.01 * JF_Error_X_MIS ;   // 从机速度指令
            // V_MIS_F = limit2(V_MIS_F,30.0,23.0) ;  //从机限幅
            // JF_ma=JF_ma+(V_MIS-V_MIS_F)*STEP_5ms;   //速度控制  积分项
            // Fai_realpr =  1 - 0.2*(V_MIS-V_MIS_F) - 0.3*JF_ma;    //油门指令
        }
        /**************************速度控制********************************/
        /*************************切换航点********************************/
        //  TaskMain::RelativeLocation(Lat,Long, Lat_ini, Long_ini,Lat_Target,Long_Target);
        TaskMain::Navigation(Lat, Long, Lat_ini, Long_ini, Lat_Target, Long_Target);
        // z_control 0  当前位置到期望航点的垂直距
        //           1 当前位置与当前航线的侧偏距离
        //           2 当前位置到期望航的绝对距离
        //           3 当段航线长度
        //           4 期望航向角
        cout << "z0 当前位置到期望航点的垂直距:" << z_control[0] << endl;
        cout << "m0:" << m_control[0] << endl;
        cout << "z1 当前位置与当前航线的侧偏距离：" << z_control[1] << endl;
        cout << "m1:" << m_control[1] << endl;
        cout << "z2 当前位置到期望航点的绝对距离：" << z_control[2] << endl;
        cout << "m2:" << m_control[2] << endl;
        cout << "z4 期望航向角:" << z_control[4] * Rad2Deg << endl;
        cout << "m4:" << m_control[4] * Rad2Deg << endl;
        //     cout<<"z2 当前位置到期望航的绝对距离"<<z_control[2]<<endl;
        //     cout<<"z3 当段航线长度"<<z_control[3]<<endl;
        // cout<<"z4 期望航向角"<<z_control[4]*Rad2Deg<<endl;
        cout << "PSCI_t:" << PSCI_t * Rad2Deg << endl;
        cout << "当前期望航点：" << flag_point + 1 << endl;
        u_VZ = sin(z_control[4]) * VN_x + cos(z_control[4]) * VE_z;
        if (z_control[0] < R_Target * tan(angle_Target / 2 * Deg2Rad) + 1) //入弯与撞线判断
        {
            if (angle_Target > 0)
            {
                //计算转弯圆心的大地方位角   角度
                double turnangle = -z_control[4] * Rad2Deg + 90;
                //反结算圆心的经纬度    都是度 输出也是度
                //  TaskMain::Vincent_Z(R_Target,turnangle,Long*Rad2Deg,Lat*Rad2Deg,&Turn_long,&Turn_lat);
                double S_MT = R_Target;
                double Alf_MT = turnangle;
                double g_Longitude = Long * Rad2Deg;
                double g_Latitude = Lat * Rad2Deg;
                double g_Longitude_T = Turn_long;
                double g_Latitude_T = Turn_lat;
                double E1, Aa, B, D, c, m, sigmam_2, tan_u1;
                double k1, sin_m;
                double u1, sigma1, sigma, sigma_b, delta_sigma, lamda;
                double x1, y1, x2, y2;
                double E = (1.0 / 298.257223563);
                double Pi = 3.14159265358979;
                double AtoR = 180. / Pi;
                double Re = 6378137.0;      //地球半径，(m)
                double Rb = (Re * (1 - E)); // Rb地球短半径
                double ee = (Re * Re - Rb * Rb) / (Rb * Rb);

                tan_u1 = (1 - E) * tan(g_Latitude / AtoR);
                u1 = atan(tan_u1);
                sigma1 = atan(tan_u1 / cos(Alf_MT / AtoR));

                if (cos(Alf_MT / AtoR) < 0.0 && tan_u1 > 0.0)
                {
                    sigma1 = sigma1 + Pi;
                }
                if (cos(Alf_MT / AtoR) < 0.0 && tan_u1 < 0.0)
                {
                    sigma1 = sigma1 - Pi;
                }

                sin_m = cos(u1) * sin(Alf_MT / AtoR);
                m = asin(sin_m);

                k1 = (sqrt(1.0 + ee * (1.0 - sin_m * sin_m)) - 1.0) / (sqrt(1.0 + ee * (1.0 - sin_m * sin_m)) + 1.0);

                Aa = (1.0 + k1 * k1 / 4.0) / (1.0 - k1);
                B = k1 * (1.0 - 3.0 * k1 * k1 / 8.0);
                sigma = S_MT / (Rb * Aa);
                do
                {
                    sigma_b = sigma;
                    sigmam_2 = 2 * sigma1 + sigma;

                    delta_sigma = B * sin(sigma) * (cos(sigmam_2) + B * (E1 * cos(sigma) - D) / 4.0);
                    sigma = S_MT / (Rb * Aa) + delta_sigma;

                } while (fabs(sigma - sigma_b) > 0.3e-11);

                g_Latitude_T = atan((sin(u1) * cos(sigma) + cos(u1) * sin(sigma) * cos(Alf_MT / AtoR)) / ((1 - E) * sqrt(sin_m * sin_m + pow(sin(u1) * sin(sigma) - cos(u1) * cos(sigma) * cos(Alf_MT / AtoR), 2.0))));

                x1 = sin(sigma) * sin(Alf_MT / AtoR);
                y1 = cos(u1) * cos(sigma) - sin(u1) * sin(sigma) * cos(Alf_MT / AtoR);
                lamda = atan(x1 / y1);

                if (y1 < 0.0 && x1 > 0.0)
                {
                    lamda = lamda + Pi;
                }
                else if (y1 < 0 && x1 < 0.0)
                {
                    lamda = lamda - Pi;
                }

                c = E * cos(m) * cos(m) * (4.0 + E * (4.0 - 3.0 * cos(m) * cos(m))) / 16.0;

                g_Longitude_T = g_Longitude / AtoR + lamda - (1.0 - c) * E * sin_m * (sigma + c * sin(sigma) * (cos(sigmam_2) + E1 * c * cos(sigma)));

                if (fabs(g_Longitude_T) > Pi)
                {
                    if (g_Longitude_T > 0.0)
                    {
                        g_Longitude_T = g_Longitude_T - 2.0 * Pi;
                    }
                    else
                    {
                        g_Longitude_T = g_Longitude_T + 2.0 * Pi;
                    }
                }

                x2 = -sin_m;
                y2 = sin(u1) * sin(sigma) - cos(u1) * cos(sigma) * cos(Alf_MT / AtoR);

                Turn_long = g_Longitude_T * AtoR;
                Turn_lat = g_Latitude_T * AtoR;
                //转弯状态字变1      0的话始终直线飞行
                flag_zw = 1;
            }
            flag_point += 1;
            Lat_Target = waypoint_qgc[flag_point][0];
            Long_Target = waypoint_qgc[flag_point][1];
            Lat_ini = waypoint_qgc[flag_point - 1][0];
            Long_ini = waypoint_qgc[flag_point - 1][1];
        }
        //     cout<<fixed<< setprecision(10)<<Turn_long<<" "<<endl;
        // //发布数据
        //  _fw_4cmd.roll_angle_sp=0;
        //  _fw_4cmd.pitch_angle_sp =15*Deg2Rad;
        //  _fw_4cmd.yaw_angle_sp =0;
        //  _fw_4cmd.throttle_sp=0.65;
        //  cout<<fixed<< setprecision(10)<<Turn_lat<<" "<<endl;
        /*****************************滚转控制**************************/
        // TaskMain::RelativeLocation(Lat,Long, Lat_ini, Long_ini,Lat_Target,Long_Target);
        TaskMain::Navigation(Lat, Long, Lat_ini, Long_ini, Lat_Target, Long_Target);
        int ki_a = 0;
        if (flag_zw == 0)
        {
            if (abs(z_control[1]) > 2)
            {
                ki_a = 0;
                JF_NZ = 0;
            }
            else
            {
                ki_a = 1;
                JF_NZ = (z_control[1] - 0.0) * STEP_20ms + JF_NZ;
            }
            GAMMAcx = -z_control[1] * 1.0 - u_VZ * 2.0 - JF_NZ * 0.04 * ki_a; //积分
            cout << "直线控制：" << endl;
            JF_Zmis_n = 0;
            date_delta_perr = -z_control[1] / 1.5;
            date_delta_verr = -u_VZ;

            // F_NZ = (z_control[1]-20)*STEP_5ms+JF_NZ;   //使用侧向位置进行控制
            // GAMMAcxpr = -(z_control[1]-20)*0.75-u_VZ*1.5-JF_NZ*0.04;  //滚转角指令

            // GAMMAcxpr = limit1(GAMMAcxpr,45);
        }
        else
        {
            JF_NZ = 0;
            // Vincenty_F(Turn_long , Turn_lat, Long*Rad2Deg ,Lat*Rad2Deg,&disturn,&aturn); //反解距离目标点距离，与方位角
            double Long_T = Turn_long;
            double Lat_T = Turn_lat;
            double g_Longitude = Long * Rad2Deg;
            double g_Latitude = Lat * Rad2Deg;
            double g_R_MT = disturn;
            double g_Alpha12_MT = aturn;
            double U1, U2, detLong, detLongd, sigma, sigamm_2, sigma_sin, sigma_cos, mm; //单位：弧度
            double C, E1, K11, B, AA, D, detsigam, Alf_MT1, Alf_MT2;
            double E = (1.0 / 298.257223563);
            double Pi = 3.14159265358979;
            double AtoR = 180. / Pi;
            double Re = 6378137.0;      //地球半径，(m)
            double Rb = (Re * (1 - E)); // Rb地球短半径
            double ee = (Re * Re - Rb * Rb) / (Rb * Rb);

            U1 = atan((1.0 - E) * tan(g_Latitude / AtoR)); //单位：弧度
            U2 = atan((1.0 - E) * tan(Lat_T / AtoR));      //单位：弧度

            detLong = (Long_T - g_Longitude) / AtoR;
            while (1)
            {
                detLongd = detLong;
                sigma_sin = sqrt(cos(U2) * cos(U2) * sin(detLong) * sin(detLong) + (cos(U1) * sin(U2) - sin(U1) * cos(U2) * cos(detLong)) * (cos(U1) * sin(U2) - sin(U1) * cos(U2) * cos(detLong)));
                sigma_cos = sin(U1) * sin(U2) + cos(U1) * cos(U2) * cos(detLong);
                sigma = atan(sigma_sin / sigma_cos);

                mm = asin(cos(U1) * cos(U2) * sin(detLong) / sigma_sin);
                C = E * cos(mm) * cos(mm) * (4.0 + E * (4.0 - 3.0 * cos(mm) * cos(mm))) / 16.0;

                sigamm_2 = acos(sigma_cos - 2.0 * sin(U1) * sin(U2) / (cos(mm) * cos(mm)));
                E1 = 2.0 * cos(sigamm_2) * cos(sigamm_2) - 1.0;

                detLong = (Long_T - g_Longitude) / AtoR + (1.0 - C) * E * sin(mm) * (sigma + C * sigma_sin * (cos(sigamm_2) + E1 * C * sigma_cos));
                if (fabs(detLong - detLongd) <= 0.3e-11)
                {
                    break;
                }
            }

            K11 = (sqrt(1.0 + ee * cos(mm) * cos(mm)) - 1.0) / (sqrt(1.0 + ee * cos(mm) * cos(mm)) + 1.0);
            B = K11 * (1.0 - 3.0 * K11 * K11 / 8.0);
            AA = (1.0 + K11 * K11 / 4.0) / (1.0 - K11);
            D = B * cos(sigamm_2) * (4.0 * sigma_sin * sigma_sin - 3.0) * (2.0 * E1 - 1) / 6.0;

            detsigam = B * sigma_sin * (cos(sigamm_2) + B * (E1 * sigma_cos - D) / 4.0);

            //大地距离
            disturn = (sigma - detsigam) * Rb * AA;

            //大地方位角（正方位角）
            Alf_MT1 = cos(U2) * sin(detLong);
            Alf_MT2 = cos(U1) * sin(U2) - sin(U1) * cos(U2) * cos(detLong);
            g_Alpha12_MT = atan(Alf_MT1 / Alf_MT2);

            if (Alf_MT2 < 0.0)
            {
                g_Alpha12_MT = Pi + g_Alpha12_MT;
            }
            else if (Alf_MT1 < 0.0)
            {
                g_Alpha12_MT = 2.0 * Pi + g_Alpha12_MT;
            }

            aturn = g_Alpha12_MT * AtoR;
            u_VZ_zw = cos(aturn * Deg2Rad) * VN_x + sin(aturn * Deg2Rad) * VE_z; //北向动向速度
            JF_Zmis_n = JF_Zmis_n + (R_Target - disturn) * STEP_20ms;            //积分
            GAMMAcx = -2.5 * (R_Target - disturn) - 2.0 * (u_VZ_zw)-JF_Zmis_n * 0.1 + 30;
            cout << "转弯控制：" << endl;
            JF_NZ = 0;

            date_delta_perr = -(R_Target - disturn) / 1.5;
            date_delta_verr = -u_VZ_zw;
            if (z_control[1] < 2.0 || abs(PSCI_t - z_control[4]) < 2.0 * Deg2Rad)
            {
                flag_zw = 0;
            }
        }

        roll_cmd = GAMMAcx;
        pitch_cmd = ALFA_cmd;
        throttle_cmd = Fai_real;
    }

    //数据保存
    date_pitch = u_THETA;
    date_pitchcmd = pitch_cmd;
    date_roll = u_GAMMA;
    date_rollcmd = roll_cmd;
    date_v = V_MIS * 1.5;
    date_h = g_Height;
    date_vy = u_VY_n;
    date_yaw = PSCI_t * Rad2Deg;
    date_yawcmd = heading_sp * Rad2Deg;
    date_delta_gd = gD / 1.5;

    _fw_4cmd.date_flag_zw = flag_zw;
    _fw_4cmd.t_flight = t_Flight;
    _fw_4cmd.date_pitch = date_pitch;
    _fw_4cmd.date_pitchcmd = date_pitchcmd;
    _fw_4cmd.date_roll = date_roll;
    _fw_4cmd.date_rollcmd = date_rollcmd;
    _fw_4cmd.date_v = date_v;
    _fw_4cmd.date_vcmd = date_vcmd;
    _fw_4cmd.date_h = date_h;
    _fw_4cmd.date_hcmd = date_hcmd;
    _fw_4cmd.date_vy = date_vy;
    _fw_4cmd.date_vycmd = date_vycmd;
    _fw_4cmd.date_delta_perr = date_delta_perr;
    _fw_4cmd.date_delta_verr = date_delta_verr;
    _fw_4cmd.date_delta_gd = date_delta_gd;
    _fw_4cmd.date_yaw = date_yaw;
    _fw_4cmd.date_yawcmd = date_yawcmd;

    _fw_4cmd.z0 = z_control[0];
    _fw_4cmd.z1 = z_control[1];
    _fw_4cmd.z2 = z_control[2];
    _fw_4cmd.z3 = z_control[3];
    _fw_4cmd.z4 = z_control[4];

    _fw_4cmd.roll_angle_sp = roll_cmd * Deg2Rad;
    _fw_4cmd.pitch_angle_sp = pitch_cmd * Deg2Rad;
    _fw_4cmd.yaw_angle_sp = 0;
    _fw_4cmd.throttle_sp = throttle_cmd; // 0.65;//

    // //发布数据
    //  _fw_4cmd.roll_angle_sp=0;
    //  _fw_4cmd.pitch_angle_sp =15*Deg2Rad;
    //  _fw_4cmd.yaw_angle_sp =0;
    //  _fw_4cmd.throttle_sp=0.65;

    _fw_cmd_pub.publish(_fw_4cmd);
}


Point TaskMain::get_plane_to_sp_vector(Point origin, Point target)
{
  Point out(deg_2_rad((target.x - origin.x)), deg_2_rad((target.y - origin.y) * cos(deg_2_rad(origin.x))));

  return out * double(CONSTANTS_RADIUS_OF_EARTH);
}

/**************************************************hust***********************************************/

void TaskMain::status_update()
{
    /***************记录初始状态*************/
    if (first_control == 1)
    {
        start_time = _current_time;        //记录当前时间记作开始时间
        first_control = 0;                //只进入一次
        Lat_ini = _thisfw_states.latitude; //记录初始经纬度
        Long_ini = _thisfw_states.longitude;
        Lat_Target = Lat_Target1; //载入第一航点经纬度
        Long_Target = Long_Target1;
        R_Target = 180.0; //转弯半径
    }
    /************飞行时间************/
    t_Flight = _current_time - start_time;         //更新启控时间
                                                  /************水平高度************/
    g_Height = _thisfw_states.relative_alt;        //更新高度
    u_Ymis_n = _thisfw_states.relative_alt;        //更新高度
                                                  /************姿态更新************/
    u_GAMMA = _thisfw_states.roll_angle * Rad2Deg; //更新滚转角
    // THETA_v=_thisfw_states.pitch_angle;//问一下
    /************绝对速度************/
    V_MIS = sqrt(_thisfw_states.ned_vel_x * _thisfw_states.ned_vel_x +
                 _thisfw_states.ned_vel_y * _thisfw_states.ned_vel_y +
                 _thisfw_states.ned_vel_z * _thisfw_states.ned_vel_z); //更新飞行速度
                                                                     /************速度更新***********/
    VN_x = _thisfw_states.ned_vel_x;
    VE_z = _thisfw_states.ned_vel_y;
    u_VY_n = -_thisfw_states.ned_vel_z;
    VY = -_thisfw_states.ned_vel_z;
    /************经纬更新************/
    Lat = _thisfw_states.latitude * Deg2Rad;
    Long = _thisfw_states.longitude * Deg2Rad;
    /************方位更新************/
    PSCI_t = _thisfw_states.yaw_angle; // rad
    if (PSCI_t >= 0.0 && PSCI_t <= PI)
        PSCI_t = -PSCI_t;
    else if (PSCI_t > PI && PSCI_t < 2.0 * PI)
        PSCI_t = -1.0 * (PSCI_t - 2.0 * PI);
}

void TaskMain::Navigation(double lat_m, double long_m, double lat_s, double long_s, double lat_e, double long_e)
{
    //******************导航解算********************//
    //当前纬经度    单位：弧度
    cur_lat_lon[0] = lat_m;
    cur_lat_lon[1] = long_m;
    //期望经纬
    sp_lat_lon[0] = lat_e;
    sp_lat_lon[1] = long_e;
    //前一个经纬
    pre_lat_lon[0] = lat_s;
    pre_lat_lon[1] = long_s;

    //当前位置      单位
    I_p[0] = cos(cur_lat_lon[0]) * cos(cur_lat_lon[1]);
    I_p[1] = cos(cur_lat_lon[0]) * sin(cur_lat_lon[1]);
    I_p[2] = sin(cur_lat_lon[0]);
    //期望位置
    I_t[0] = cos(sp_lat_lon[0]) * cos(sp_lat_lon[1]);
    I_t[1] = cos(sp_lat_lon[0]) * sin(sp_lat_lon[1]);
    I_t[2] = sin(sp_lat_lon[0]);
    //前一个位置
    I_s[0] = cos(pre_lat_lon[0]) * cos(pre_lat_lon[1]);
    I_s[1] = cos(pre_lat_lon[0]) * sin(pre_lat_lon[1]);
    I_s[2] = sin(pre_lat_lon[0]);

    Dis = (CONSTANTS_RADIUS_OF_EARTH + _thisfw_states.relative_alt) * acos(I_p[0] * I_t[0] + I_p[1] * I_t[1] + I_p[2] * I_t[2]);

    //计算航线偏差DY 以及航线偏离速度，当前位置P(Lamb,B) ，航线起始导航点S(Lamb_0,B_0)，末端航点E(Lamb_1,B_1)
    //计算 I_0, 两点叉乘/叉乘的模
    double i0, i1, i2, i_len;
    i0 = I_t[1] * I_s[2] - I_t[2] * I_s[1];
    i1 = I_t[2] * I_s[0] - I_t[0] * I_s[2];
    i2 = I_t[0] * I_s[1] - I_t[1] * I_s[0];
    i_len = sqrt(i0 * i0 + i1 * i1 + i2 * i2);

    I_0[0] = i0 / i_len;
    I_0[1] = i1 / i_len;
    I_0[2] = i2 / i_len;
    //航向侧向偏差
    Dis_y = (CONSTANTS_RADIUS_OF_EARTH + _thisfw_states.relative_alt) * (I_p[0] * I_0[0] + I_p[1] * I_0[1] + I_p[2] * I_0[2]);
    a_pos.x = rad_2_deg(pre_lat_lon[0]);
    a_pos.y = rad_2_deg(pre_lat_lon[1]);
    b_pos.x = rad_2_deg(sp_lat_lon[0]);
    b_pos.y = rad_2_deg(sp_lat_lon[1]);
    dir = get_plane_to_sp_vector(a_pos, b_pos);
    heading_sp = atan2(dir.y, dir.x); //（0->180 -180->0）
    if (heading_sp < 0)
    {
        heading_sp = heading_sp + 2 * PI;
    }

    //根据末端点E计算 撞线判断航点C 的经纬度  sin  cos 用弧度
    sp_c_lat_lon[0] = sp_lat_lon[0] + deg_2_rad(0.1 * cos(heading_sp + PI / 2));
    sp_c_lat_lon[1] = sp_lat_lon[1] + deg_2_rad(0.1 * sin(heading_sp + PI / 2));

    // C的位置  判断撞线
    I_c[0] = cos(sp_c_lat_lon[0]) * cos(sp_c_lat_lon[1]);
    I_c[1] = cos(sp_c_lat_lon[0]) * sin(sp_c_lat_lon[1]);
    I_c[2] = sin(sp_c_lat_lon[0]);

    i0 = I_c[1] * I_t[2] - I_c[2] * I_t[1];
    i1 = I_c[2] * I_t[0] - I_c[0] * I_t[2];
    i2 = I_c[0] * I_t[1] - I_c[1] * I_t[0];
    i_len = sqrt(i0 * i0 + i1 * i1 + i2 * i2);
    I_0[0] = i0 / i_len;
    I_0[1] = i1 / i_len;
    I_0[2] = i2 / i_len;

    //当前导航点到下一导航点判断线的距离gD
    gD = (CONSTANTS_RADIUS_OF_EARTH + _thisfw_states.relative_alt) * (I_p[0] * I_0[0] + I_p[1] * I_0[1] + I_p[2] * I_0[2]);

    if (heading_sp >= 0.0 && heading_sp <= PI)
        heading_sp = -heading_sp;
    else if (heading_sp > PI && heading_sp < 2.0 * PI)
        heading_sp = -1.0 * (heading_sp - 2.0 * PI);

    z_control[0] = gD;
    z_control[1] = Dis_y;
    z_control[2] = Dis;
    z_control[3] = 0;
    z_control[4] = heading_sp;
}

double TaskMain::limit1(double x,double t)
{
    if(x<-t) return -t;
    else if(x>=t) return t;
    else return x;
}

double TaskMain::limit2(double x,double b,double a)
{
    if(x<a) return a;
    else if(x>b) return b;
    else return x;
}

//平滑处理函数
double TaskMain::Transition(double t_begin,double t_end,double t_current)
{
    if(t_current<t_begin)
    {
        return 0;
    }
    else if(t_begin<=t_current&&t_current<=t_end)
    {
        return 0.5*(sin(((t_current-t_begin)/(t_end-t_begin)-0.5)*PI)+1);
    }
    else 
    return 1;
}

/**
 * @name: Vincent_Z
 * @description: Vincenty正解公式,据目标点大地距离与大地方位角求目标经纬度
 * @author: hust
 * @param {double} S_MT           : 距目标点大地距离
 * @param {double} Alf_MT         : 与目标点大地方位角，单位：度
 * @param {double} g_Longitude    : 当前点经度，单位：度
 * @param {double} g_Latitude     : 当前点纬度，单位：度
 * @param {double} *g_Longitude_T : 目标点经度，单位：度
 * @param {double} *g_Latitude_T  : 目标点纬度，单位：度
 * @return {*}
 */
void TaskMain::Vincent_Z(double S_MT, double Alf_MT, double g_Longitude, double g_Latitude, double *g_Longitude_T, double *g_Latitude_T)
{
    double E1, Aa, B, D, c, m, sigmam_2, tan_u1;
    double k1, sin_m;
    double u1, sigma1, sigma, sigma_b, delta_sigma, lamda;
    double x1, y1, x2, y2;
    double E = (1.0 / 298.257223563);
    double Pi = 3.14159265358979;
    double AtoR = 180. / Pi;
    double Re = 6378137.0;      //地球半径，(m)
    double Rb = (Re * (1 - E)); // Rb地球短半径
    double ee = (Re * Re - Rb * Rb) / (Rb * Rb);

    tan_u1 = (1 - E) * tan(g_Latitude / AtoR);
    u1 = atan(tan_u1);
    sigma1 = atan(tan_u1 / cos(Alf_MT / AtoR));

    if (cos(Alf_MT / AtoR) < 0.0 && tan_u1 > 0.0)
    {
        sigma1 = sigma1 + Pi;
    }
    if (cos(Alf_MT / AtoR) < 0.0 && tan_u1 < 0.0)
    {
        sigma1 = sigma1 - Pi;
    }

    sin_m = cos(u1) * sin(Alf_MT / AtoR);
    m = asin(sin_m);

    k1 = (sqrt(1.0 + ee * (1.0 - sin_m * sin_m)) - 1.0) / (sqrt(1.0 + ee * (1.0 - sin_m * sin_m)) + 1.0);

    Aa = (1.0 + k1 * k1 / 4.0) / (1.0 - k1);
    B = k1 * (1.0 - 3.0 * k1 * k1 / 8.0);
    sigma = S_MT / (Rb * Aa);
    do
    {
        sigma_b = sigma;
        sigmam_2 = 2 * sigma1 + sigma;

        delta_sigma = B * sin(sigma) * (cos(sigmam_2) + B * (E1 * cos(sigma) - D) / 4.0);
        sigma = S_MT / (Rb * Aa) + delta_sigma;

    } while (fabs(sigma - sigma_b) > 0.3e-11);

    *g_Latitude_T = atan((sin(u1) * cos(sigma) + cos(u1) * sin(sigma) * cos(Alf_MT / AtoR)) / ((1 - E) * sqrt(sin_m * sin_m + pow(sin(u1) * sin(sigma) - cos(u1) * cos(sigma) * cos(Alf_MT / AtoR), 2.0))));

    x1 = sin(sigma) * sin(Alf_MT / AtoR);
    y1 = cos(u1) * cos(sigma) - sin(u1) * sin(sigma) * cos(Alf_MT / AtoR);
    lamda = atan(x1 / y1);

    if (y1 < 0.0 && x1 > 0.0)
    {
        lamda = lamda + Pi;
    }
    else if (y1 < 0 && x1 < 0.0)
    {
        lamda = lamda - Pi;
    }

    c = E * cos(m) * cos(m) * (4.0 + E * (4.0 - 3.0 * cos(m) * cos(m))) / 16.0;

    *g_Longitude_T = g_Longitude / AtoR + lamda - (1.0 - c) * E * sin_m * (sigma + c * sin(sigma) * (cos(sigmam_2) + E1 * c * cos(sigma)));

    if (fabs(*g_Longitude_T) > Pi)
    {
        if (*g_Longitude_T > 0.0)
        {
            *g_Longitude_T = *g_Longitude_T - 2.0 * Pi;
        }
        else
        {
            *g_Longitude_T = *g_Longitude_T + 2.0 * Pi;
        }
    }

    x2 = -sin_m;
    y2 = sin(u1) * sin(sigma) - cos(u1) * cos(sigma) * cos(Alf_MT / AtoR);

    *g_Longitude_T = *g_Longitude_T * AtoR;
    *g_Latitude_T = *g_Latitude_T * AtoR;
}


/**
 * @name: Vincenty_F
 * @description: Vincenty反解公式，据目标经纬度求目标点大地距离与大地方位角
 * @author: hust
 * @param {double} Long_T            : 目标点经度，单位：度
 * @param {double} Lat_T             : 目标点纬度，单位：度 
 * @param {double} g_Longitude      
 * @param {double} g_Latitude
 * @param {double} *g_R_MT           : 距目标点大地距离
 * @param {double} *g_Alpha12_MT     : 与目标点大地方位角，单位：度
 * @return {*}
 */
void TaskMain::Vincenty_F(double Long_T, double Lat_T, double g_Longitude, double g_Latitude, double *g_R_MT, double *g_Alpha12_MT)
{
    double U1, U2, detLong, detLongd, sigma, sigamm_2, sigma_sin, sigma_cos, mm; //单位：弧度
    double C, E1, K11, B, AA, D, detsigam, Alf_MT1, Alf_MT2;
    double E = (1.0 / 298.257223563);
    double Pi = 3.14159265358979;
    double AtoR = 180. / Pi;
    double Re = 6378137.0;      //地球半径，(m)
    double Rb = (Re * (1 - E)); // Rb地球短半径
    double ee = (Re * Re - Rb * Rb) / (Rb * Rb);

    U1 = atan((1.0 - E) * tan(g_Latitude / AtoR)); //单位：弧度
    U2 = atan((1.0 - E) * tan(Lat_T / AtoR));      //单位：弧度

    detLong = (Long_T - g_Longitude) / AtoR;
    while (1)
    {
        detLongd = detLong;
        sigma_sin = sqrt(cos(U2) * cos(U2) * sin(detLong) * sin(detLong) + (cos(U1) * sin(U2) - sin(U1) * cos(U2) * cos(detLong)) * (cos(U1) * sin(U2) - sin(U1) * cos(U2) * cos(detLong)));
        sigma_cos = sin(U1) * sin(U2) + cos(U1) * cos(U2) * cos(detLong);
        sigma = atan(sigma_sin / sigma_cos);

        mm = asin(cos(U1) * cos(U2) * sin(detLong) / sigma_sin);
        C = E * cos(mm) * cos(mm) * (4.0 + E * (4.0 - 3.0 * cos(mm) * cos(mm))) / 16.0;

        sigamm_2 = acos(sigma_cos - 2.0 * sin(U1) * sin(U2) / (cos(mm) * cos(mm)));
        E1 = 2.0 * cos(sigamm_2) * cos(sigamm_2) - 1.0;

        detLong = (Long_T - g_Longitude) / AtoR + (1.0 - C) * E * sin(mm) * (sigma + C * sigma_sin * (cos(sigamm_2) + E1 * C * sigma_cos));
        cout << "fabs(detLong - detLongd) " << fabs(detLong - detLongd) << endl;
        if (fabs(detLong - detLongd) <= 0.3e-11)
        {
            break;
        }
    }

    K11 = (sqrt(1.0 + ee * cos(mm) * cos(mm)) - 1.0) / (sqrt(1.0 + ee * cos(mm) * cos(mm)) + 1.0);
    B = K11 * (1.0 - 3.0 * K11 * K11 / 8.0);
    AA = (1.0 + K11 * K11 / 4.0) / (1.0 - K11);
    D = B * cos(sigamm_2) * (4.0 * sigma_sin * sigma_sin - 3.0) * (2.0 * E1 - 1) / 6.0;

    detsigam = B * sigma_sin * (cos(sigamm_2) + B * (E1 * sigma_cos - D) / 4.0);

    //大地距离
    *g_R_MT = (sigma - detsigam) * Rb * AA;

    //大地方位角（正方位角）
    Alf_MT1 = cos(U2) * sin(detLong);
    Alf_MT2 = cos(U1) * sin(U2) - sin(U1) * cos(U2) * cos(detLong);
    *g_Alpha12_MT = atan(Alf_MT1 / Alf_MT2);

    if (Alf_MT2 < 0.0)
    {
        *g_Alpha12_MT = Pi + *g_Alpha12_MT;
    }
    else if (Alf_MT1 < 0.0)
    {
        *g_Alpha12_MT = 2.0 * Pi + *g_Alpha12_MT;
    }

    *g_Alpha12_MT = *g_Alpha12_MT * AtoR;
}

