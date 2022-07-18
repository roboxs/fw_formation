/**
 * @file task_main.h
 * @author hust
 * @brief 构建TaskMain类，并继承上层控制器类FORMATION_CONTROLLER
 *
 * @copyright Copyright (c) 2022
 *
 */

#ifndef _TASK_MAIN_H
#define _TASK_MAIN_H

#include <ros/ros.h>
#include <iostream>
#include "hust_fw_formation_control/FWstates.h"
#include "hust_fw_formation_control/Leaderstates.h"
#include "hust_fw_formation_control/Fwmonitor.h"
#include "hust_fw_formation_control/Fw_cmd_mode.h"
#include "hust_fw_formation_control/FWcmd.h"
#include "hust_fw_formation_control/Formation_control_states.h"
#include "hust_fw_formation_control/Fw_current_mode.h"
#include <mavros_msgs/WaypointList.h>
#include "../formation_controller/abs_formation_controller.hpp"
#include "../formation_controller/formation_controller.hpp"

// bit库
#include "../fixed_wing_lib/syslib.hpp"
#include "../fixed_wing_lib/mathlib.hpp"
#include "../fixed_wing_lib/vector.hpp"

#define TASK_MAIN_INFO(a) cout << "[TASK_MAIN_INFO]:" << a << endl
#define MAX_POINT_NUM 100
#define Rad2Deg 57.2957805
#define Deg2Rad 0.01745329
#define PI 3.1415926535

class TaskMain
{
private:
    int _planeID{1};                /*飞机编号*/
    std::string _uavID{"uav1/"};    /* 本机编号，用于命名空间 */
    std::string _leaderID{"uav0/"}; /* 领机编号，用于命名空间 */

    ros::NodeHandle _nh; /*ros句柄  nh句柄*/
    ros::Time _begin_time;
    float _current_time;
    float get_ros_time(ros::Time begin); /*获取当前时间*/

    ros::Subscriber _fwmonitor_sub;     /*【订阅】来自fw_monitor任务状态的flags*/
    ros::Subscriber _fw_states_sub;     /*【订阅】来自pack_fw_states固定翼全部状态量*/
    ros::Subscriber _leader_states_sub; /*【订阅】来自通讯节点，或者视觉节点领机全部状态量*/
    ros::Subscriber _fw_cmd_mode_sub;   /*【订阅】来自commander状态机的控制指令*/
    ros::Subscriber _way_points_sub;

    ros::Publisher _formation_control_states_pub; /*【发布】编队控制状态量*/
    ros::Publisher _fw_cmd_pub;                   /*【发布】飞机四通道控制量*/
    ros::Publisher _fw_current_mode_pub;          /*【发布】飞机当前处于的任务状态*/

    hust_fw_formation_control::FWstates _fwstates;                                 /*自定义--飞机打包的全部状态*/
    hust_fw_formation_control::Leaderstates _leaderstates;                         /*自定义--领机状态*/
    hust_fw_formation_control::Fwmonitor _fwmonitor_flag;                          /*自定义--任务状态的flags*/
    hust_fw_formation_control::Fw_cmd_mode _fw_cmd_mode;                           /*自定义--来自commander的命令飞机模式*/
    hust_fw_formation_control::FWcmd _fw_4cmd;                                     /*自定义--飞机四通道控制量*/
    hust_fw_formation_control::Formation_control_states _formation_control_states; /*自定义--编队控制状态量*/
    hust_fw_formation_control::Fw_current_mode _fw_current_mode;                   /*自定义--要发布的飞机当前任务模式*/

    mavros_msgs::WaypointList _current_waypoints;

    void ros_sub_pub();
    void input_params(); /*将外部的文件之中的参数加载到相应的函数当中去*/                /*ros消息订阅与发布*/
    void fw_state_cb(const hust_fw_formation_control::FWstates::ConstPtr &msg);          /*本机状态callback*/
    void leader_states_cb(const hust_fw_formation_control::Leaderstates::ConstPtr &msg); /*领机状态callback*/
    void fw_fwmonitor_cb(const hust_fw_formation_control::Fwmonitor::ConstPtr &msg);     /*任务状态flagscallback*/
    void fw_cmd_mode_cb(const hust_fw_formation_control::Fw_cmd_mode::ConstPtr &msg);    /*commander指令callback*/
    void waypoints_cb(const mavros_msgs::WaypointList::ConstPtr &msg);
    void update_fwsates(); /*更新飞机状态*/

    ABS_FORMATION_CONTROLLER _formation_controller; /*编队控制器*/
    //编队参数结构体
    struct ABS_FORMATION_CONTROLLER::_s_leader_states _leader_states;     /*领机信息*/
    struct ABS_FORMATION_CONTROLLER::_s_fw_states _thisfw_states;         /*本机信息*/
    struct ABS_FORMATION_CONTROLLER::_s_fw_error _formation_error;        /*编队误差以及偏差*/
    struct ABS_FORMATION_CONTROLLER::_s_mix_Xerr_params _mix_Xerr_params; /*编队控制器混合误差产生参数,编队控制器参数*/
    struct ABS_FORMATION_CONTROLLER::_s_mix_Yerr_params _mix_Yerr_params; /*编队控制器混合误差产生参数,编队控制器参数*/
    struct ABS_FORMATION_CONTROLLER::_s_4cmd _formation_cmd;              /*四通道控制量*/
    struct ABS_FORMATION_CONTROLLER::_s_fw_sp _formation_sp;              /*编队控制运动学期望值*/

    std::string _fw_col_mode_current{"MANUAL"}; /*当前模式*/
    std::string _fw_col_mode_last{"MANUAL"};    /*上一时刻模式*/

    void formation_states_pub(); /*发布编队控制器控制状态*/

    void control_formation(); /*编队控制主函数*/
    void control_takeoff();   /*起飞主函数*/
    /* 横侧向控制器 */
    float roll_cmd{0.0};
    float throttle_cmd{0.0};
    float yaw_cmd{0.0};
    float h_err_i{0};

    float pitch_cmd{0.0};

    int POINT_NUM_QGC{0};
    double waypoint_qgc[MAX_POINT_NUM][2];
    float start_time;

    /**************************************************hust***********************************************/
    int run_flag = 0;
    int start_control = 0;
    int first_control = 1;
    double ALPHA_start = {0.0};
    //俯仰参数
    double t_Flight{0.0};
    double g_Height{0.0}, ALFA_cmd{0.0};
    int flag_xh = 0, flag_sd = 0;
    double VYold0{0.0}, time_old{0.0}, wz_cmd = 0;
    double H_cx{0.0}, Hold{0.0}, ALFA_cmd_old0{0.0}, ALFA_cmd_old{0.0}, Vy_CX{0.0}, VY{0.0};
    double VYold{0.0}, H_cx1{0.0}, time_old1{0.0};
    double JF_NY{0.0}, u_Ymis_n{0.0}, u_VY_n{0.0};
    double k11{0.0}, u_GAMMA{0.0}, THETA_v{0.0};
    double u_THETA{0.0};
    double u_VZ{0.0};
    double u_VZ_zw{0.0};
    double z_control[5], V_MIS{0.0}, Fai_real{0.0}, JF_ma{0.0};
    double m_control[5];
    //滚转参数
    double kpgd{0.0}, kigd{0.0}, kdgd{0.0};
    double VN_x{0.0}, VE_z{0.0};
    double GAMMAcx{0.0}, JF_NZ{0.0};
    int flag_zw = 0;
    double STEP_20ms = 0.02;
    double JF_Zmis_n{0.0}, t_turn{0.0};
    double aturn{0.0}, disturn{0.0};
    double R_Target{0.0}, PSCI_t{0.0};
    //毕业数据存储
    double date_pitch{0.0}, date_pitchcmd{0.0};
    double date_roll{0.0}, date_rollcmd{0.0};
    double date_v{0.0}, date_vcmd{0.0};
    double date_h{0.0}, date_hcmd{0.0};
    double date_vy{0.0}, date_vycmd{0.0};
    double date_delta_perr{0.0}, date_delta_verr{0.0};
    double date_delta_gd{0.0};
    double date_yaw{0.0}, date_yawcmd{0.0};

    double start_height;
    //导航点
    double Long_Target0{123.374722 * Deg2Rad}, Lat_Target0{42.392222 * Deg2Rad}, angle_Target0{0.0};
    double Long_Target1{123.368644 * Deg2Rad}, Lat_Target1{42.384428 * Deg2Rad}, angle_Target1{90};
    double Long_Target2{123.364229 * Deg2Rad}, Lat_Target3{42.386320 * Deg2Rad}, angle_Target3{90};
    double Long_Target3{123.370308 * Deg2Rad}, Lat_Target2{42.394114 * Deg2Rad}, angle_Target2{90};
    double Long_Target4{123.374724 * Deg2Rad}, Lat_Target4{42.392221 * Deg2Rad}, angle_Target4{90};
    double Long_Target5{123.374722 * Deg2Rad}, Lat_Target5{42.392222 * Deg2Rad}, angle_Target5{0};
    int flag_point = 1;
    double angle_Target = 0;

    double Long_Target_arr[5] = {Long_Target1, Long_Target2, Long_Target3, Long_Target4, Long_Target1};
    double Lat_Target_arr[5] = {Lat_Target1, Lat_Target2, Lat_Target3, Lat_Target4, Lat_Target1};
    double angle_Target_arr[5] = {angle_Target1, angle_Target2, angle_Target3, angle_Target4, angle_Target5};
    double Turn_long{0.0}, Turn_lat{0.0};

    double Lat{0.0}, Long{0.0}, Lat_ini{0.0}, Long_ini{0.0}, Lat_Target{0.0}, Long_Target{0.0};

    /*导航解算*/
    Point a_pos, b_pos;
    Vec dir;
    double I_p[3], I_t[3], I_s[3], I_c[3], I_0[3];
    double cur_lat_lon[2];
    double sp_lat_lon[2];
    double pre_lat_lon[2];
    double sp_c_lat_lon[2];
    Point get_plane_to_sp_vector(Point origin, Point target);
    double heading_sp, heading_sp_next;
    double Dis{0}, Dis_y{0}, DYr{0}, Dis_y_integ{0}, gD{0};

    //状态更新
    void status_update();
    //通用函数
    void Navigation(double lat_m, double long_m, double lat_s, double long_s, double lat_e, double long_e);
    // void RelativeLocation(double lat_m, double long_m, double lat_s, double long_s, double lat_e, double long_e);
    // void Func_Dictate();
    double limit1(double x, double t);
    double limit2(double x, double min, double max);

    double Transition(double t_begin, double t_end, double t_current);
    void Vincent_Z(double S_MT, double Alf_MT, double g_Longitude, double g_Latitude, double *g_Longitude_T, double *g_Latitude_T);
    void Vincenty_F(double Long_T, double Lat_T, double g_Longitude, double g_Latitude, double *g_R_MT, double *g_Alpha12_MT);

public:
    void run();
    void set_planeID(int id);
    // void test1();
    // void test2();
};

#endif