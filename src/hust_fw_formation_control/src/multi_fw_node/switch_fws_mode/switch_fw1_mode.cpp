/**
 * @file switch_fw1_mode.cpp
 * @author hust
 * @brief 建立switch_fw1_mode节点
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "../../test/switch_fw_mode/switch_fw_mode.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "switch_fw1_mode"); //节点switch_fw1_mode

    SwitchFwMode switch_fw1;

    switch_fw1.set_planeID(1);
    switch_fw1.run();

    return 0;
}
