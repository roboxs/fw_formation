# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xiaodu/fw_formation/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xiaodu/fw_formation/build

# Include any dependencies generated for this target.
include hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/depend.make

# Include the progress variables for this target.
include hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/progress.make

# Include the compile flags for this target's objects.
include hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/flags.make

hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o: hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/flags.make
hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o: /home/xiaodu/fw_formation/src/hust_fw_formation_control/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xiaodu/fw_formation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o"
	cd /home/xiaodu/fw_formation/build/hust_fw_formation_control && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o -c /home/xiaodu/fw_formation/src/hust_fw_formation_control/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp

hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.i"
	cd /home/xiaodu/fw_formation/build/hust_fw_formation_control && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xiaodu/fw_formation/src/hust_fw_formation_control/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp > CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.i

hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.s"
	cd /home/xiaodu/fw_formation/build/hust_fw_formation_control && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xiaodu/fw_formation/src/hust_fw_formation_control/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp -o CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.s

hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o.requires:

.PHONY : hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o.requires

hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o.provides: hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o.requires
	$(MAKE) -f hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/build.make hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o.provides.build
.PHONY : hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o.provides

hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o.provides.build: hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o


# Object files for target switch_fw1_mode
switch_fw1_mode_OBJECTS = \
"CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o"

# External object files for target switch_fw1_mode
switch_fw1_mode_EXTERNAL_OBJECTS =

/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/build.make
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libmavros.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libGeographic.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libdiagnostic_updater.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libeigen_conversions.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/liborocos-kdl.so.1.4.0
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libmavconn.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libclass_loader.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/libPocoFoundation.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libdl.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libroslib.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/librospack.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libtf2_ros.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libactionlib.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libmessage_filters.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libtf2.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libroscpp.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/librosconsole.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/librostime.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /opt/ros/melodic/lib/libcpp_common.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: /home/xiaodu/fw_formation/devel/lib/libswitch_fw_mode.so
/home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode: hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xiaodu/fw_formation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode"
	cd /home/xiaodu/fw_formation/build/hust_fw_formation_control && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/switch_fw1_mode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/build: /home/xiaodu/fw_formation/devel/lib/hust_fw_formation_control/switch_fw1_mode

.PHONY : hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/build

hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/requires: hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/src/multi_fw_node/switch_fws_mode/switch_fw1_mode.cpp.o.requires

.PHONY : hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/requires

hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/clean:
	cd /home/xiaodu/fw_formation/build/hust_fw_formation_control && $(CMAKE_COMMAND) -P CMakeFiles/switch_fw1_mode.dir/cmake_clean.cmake
.PHONY : hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/clean

hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/depend:
	cd /home/xiaodu/fw_formation/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xiaodu/fw_formation/src /home/xiaodu/fw_formation/src/hust_fw_formation_control /home/xiaodu/fw_formation/build /home/xiaodu/fw_formation/build/hust_fw_formation_control /home/xiaodu/fw_formation/build/hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hust_fw_formation_control/CMakeFiles/switch_fw1_mode.dir/depend

