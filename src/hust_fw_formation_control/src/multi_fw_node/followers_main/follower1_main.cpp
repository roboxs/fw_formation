/**
 * @file follower1_main.cpp
 * @author hust
 * @brief 建立follower1_main节点,制导环在这里
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include"../../task_main/task_main.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "follower1_main");
    TaskMain follower1_main;
    if (true)
    {
        follower1_main.set_planeID(1);
        follower1_main.run();
    }
    return 0;
}
