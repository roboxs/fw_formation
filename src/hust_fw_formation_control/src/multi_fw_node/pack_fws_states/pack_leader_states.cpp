/**
 * @file pack_fw_states.cpp
 * @author hust
 * @brief 建立pack_leader_states节点
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include "../../pack_fw_states/pack_fw_states.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pack_leader_states");

    PackFwStates pack_leader;
    if (true)
    {
        pack_leader.set_planeID(0);
        pack_leader.run(argc, argv);
    }

    return 0;
}