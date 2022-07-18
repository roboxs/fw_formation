#bash  \必须跟一个空格
gnome-terminal --window -e 'bash -c "cd ~/fw_formation; catkin_make; exec bash"' \
--tab -e 'bash -c "sleep 2; source ~/.bashrc;roslaunch px4 single_uav_mavros_sitl_sdf_1.launch;  exec bash"' \
--tab -e 'bash -c "sleep 6; rosrun hust_fw_formation_control pack_fw1_states;exec bash"' \
--tab -e 'bash -c "sleep 8; rosrun hust_fw_formation_control follower1_main;exec bash"' \
--window -e 'bash -c "sleep 8; rosrun hust_fw_formation_control switch_fw1_mode;exec bash"' \

