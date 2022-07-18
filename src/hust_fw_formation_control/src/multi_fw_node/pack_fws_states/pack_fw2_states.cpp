/**
 * @file pack_fw2_states.cpp
 * @author hust
 * @brief 建立pack_fw2_states节点
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "../../pack_fw_states/pack_fw_states.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pack_fw2_states");

    PackFwStates pack_fw2;
    if (true)
    {
        pack_fw2.set_planeID(2);
        pack_fw2.run(argc, argv);
    }

    return 0;
}
