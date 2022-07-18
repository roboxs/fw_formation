/**
 * @file leader_main.cpp
 * @author hust
 * @brief 生成vir_sim_leader节点
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include"../../test/vir_leader/vir_sim_leader.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "vir_sim_leader");

    VirLeader vir_leader;

    if (true)
    {
        vir_leader.run(argc, argv);
    }

    return 0;
}