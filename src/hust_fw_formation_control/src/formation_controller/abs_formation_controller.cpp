/*
 * @------------------------------------------1: 1------------------------------------------@
 * @Author: lee-shun
 * @Email: 2015097272@qq.com
 * @Date: 2020-04-08 10:56:50
 * @Organization: BIT-CGNC, fixed_wing_group
 * @Description:  
 * @------------------------------------------2: 2------------------------------------------@
 * @LastEditors: lee-shun
 * @LastEditors_Email: 2015097272@qq.com
 * @LastEditTime: 2020-04-13 00:00:06
 * @LastEditors_Organization: BIT-CGNC, fixed_wing_group
 * @LastEditors_Description:  
 * @------------------------------------------3: 3------------------------------------------@
 */
#include "abs_formation_controller.hpp"

/**
 * @Input: void
 * @Output: void
 * @Description: 以便重置控制器中有“记忆”的量
 */
void ABS_FORMATION_CONTROLLER::reset_formation_controller()
{
  rest_speed_pid = true;
  rest_tecs = true;
  reset_lateral_controller = true;
  rest_my_contoller=true;
  rest_pid_h=true;
  rest_pid_p=true;
}
/**
 * @Input: void
 * @Output: void
 * @Description: 设定abs编队混合误差产生参数
 */
void ABS_FORMATION_CONTROLLER::set_mix_Xerr_params(struct _s_mix_Xerr_params &input_params)
{
  mix_Xerr_params = input_params;
}
/**
 * @Input: void
 * @Output:void
 * @Description:设定滚转角混合误差产生系数
 */
void ABS_FORMATION_CONTROLLER::set_mix_Yerr_params(struct _s_mix_Yerr_params &input_params)
{
  mix_Yerr_params = input_params;
}
/**
 * @Input: void
 * @Output: void
 * @Description: 获得编队控制前向混合器参数
 */
void ABS_FORMATION_CONTROLLER::get_mix_Xerr_params(struct _s_mix_Xerr_params &mix_Xerr_para)
{
  mix_Xerr_para = mix_Xerr_params;
}
/**
 * @Input: void
 * @Output: void
 * @Description: 获得编队控制器侧向参数
 */
void ABS_FORMATION_CONTROLLER::get_mix_Yerr_params(struct _s_mix_Yerr_params &mix_Yerr_para)
{
  mix_Yerr_para = mix_Yerr_params;
}
/**
 * @Input: void
 * @Output: void
 * @Description: 设定tecs控制器参数
 */
void ABS_FORMATION_CONTROLLER::set_tecs_params(struct _s_tecs_params &input_params)
{
  tecs_params = input_params;
}

/**
 * @Input: void
 * @Output: void
 * @Description: 
 */
void ABS_FORMATION_CONTROLLER::get_launch_point(double lat,double lon ,double alt)
{
    led_lat0=lat;
    led_lon0=lon;
    led_alt0=alt;
}

/**
 * @Input: void
 * @Output: void
 * @Description: 
 */
void ABS_FORMATION_CONTROLLER::cal_plane_states()
{
      led_pos0.x=led_lat0;
      led_pos0.y=led_lon0;
      led_pos_cur.x=leader_states_f.latitude;
      led_pos_cur.y=leader_states_f.longitude;
      fol_pos_cur.x=fw_states_f.latitude;
      fol_pos_cur.y=fw_states.longitude;
     
     vector_fol_led=get_plane_to_sp_vector(fol_pos_cur,led_pos_cur);

    Point NE_DIS0=cov_lat_long_2_m(led_pos0,fol_pos_cur);
    Point NE_DIS_FOL=cov_lat_long_2_m(led_pos_cur,fol_pos_cur);
    Point NE_DIS_LED=cov_lat_long_2_m(led_pos0,led_pos_cur);
     /*地面坐标系下，从机信息,zhangjixinxi*/
     Xg_fol=NE_DIS0.x;
     Yg_fol=NE_DIS0.y;
     Zg_fol=fw_states_f.relative_alt;
     VXg_fol=fw_states_f.global_vel_x;
     VYg_fol=fw_states_f.global_vel_y;
     VZg_fol=fw_states_f.global_vel_z;

     Xg_led=NE_DIS_LED.x;
     Yg_led=NE_DIS_LED.y;
     Zg_led=leader_states_f.relative_alt;
     VXg_led=leader_states_f.global_vel_x;
     VYg_led=leader_states_f.global_vel_y;
     VZg_led=leader_states_f.global_vel_z;
     /*以领机为坐标原点ned坐标系下，从机信息*/
     Xn_fol=NE_DIS_FOL.x;
     Ye_fol=NE_DIS_FOL.y;
     Zd_fol=fw_states_f.relative_alt-leader_states_f.relative_alt;
      /*以领机为坐标原点航迹坐标系下，从机信息*/
    Xk_fol=led_dir_unit*NE_DIS_FOL;
    Yk_fol=led_dir_unit^NE_DIS_FOL;
    Zk_fol=fw_states_f.relative_alt-leader_states_f.relative_alt;
     cout<<"/*****************************info*****************************/"<<endl;
     cout<<"Xg_fol:"<<Xg_fol<<"Yg_fol:"<<Yg_fol<<"Zg_fol:"<<Zg_fol<<endl;
      cout<<"VXg_fol:"<<VXg_fol<<"VYg_fol:"<<VYg_fol<<"VZg_fol:"<<VZg_fol<<endl;
      cout<<"Xg_led:"<<Xg_led<<"Yg_led:"<<Yg_led<<"Zg_led:"<<Zg_led<<endl;
      cout<<"VXg_led:"<<VXg_led<<"VYg_led:"<<VYg_led<<"VZg_led:"<<VZg_led<<endl;
      cout<<endl;
    cout<<"Xn_fol:"<<Xn_fol<<"Ye_fol:"<<Ye_fol<<"Zd_fol:"<<Zd_fol<<endl;
     cout<<endl;
      cout<<"Xk_fol:"<<Xk_fol<<"Yk_fol:"<<Yk_fol<<"Zk_fol:"<<Zk_fol<<endl;

     cout<<"/*****************************info*****************************/"<<endl;
}
/**
 * @Input: void
 * @Output: void
 * @Description: 调用滤波器对输入的飞机原始状态进行滤波   一阶滤波    只对领机进行了滤波?
 */
void ABS_FORMATION_CONTROLLER::filter_led_fol_states()
{
  fw_states_f = fw_states;
  leader_states_f = leader_states;

  if (use_the_filter)
  {
    leader_states_f.global_vel_x =
        led_gol_vel_x_filter.one_order_filter(leader_states.global_vel_x);

    leader_states_f.global_vel_y =
        led_gol_vel_y_filter.one_order_filter(leader_states.global_vel_y);
  }
}

/**
 * @Input: void
 * @Output: void
 * @Description: 控制器
 */
void ABS_FORMATION_CONTROLLER::controller()
{
    K_x=0.01;
    Kd_x=0.1;
    Ka_x=1.0;
    Ar_x=(VXg_led-Vprev_x)/_dt;
    Ua_x=K_x*(Xg_led-Xg_fol+formation_offset.yb)+Kd_x*(VXg_led-VXg_fol)+Ka_x*Ar_x;

    K_y=0.01;
    Kd_y=0.1;
    Ka_y=1.0;
    Ar_y=(VYg_led-Vprev_y)/_dt;
    Ua_y=K_y*(Yg_led-Yg_fol)+Kd_y*(VYg_led-VYg_fol)+Ka_y*Ar_y;

    K_z=0.01;
    Kd_z=0.1;
    Ka_z=1.0;
    Ar_z=(VZg_led-Vprev_z)/_dt;
    float Errz=Zg_led-Zg_fol,Errvz=VZg_led-VZg_fol;
    Ua_z=K_z*Errz+Kd_z*Errvz+Ka_z*Ar_z;

    /***速度控制***/
    Uv_x=Uv_prev_x+Ua_x*_dt;
    Uv_y=Uv_prev_y+Ua_y*_dt;
    Uv_z=Uv_prev_z+Ua_z*_dt;

     U_v=sqrt(Uv_x*Uv_x+Uv_y*Uv_y+Uv_z*Uv_z);
    /***高度控制***/
     U_h=Uh_z_prev+Uv_z*_dt;
    /***滚转控制***/
     U_r=atanf(Ua_y/CONSTANTS_ONE_G);

    Uh_z_prev=U_h;
    Uv_prev_x=Uv_x;
    Uv_prev_y=Uv_y;
    Uv_prev_z=Uv_z;
    Vprev_x=VXg_led;
    Vprev_y=VYg_led;
    Vprev_z=VZg_led;

    // /********************print*****************/
    // cout<<"x方向控制量："<<endl;
    // cout<<"Ar_x:"<<Ar_x<<"-------"
    // <<"Ua_x"<<Ua_x<<"-------"
    // <<"Uv_x"<<Uv_x<<endl;

    //  cout<<"y方向控制量："<<endl;
    // cout<<"Ar_y:"<<Ar_y<<"-------"
    // <<"Ua_y"<<Ua_y<<"-------"
    // <<"Uv_y"<<Uv_y<<"-------"
    // <<"U_r"<<U_r<<endl;

    //   cout<<"z方向控制量："<<endl;
    // cout<<"Ar_z"<<Ar_z<<"-------"
    // <<"Ua_z"<<Ua_z<<"-------"
    // <<"Uv_z"<<Uv_z<<"-------"
    // <<"U_h"<<U_h<<endl;
   

}
/**
 * @Input: void
 * @Output: void
 * @Description: 计算从飞机当前位置到期望的位置的向量
 */

//origin->target的向量
Point ABS_FORMATION_CONTROLLER::get_plane_to_sp_vector(Point origin, Point target)
{
  Point out(deg_2_rad((target.x - origin.x)), deg_2_rad((target.y - origin.y) * cosf(deg_2_rad(origin.x))));

  return out * double(CONSTANTS_RADIUS_OF_EARTH);
}
/**
 * @Input: void
 * @Output: void
 * @Description: 控制器主函数
 */
void ABS_FORMATION_CONTROLLER::control_formation()
{
  long now = get_sys_time();
  _dt = constrain((now - abs_pos_vel_ctrl_timestamp) * 1.0e-3f, _dtMin, _dtMax);

  /**
    * 0. 原始数据滤波,从此之后，飞机的状态保存在了滤波后的状态值里面
    */

  filter_led_fol_states();

  if (!identify_led_fol_states())
  {
  
    ABS_FORMATION_CONTROLLER_INFO("警告：领机或从机未在飞行之中，无法执行编队控制器");
    return;
  }

  /**
    * 1. 根据队形要求，计算出从机期望位置的在领机航迹坐标系下的位置，然后再到->GPS位置（期望经纬高）；
    * 在此之中注意领机航迹方向的选择。
    *   a. 计算领机机头方向
    *   b. 计算从机期望位置的gps位置
    */

  float led_airspd_x = leader_states_f.wind_estimate_x + leader_states_f.global_vel_x;
  float led_airspd_y = leader_states_f.wind_estimate_y + leader_states_f.global_vel_y;

  led_arispd.set_vec_ele(led_airspd_x, led_airspd_y);                                    /* 领机空速向量 */
  led_gspeed_2d.set_vec_ele(leader_states_f.global_vel_x, leader_states_f.global_vel_y); /* 领机地速向量 */


  /* 计算获得的空速与读取的空速差距较大    判断空速是否有效   len向量长度*/
  if ((led_arispd.len() - leader_states_f.air_speed) >= 3.0)
  {
    led_airspd_states_valid = false;
  }
  else
  {
    led_airspd_states_valid = true;
  }

  /*地速太小的情况*/
  if (led_gspeed_2d.len() <= 3.0)
  {
    if (leader_states_f.yaw_valid)
    {
      led_cos_dir = cosf(leader_states_f.yaw_angle);
      led_sin_dir = sinf(leader_states_f.yaw_angle);
      ABS_FORMATION_CONTROLLER_INFO("领机地速太小，选用领机航向角");
    }
    else
    {
      led_cos_dir = 0;
      led_sin_dir = 0;
      ABS_FORMATION_CONTROLLER_INFO("领机地速太小，且领机航向角未知");
    }
  }
  else
  {
    led_cos_dir = led_gspeed_2d.x / led_gspeed_2d.len();
    led_sin_dir = led_gspeed_2d.y / led_gspeed_2d.len();
    ABS_FORMATION_CONTROLLER_INFO("领机地速正常，选用领机地速方向");
  }
 /*NED编队的偏移量    论文里有*/
  formation_offset.ned_n = led_cos_dir * formation_offset.xb + (-led_sin_dir * formation_offset.yb);
  formation_offset.ned_e = led_sin_dir * formation_offset.xb + led_cos_dir * formation_offset.yb;
  formation_offset.ned_d = formation_offset.zb;

  double ref[3], result[3];
  ref[0] = leader_states_f.latitude;
  ref[1] = leader_states_f.longitude;
  ref[2] = leader_states_f.altitude;

  cov_m_2_lat_long_alt(ref, formation_offset.ned_n, formation_offset.ned_e, formation_offset.ned_d, result);
/*计算得到从机的经纬高GPS位置*/
  fw_sp.latitude = result[0];
  fw_sp.longitude = result[1];
  fw_sp.altitude = result[2];

  /* 保证归一化的结果，此向量代表了领机的速度方向  注意!归一化的量可以代表方向*/
  led_dir_unit.x=led_cos_dir;
  led_dir_unit.y=led_sin_dir;
  led_dir_unit = led_dir_unit.normalized();

  /**
     * 2. 计算本机航迹系，默认顺序：
     *      1. 本机地速方向
     *      2. 本机航迹角
     *      3. 有误
    */

  float fw_airspd_x = fw_states_f.wind_estimate_x + fw_states_f.global_vel_x;
  float fw_airspd_y = fw_states_f.wind_estimate_y + fw_states_f.global_vel_y;

  fw_arispd.set_vec_ele(fw_airspd_x, fw_airspd_y);                              /* 本机空速向量 */
  fw_gspeed_2d.set_vec_ele(fw_states_f.global_vel_x, fw_states_f.global_vel_y); /* 本机地速向量 */


  if ((fw_arispd.len() - fw_states_f.air_speed) >= 3.0) /* 计算获得的空速与读取的空速差距较大 */
  {
    fw_airspd_states_valid = false;
  }
  else
  {
    fw_airspd_states_valid = true;
  }

  if (fw_gspeed_2d.len() <= 3.0) /*本机地速太小的情况*/
  {
    if (fw_states_f.yaw_valid)
    {
      fw_cos_dir = cosf(fw_states_f.yaw_angle);
      fw_sin_dir = sinf(fw_states_f.yaw_angle);
      ABS_FORMATION_CONTROLLER_INFO("本机地速太小，选用从机航向角");
    }
    else
    {
      fw_cos_dir = 0;
      fw_sin_dir = 0;
      ABS_FORMATION_CONTROLLER_INFO("本机地速太小，且从机航向角未知");
    }
  }
  else
  {
    fw_cos_dir = fw_gspeed_2d.x / fw_gspeed_2d.len();
    fw_sin_dir = fw_gspeed_2d.y / fw_gspeed_2d.len();
    ABS_FORMATION_CONTROLLER_INFO("本机地速正常，选用从机地速方向");
  }

  /* 保证归一化的结果，此向量十分重要，代表了从机速度方向*/
  fw_dir_unit.x=fw_cos_dir;
 fw_dir_unit.y= fw_sin_dir;
  fw_dir_unit = fw_dir_unit.normalized();

  /**
    * 3. 计算从机的期望位置与当前位置的误差在从机航迹坐标系下的投影
    */

  Point pos_sp(fw_sp.latitude, fw_sp.longitude);                     /* 期望位置 */
  Point current_pos(fw_states_f.latitude, fw_states_f.longitude);    /* 当前位置 */

  Point leader_pos(leader_states_f.latitude,leader_states_f.longitude); /*原点*/

 // Vec err_leader_leadersp=get_plane_to_sp_vector(pos_sp,leader_pos);
  Vec vector_plane_sp = get_plane_to_sp_vector(current_pos, pos_sp); /* 计算飞机到期望点向量(本质来说是误差向量) */
//fw_error.a=led_dir_unit*err_leader_leadersp;
//fw_error.b=led_dir_unit^err_leader_leadersp;
//fw_error.c=0;
cal_plane_states();

//NE_Distance=cov_lat_long_2_m(leader_pos,pos_sp);
//fw_NE_Distance=cov_lat_long_2_m(leader_pos,current_pos);
//cout<<" formation_offset.ned_n"<< formation_offset.ned_n<<endl;
//cout<<" formation_offset.ned_e"<< formation_offset.ned_e<<endl;
//fw_NE_Distance=cov_lat_long_2_m(leader_pos,current_pos);
//cout<<"current.N"<<NE_Distance.x<<endl;
//cout<<"current.E"<<NE_Distance.y<<endl;


  /* fw_error.PXk = fw_dir_unit * vector_plane_sp;         /1* 沿地速度方向距离误差（待检验） *1/ */
  /* fw_error.PYk = fw_dir_unit ^ vector_plane_sp;         /1* 垂直于地速度方向距离误差 *1/ */
  //cout<<"vector_plane_sp.x"<<vector_plane_sp.x<<endl;
  //cout<<"vector_plane_sp.y"<<vector_plane_sp.y<<endl;

  fw_error. PXk= led_dir_unit * vector_plane_sp;
  fw_error.PYk = led_dir_unit ^ vector_plane_sp;         /* 垂直于地速度方向距离误差 */
  fw_error.PZk = fw_sp.altitude - fw_states_f.altitude; /* 高度方向误差 */

  double a_pos[2], b_pos[2], m[2],n[2],c_pos[2]; /* 计算ned坐标系下的位置误差 */
  a_pos[0] = fw_states_f.latitude;
  a_pos[1] = fw_states_f.longitude;
  b_pos[0] = fw_sp.latitude;
  b_pos[1] = fw_sp.longitude;
  c_pos[0]=leader_states_f.latitude;
  c_pos[1]=leader_states_f.longitude;
  cov_lat_long_2_m(c_pos,a_pos,n);


  cov_lat_long_2_m(a_pos, b_pos, m);

  fw_NE_Distance=cov_lat_long_2_m(leader_pos,current_pos);


  /* NED误差记录 */
  fw_error.P_N = m[0];
  fw_error.P_E = m[1];
  fw_error.P_D = fw_sp.altitude - fw_states_f.altitude;
  fw_error.P_NE = sqrt((m[0] * m[0] + m[1] * m[1]));
  //formation_offset.yb
//cout<<"formation_offset.ned_n-fw_NE_Distance.x"<<formation_offset.ned_n-fw_NE_Distance.x<<endl;
//cout<<"fw_error.P_N "<<fw_error.P_N <<endl;
//cout<<"formation_offset.ned_e-fw_NE_Distance.y"<<formation_offset.ned_e-fw_NE_Distance.y<<endl;
//cout<<"fw_error.P_E"<<fw_error.P_E <<endl;
led_dir_unit^fw_NE_Distance;
fw_K_Distance=fw_NE_Distance;
 float xx=led_dir_unit*fw_NE_Distance;
  float yy=led_dir_unit^fw_NE_Distance;
//cout<<"formation_offset.xb-xx"<<formation_offset.xb-xx<<endl;
//cout<<"fw_error.Xk "<<fw_error.PXk <<endl;
//cout<<"formation_offset.yb-yy"<<formation_offset.yb-yy<<endl;
//cout<<"fw_error.Yk"<<fw_error.PYk <<endl;
  /**
    * 4. 计算领机从机地速“差”在从机航迹坐标系之中的投影，控制量是地速，所以是地速之差
    * TODO:改为领机
    */

  Vec led_fol_vel_error = led_gspeed_2d - fw_gspeed_2d;
 // fw_error.led_fol_vxk = fw_dir_unit * led_fol_vel_error;                         /* 沿地速方向 */
  fw_error.led_fol_vxk=fw_dir_unit*led_fol_vel_error;
  fw_error.led_fol_vyk = fw_dir_unit ^ led_fol_vel_error;                         /* 垂直地直速方向*/
  fw_error.led_fol_vzk = leader_states_f.global_vel_z - fw_states_f.global_vel_z; /*竖直速度之差*/

  fw_error.led_fol_vk = fw_error.led_fol_vxk * fw_error.led_fol_vxk + /*地速大小之差*/
                        fw_error.led_fol_vyk * fw_error.led_fol_vyk +
                        fw_error.led_fol_vzk * fw_error.led_fol_vzk;

  /**
     *5. 计算领机从机速度角度，机体前向右偏为正,范围（0～pi/2),左偏为负，范围（-pi/2～0）。
     */

  float led_gsp_Xk = fw_dir_unit * led_gspeed_2d; /*领机地速在本机航迹坐标系中的投影*/
  float led_gsp_Yk = fw_dir_unit ^ led_gspeed_2d;

  if (led_gsp_Xk > 0 && led_gsp_Yk > 0) /*右前方*/
  {
    fw_error.led_fol_eta = atanf(led_gsp_Yk / led_gsp_Xk);
  }
  else if (led_gsp_Xk < 0 && led_gsp_Yk > 0) /*右后方*/
  {
    fw_error.led_fol_eta = PI + atanf(led_gsp_Yk / led_gsp_Xk);
  }
  else if (led_gsp_Xk > 0 && led_gsp_Yk < 0) /*左前方*/
  {
    fw_error.led_fol_eta = atanf(led_gsp_Yk / led_gsp_Xk);
  }
  else if (led_gsp_Xk < 0 && led_gsp_Yk < 0) /*左后方*/
  {
    fw_error.led_fol_eta = -PI + atanf(led_gsp_Yk / led_gsp_Xk);
  }
  else if (led_gsp_Xk == 0 && led_gsp_Yk < 0) /*正左方*/
  {
    fw_error.led_fol_eta = -PI / 2;
  }
  else if (led_gsp_Xk == 0 && led_gsp_Yk > 0) /*正右方*/
  {
    fw_error.led_fol_eta = PI / 2;
  }
  else if (led_gsp_Xk < 0 && led_gsp_Yk == 0) /*正后方*/
  {
    fw_error.led_fol_eta = -PI;
  }
  else if (led_gsp_Xk > 0 && led_gsp_Yk == 0) /*正前方*/
  {
    fw_error.led_fol_eta = 0;
  }
  else /*有误*/
  {
    fw_error.led_fol_eta = 0;
    ABS_FORMATION_CONTROLLER_INFO("领机从机角度误差有误");
  }

  /**
     * 6.判断控制分段
     */

  if (fw_error.PXk>= 30.0)
  {
    format_method = _e_format_method::LONG_DIS;
    ABS_FORMATION_CONTROLLER_INFO("现在是正长距离");
  }
  else if(fw_error.PXk>=-10&&fw_error.PXk<=60)
  {
    format_method = _e_format_method::CLOSE_DIS;
    ABS_FORMATION_CONTROLLER_INFO("现在是正短距离");
  }
  /*else if(fw_error.PXk<-10)
  {
    format_method =_e_format_method::MINUS_DIS;
    ABS_FORMATION_CONTROLLER_INFO("现在是负距离");
  }   


  /**
     * 7. 利用前向位置、速度误差产生期望速度大小
     */

  if (format_method == _e_format_method::LONG_DIS)
  {
    fw_sp.air_speed = fw_params.max_arispd_sp;

    gspeed_sp_pid.set_prev_output(fw_sp.air_speed);

    cout<<"正长距离空速："<<fw_sp.air_speed<<endl;
  }
  else if (format_method == _e_format_method::CLOSE_DIS)
  {
    //  leader_vel_prev=leader_states_f.global_vel_y;
   // if(format_method==_e_format_method::CLOSE_DIS )
    //{
              /*
      /* 1.产生前向混合误差 */
    //            float mix_err_Xk = mix_Xerr_params.kp_p * fw_error.PXk +
   //                           mix_Xerr_params.kv_p * fw_error.led_fol_vxk;   

            /* 2.混合误差产生期望地速 */
       //    if (rest_speed_pid) {
       //       rest_speed_pid = false;
        //      gspeed_sp_pid.reset_incre_pid();
        //    }
      //      gspeed_sp_pid.increment_pid(mix_err_Xk, mix_Xerr_params.mix_kp,
      //                                mix_Xerr_params.mix_ki, mix_Xerr_params.mix_kd);
      //      fw_sp.ground_speed = gspeed_sp_pid.get_full_output();
          
   // }
 // else{


                 if(rest_my_contoller)
              {
                rest_my_contoller=false;
                my_ctl.reset_incre_pid();
            }
              /*编队控制器   根据误差进行编队*/
            float k1n_pitch = -0.02;
            float k2n_pitch = -0.05;
            float k_nm_pitch = 1;
            float p2_pitch = 0.25;
            float p3_pitch = 0.15;
            float ctrl_pitch = 1;  //>=1 adaptive    <1 nominal  
            cout<<"****************************X轴**************************"<<endl;
           my_ctl.out_controller(-fw_error.PXk,-fw_error.led_fol_vxk,(leader_states_f.global_vel_y-leader_vel_prev)/_dt,k1n_pitch,k2n_pitch,k_nm_pitch,p2_pitch,p3_pitch,_dt,ctrl_pitch);//-0.05 -0.2   //-0.01 -0.1
            //控制量怎么存起
             /*计算控制部分    这个也可以试一下   不一定能用，得调试  */ 
            controller();
          
            cout<<"Controller的x轴输出量"<<U_v<<endl;
            cout<<"my_ctrl的x轴输出量"<<my_ctl.get_output_spd()<<endl;
              // fw_sp.altitude=U_h;//增加的
              //cout<<"****fw_sp.altitude:"<<fw_sp.altitude<<endl;
            leader_vel_prev=leader_states_f.global_vel_y;

            fw_sp.ground_speed=my_ctl.get_output_spd();
            //  fw_sp.ground_speed=U_v;
           fw_sp.ground_speed=constrain(fw_sp.ground_speed,-100,100);
 // }
  


    /* 3.期望地速产生期望空速 */
    fw_wind_vector.set_vec_ele(fw_states_f.wind_estimate_x,
                               fw_states_f.wind_estimate_y);
    float wind_Xk = fw_dir_unit * fw_wind_vector; /* 沿着飞机机体前向的风估计 */

    airspd_sp = fw_sp.ground_speed + wind_Xk; /* 此处的空速应该是加法 */

    //ABS_FORMATION_CONTROLLER_INFO("原始空速设定值：" << airspd_sp);

    /* 符合飞机本身的加速减速特性： */
    /* ATTENTION:慎用，加上之后,需要加大飞机的前向后相加速度，由于延时作用太强，可能导致不稳定。
     */
    /*
    if ((airspd_sp - airspd_sp_prev) > fw_params.maxinc_acc * _dt)
    {
      airspd_sp = airspd_sp_prev + fw_params.maxinc_acc * _dt;
    }
    else if ((airspd_sp - airspd_sp_prev) < -fw_params.maxdec_acc * _dt)
    {
      airspd_sp = airspd_sp_prev - fw_params.maxdec_acc * _dt;
    }
*/
    airspd_sp = airspd_sp_filter.one_order_filter(airspd_sp); /* 进入一阶低通滤波器 */

    airspd_sp_prev = airspd_sp;

    fw_sp.air_speed = constrain(airspd_sp, fw_params.min_arispd_sp,
                                fw_params.max_arispd_sp);
    ABS_FORMATION_CONTROLLER_INFO("正短距离原始空速限幅设定值：" << fw_sp.air_speed);
  }
  /*else if(format_method == _e_format_method::MINUS_DIS)
  {
           fw_sp.air_speed= fw_params.min_arispd_sp;
           gspeed_sp_pid.set_prev_output(fw_sp.air_speed);
  }*/
  else
  {
    ABS_FORMATION_CONTROLLER_INFO("分段有误，无法计算期望速度");
  }

  /**
     * 8.调用TECS获得期望俯仰角以及期望油门
     */
  if (rest_tecs)
  {
    rest_tecs = false;
    _tecs.reset_state();
  }
  /* 设置参数,真实的飞机还需要另外调参 */

  _tecs.set_speed_weight(tecs_params.speed_weight);
  _tecs.set_time_const_throt(tecs_params.time_const_throt); /* 这个值影响到总能量-->油门的（相当于Kp，他越大，kp越小） */
  _tecs.set_time_const(tecs_params.time_const);             /* 这个值影响到能量分配-->俯仰角他越大，kp越小 */
  _tecs.enable_airspeed(true);

  if (fw_sp.altitude - fw_states.altitude >= 10) /* 判断一下是否要进入爬升 */

  {
    tecs_params.climboutdem = true;
  }
  else
  {
    tecs_params.climboutdem = false;
  }

  _tecs.update_vehicle_state_estimates(fw_states_f.air_speed, fw_states_f.rotmat, fw_states_f.body_acc,
                                       fw_states_f.altitude_lock, fw_states_f.in_air, fw_states_f.altitude,
                                       vz_valid, fw_states_f.ned_vel_z, fw_states_f.body_acc[2]);

  _tecs.update_pitch_throttle(fw_states_f.rotmat, fw_states_f.pitch_angle,
                              fw_states_f.altitude, fw_sp.altitude, fw_sp.air_speed,
                              fw_states_f.air_speed, tecs_params.EAS2TAS, tecs_params.climboutdem,
                              tecs_params.climbout_pitch_min_rad, fw_params.throttle_min,
                              fw_params.throttle_max, fw_params.throttle_cruise,
                              fw_params.pitch_min_rad, fw_params.pitch_max_rad);

 // cout<<" tecs_params.EAS2TAS:"<<tecs_params.EAS2TAS<<endl;
  //  cout<<"  tecs_params.climboutdem:"<< tecs_params.climboutdem<<endl;
   //   cout<<" tecs_params.climbout_pitch_min_rad:"<<tecs_params.climbout_pitch_min_rad<<endl;
    //    cout<<"fw_params.throttle_min:"<<fw_params.throttle_min<<endl;
    //      cout<<"fw_params.throttle_max:"<<fw_params.throttle_max<<endl;
    //      cout<<" fw_params.throttle_cruise:"<< fw_params.throttle_cruise<<endl;
    //      cout<<" fw_params.pitch_min_rad:"<< fw_params.pitch_min_rad<<endl;
    //        cout<<"fw_params.pitch_max_rad:"<<fw_params.pitch_max_rad<<endl;


  //*****获取cmd期望pitch和thrust*****//
  _cmd.pitch = _tecs.get_pitch_setpoint();
  _cmd.thrust = _tecs.get_throttle_setpoint();

  /*********切换模式需要重置Pid中变量，防止存在记忆量*************/
 /* if (rest_pid_p)
  {
    rest_pid_p = false;
    pitch_ctl.reset_pid();
  }
  if (rest_pid_h)
  {
    rest_pid_h = false;
    thrust_ctl.reset_pid();
  }
*/
  /*****************通过高度偏差控制俯仰角*****************/
/*  pitch_ctl.init_pid(0.05,0.01,0);
  _cmd.pitch=pitch_ctl.pid_anti_saturated(fw_sp.altitude-fw_states_f.altitude,1,0);*/
  /****************通过速度偏差控制油门量****************/
  /*thrust_ctl.init_pid(0.05,0.01,0);
 _cmd.thrust=thrust_ctl.pid_anti_saturated(fw_sp.air_speed-fw_states_f.air_speed,1,0);*/
  

  /**
     * 9. 利用横侧向位置、角度误差产生期望滚转角
     */

  if (false&&format_method == _e_format_method::LONG_DIS)
  {

    /* L1控制方法 */

    l1_controller.l1_controller(current_pos, pos_sp, fw_gspeed_2d, fw_states_f.air_speed);

    roll_cmd = l1_controller.nav_roll(); /* 获取期望控制滚转 */
  }
  else if (true||format_method == _e_format_method::CLOSE_DIS)
  {

    /* 位置与角度误差控制方法 */
    if (fw_error.led_fol_eta <= deg_2_rad(60.0) &&
        fw_error.led_fol_eta >= deg_2_rad(-60.0)) {
      mix_Yerr_params.kp_p = 0.005;
    } else {
      mix_Yerr_params.kp_p = 0.0;
    }


    float mix_err_Yk = mix_Yerr_params.keta_p * fw_error.led_fol_eta + mix_Yerr_params.kp_p * fw_error.PYk;

    if (reset_lateral_controller)
    {
      reset_lateral_controller = false;
      roll_sp_pid.reset_incre_pid();
    }

    roll_sp_pid.increment_pid(mix_err_Yk, mix_Yerr_params.mix_kp, mix_Yerr_params.mix_ki, mix_Yerr_params.mix_kd);

    float Phi_dot_sp = roll_sp_pid.get_full_output();

    float roll_cmd_ori = atanf((Phi_dot_sp*fw_gspeed_2d.len())/CONSTANTS_ONE_G);

//*****************控制器加入********************************//
        if(rest_my_contoller)
              {
                rest_my_contoller=false;
                my_roll_ctrl.reset_incre_pid();
            }
              /*编队控制器   根据误差进行编队*/
            float k1n_roll = -0.015;
            float k2n_roll = -0.04;
            float k_nm_roll = 1;
            float p2_roll = 0.25;
            float p3_roll = 0.15;
            float ctrl_roll = 0;  //>=1 adaptive    <1 nominal  

            cout<<"****************************Y轴**************************"<<endl;
             cout<<"fw_error_pyk:"<<fw_error.PYk<<endl;
             cout<<"fw_error_led_fol_vyk"<<fw_error.led_fol_vyk<<endl;
            my_roll_ctrl.out_controller(-fw_error.PYk,-fw_error.led_fol_vyk,(leader_states_f.global_vel_x-leader_vel_prev_1)/_dt,k1n_roll,k2n_roll,k_nm_roll,p2_roll,p3_roll,_dt,ctrl_roll);//-0.05 -0.2   //-0.01 -0.1
            //控制量怎么存起来   
             /*计算控制部分    这个也可以试一下   不一定能用，得调试  */ 
             //x 指的是航迹坐标系xk， y指的是航迹坐标系yk
              controller();
            cout<<"Controller的y轴输出量:"<<U_r<<endl;
             cout<<"my_roll_ctrl的y轴get_output:"<<my_roll_ctrl.get_output()<<endl;
            cout<<"my_roll_ctrl的y轴乘fw_gspeed:"<<fw_gspeed_2d.len()<<endl;
            cout<<"my_roll_ctrl的y轴控制量:"<<atanf((my_roll_ctrl.get_output()*fw_gspeed_2d.len())/CONSTANTS_ONE_G)<<endl;
            cout<<"roll_cmd的y轴控制量:"<<roll_cmd_ori<<endl;
            //  cout<<"***********************领机速度值**************************"<<endl;
            //  cout<<"leader  GPS速度 x轴："<<leader_states_f.global_vel_x<<endl;
            //  cout<<"leader  GPS速度 y轴："<<leader_states_f.global_vel_y<<endl;
            //  cout<<"leader  GPS速度 z轴："<<leader_states_f.global_vel_z<<endl;
            //  cout<<"leader  NED速度 x轴："<<leader_states_f.ned_vel_x<<endl;
            //  cout<<"leader  NED速度 y轴："<<leader_states_f.ned_vel_y<<endl;
            //  cout<<"leader  NED速度 z轴："<<leader_states_f.ned_vel_z<<endl;

            //领机的速度选用哪一个？由此来计算领机在这个方向的控制量
            leader_vel_prev_1=leader_states_f.global_vel_x;
            //控制量赋值
            float Phi_dot_sp_my = my_roll_ctrl.get_output();
            roll_cmd = atanf((Phi_dot_sp_my*fw_gspeed_2d.len())/CONSTANTS_ONE_G);
//控制器结束

  }
  else
  {
    ABS_FORMATION_CONTROLLER_INFO("分段有误，无法计算期望滚转");
  }

   
  roll_cmd = constrain(roll_cmd, -fw_params.roll_max, fw_params.roll_max);
//*****获取cmd期望roll*****//
  _cmd.roll = roll_cmd;
}
