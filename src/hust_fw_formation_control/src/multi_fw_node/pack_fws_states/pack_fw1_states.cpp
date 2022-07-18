/**
 * @file pack_fw1_states.cpp
 * @author hust
 * @brief 建立pack_fw1_states节点
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "../../pack_fw_states/pack_fw_states.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pack_fw1_states");

    PackFwStates pack_fw1;
    if (true)
    {
        pack_fw1.set_planeID(1);
        pack_fw1.run(argc, argv);
    }

    return 0;
}
