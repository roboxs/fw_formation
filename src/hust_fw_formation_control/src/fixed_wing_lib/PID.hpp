#ifndef _MY_CONTROLLER_HPP_
#define _MY_CONTROLLER_HPP_
#include<iostream>
#include"syslib.hpp"
#include "mathlib.hpp"

using namespace std;

class  MY_CONTROLLER{
    public:
    void out_controller(float pos_err, float vel_err,float a_r,float k1_t1,float k1_t2,float k2_t,float x_r,float v_r,float dt);
    void out_controller(float pos_err, float vel_err,float a_r,float k1,float k2,float k3,float dt);
    float get_output();
    void reset_incre_pid();
    void set_prev_output(float prev);
    private:
     float a_k{0.0};
    float v_k{0.0};
    float v_k_1{0.0};
};
void MY_CONTROLLER::set_prev_output(float prev)
{
    v_k_1=prev;
}
void MY_CONTROLLER::out_controller(float pos_err, float vel_err,float a_r,float k1_t1,float k1_t2,float k2_t,float x_r,float v_r,float dt)
{
    float k3_t1,k3_t2;
    k1_t1=k1_t1-(0.05*pos_err*pos_err+0.3*pos_err*vel_err);
    k1_t2=k1_t2-(0.05*pos_err*vel_err+0.3*vel_err*vel_err);
    k2_t=k2_t-0.05*pos_err*a_r+0.3*vel_err*a_r;
    k3_t1=-0.05*pos_err*x_r-0.3*vel_err*x_r;
    k3_t2=-0.05*pos_err*v_r-0.3*vel_err*v_r;
    cout<<"k1_t1:"<<k1_t1<<endl;
    cout<<"k1_t2:"<<k1_t2<<endl;
    cout<<"k2_t:"<<k2_t<<endl;
    cout<<"k3_t1:"<<k3_t1<<endl;
    cout<<"k3_t2:"<<k3_t2<<endl;
   a_k=k1_t1*pos_err+k1_t2*vel_err+k2_t*a_r+k3_t1*x_r+k3_t2*v_r;
   a_k/=100;
   cout<<"a_k:"<<a_k<<endl;
    v_k=v_k_1+a_k*dt;
    cout<<"v_k1:"<<v_k<<endl;
   if(v_k>=30) v_k=30;
  else if(v_k<=0) v_k=0;
  cout<<"v_k2:"<<v_k<<endl;
    v_k_1=v_k;
}

void MY_CONTROLLER::out_controller(float pos_err, float vel_err,float a_r,float k1,float k2,float k3,float dt)
{
    a_k=k1*pos_err+k2*vel_err+k3*a_r;
    cout<<"a_k:"<<a_k<<endl;
    v_k=v_k_1+a_k*dt;
    cout<<"v_k1:"<<v_k<<endl;
    if(v_k>=30) v_k=30;
    else if(v_k<=0) v_k=0;
    cout<<"v_k2:"<<v_k<<endl;
    v_k_1=v_k;
}

float MY_CONTROLLER::get_output()
{
    return v_k;
}
void MY_CONTROLLER::reset_incre_pid()
{
    a_k=0.0;
    v_k=0.0;
    v_k_1=0.0;
}

#endif