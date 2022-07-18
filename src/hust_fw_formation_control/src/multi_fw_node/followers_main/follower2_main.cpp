/**
 * @file follower2_main.cpp
 * @author hust
 * @brief 建立follower2_main节点,制导环在这里
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include"../../task_main/task_main.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "follower2_main");
    TaskMain follower2_main;
    if (true)
    {
        follower2_main.set_planeID(2);
        follower2_main.run();
    }
    return 0;
}
