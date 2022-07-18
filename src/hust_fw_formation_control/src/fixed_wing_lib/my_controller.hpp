#ifndef _MY_CONTROLLER_HPP_
#define _MY_CONTROLLER_HPP_
#include<iostream>
#include"syslib.hpp"
#include "mathlib.hpp"

using namespace std;

class  MY_CONTROLLER{
    public:
    void out_controller(float pos_err, float vel_err,float a_r,float k1n,float k2n,float k_nm,float p2,float p3,float dt,float num);
    //void out_controller(float pos_err, float vel_err,float a_r,float k1,float k2,float k3,float dt);
    float get_output_spd();
    float get_output();
    void reset_incre_pid();
    void set_prev_output(float prev);
    private:
     float a_k{0.0};
    float v_k{0.0};
    float v_k_1{0.0};
    float time;

};
void MY_CONTROLLER::set_prev_output(float prev)
{
    v_k_1=prev;
}
void MY_CONTROLLER::out_controller(float pos_err, float vel_err,float a_r,float k1n,float k2n,float k_nm,float p2,float p3,float dt,float num)
{
    if (num>=1.0)  //自适应
    {
            //ar:领机的控制量--加速度
            float k11,k12,k1a,k2a,p2,p3,k_nm;
            k1a = -k_nm*(p2*pos_err*pos_err+p3*pos_err*vel_err);
            k2a = -k_nm*(p2*pos_err*vel_err+p3*vel_err*vel_err);
            k11 = k1n+k1a*dt; 
            k12 = k2n+k2a*dt;
            a_k=k11*pos_err+k12*vel_err+a_r;
    }
    else if(num<1.0)
    {
        a_k=k1n*(pos_err)+k2n*vel_err+a_r;//+30*sin(2*PI*time);  //加扰动
    }
    cout<<"位置误差: " <<pos_err<<endl;
    cout<<"速度误差: " <<vel_err<<endl;
    cout<<"自适应>=1  标称控制器 <1, num is : " <<num<<endl;
    cout<<"控制量加速度 a_k:"<<a_k<<endl;
    v_k=v_k_1+a_k*dt;
    cout<<"原始值速度 v_k1:"<<v_k<<endl;
    if(v_k>=30) v_k=30;
    else if(v_k<=0) v_k=0;
    cout<<"限幅速度 v_k2:"<<v_k<<endl;
    v_k_1=v_k;
}


float MY_CONTROLLER::get_output_spd()
{
    cout<<"限幅速度 v_k2:"<<v_k<<endl;
    return v_k;
    
}
float MY_CONTROLLER::get_output()
{
    return a_k;
}
void MY_CONTROLLER::reset_incre_pid()
{
    a_k=0.0;
    v_k=0.0;
    v_k_1=0.0;
}

#endif