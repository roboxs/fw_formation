;; Auto-generated. Do not edit!


(when (boundp 'hust_fw_formation_control::FWstates)
  (if (not (find-package "HUST_FW_FORMATION_CONTROL"))
    (make-package "HUST_FW_FORMATION_CONTROL"))
  (shadow 'FWstates (find-package "HUST_FW_FORMATION_CONTROL")))
(unless (find-package "HUST_FW_FORMATION_CONTROL::FWSTATES")
  (make-package "HUST_FW_FORMATION_CONTROL::FWSTATES"))

(in-package "ROS")
;;//! \htmlinclude FWstates.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hust_fw_formation_control::FWstates
  :super ros::object
  :slots (_planeID _target_planeID _altitude_lock _in_air _control_mode _pitch_angle _yaw_angle _yaw_valid _roll_angle _roll_traget_angle _pitch_traget_angle _yaw_traget_angle _att_quater _ground_speed_ned_n _ground_speed_ned_e _ground_speed_ned_d _ground_speed _ground_speed_traget _global_vel_x _global_vel_y _global_vel_z _air_speed _wind_estimate_x _wind_estimate_y _wind_estimate_z _relative_hight _relative_hight_traget _latitude _altitude _longitude _relative_alt _ned_altitude _ned_pos_x _ned_pos_y _ned_pos_z _ned_vel_x _ned_vel_y _ned_vel_z _ned_acc_x _ned_acc_y _ned_acc_z _ned_acc _body_acc_x _body_acc_y _body_acc_z _body_acc _battery_voltage _battery_precentage _battery_current ))

(defmethod hust_fw_formation_control::FWstates
  (:init
   (&key
    ((:planeID __planeID) 0)
    ((:target_planeID __target_planeID) 0)
    ((:altitude_lock __altitude_lock) nil)
    ((:in_air __in_air) nil)
    ((:control_mode __control_mode) "")
    ((:pitch_angle __pitch_angle) 0.0)
    ((:yaw_angle __yaw_angle) 0.0)
    ((:yaw_valid __yaw_valid) nil)
    ((:roll_angle __roll_angle) 0.0)
    ((:roll_traget_angle __roll_traget_angle) 0.0)
    ((:pitch_traget_angle __pitch_traget_angle) 0.0)
    ((:yaw_traget_angle __yaw_traget_angle) 0.0)
    ((:att_quater __att_quater) (instance geometry_msgs::Quaternion :init))
    ((:ground_speed_ned_n __ground_speed_ned_n) 0.0)
    ((:ground_speed_ned_e __ground_speed_ned_e) 0.0)
    ((:ground_speed_ned_d __ground_speed_ned_d) 0.0)
    ((:ground_speed __ground_speed) 0.0)
    ((:ground_speed_traget __ground_speed_traget) 0.0)
    ((:global_vel_x __global_vel_x) 0.0)
    ((:global_vel_y __global_vel_y) 0.0)
    ((:global_vel_z __global_vel_z) 0.0)
    ((:air_speed __air_speed) 0.0)
    ((:wind_estimate_x __wind_estimate_x) 0.0)
    ((:wind_estimate_y __wind_estimate_y) 0.0)
    ((:wind_estimate_z __wind_estimate_z) 0.0)
    ((:relative_hight __relative_hight) 0.0)
    ((:relative_hight_traget __relative_hight_traget) 0.0)
    ((:latitude __latitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:relative_alt __relative_alt) 0.0)
    ((:ned_altitude __ned_altitude) 0.0)
    ((:ned_pos_x __ned_pos_x) 0.0)
    ((:ned_pos_y __ned_pos_y) 0.0)
    ((:ned_pos_z __ned_pos_z) 0.0)
    ((:ned_vel_x __ned_vel_x) 0.0)
    ((:ned_vel_y __ned_vel_y) 0.0)
    ((:ned_vel_z __ned_vel_z) 0.0)
    ((:ned_acc_x __ned_acc_x) 0.0)
    ((:ned_acc_y __ned_acc_y) 0.0)
    ((:ned_acc_z __ned_acc_z) 0.0)
    ((:ned_acc __ned_acc) (instance geometry_msgs::Vector3 :init))
    ((:body_acc_x __body_acc_x) 0.0)
    ((:body_acc_y __body_acc_y) 0.0)
    ((:body_acc_z __body_acc_z) 0.0)
    ((:body_acc __body_acc) (instance geometry_msgs::Vector3 :init))
    ((:battery_voltage __battery_voltage) 0.0)
    ((:battery_precentage __battery_precentage) 0.0)
    ((:battery_current __battery_current) 0.0)
    )
   (send-super :init)
   (setq _planeID (round __planeID))
   (setq _target_planeID (round __target_planeID))
   (setq _altitude_lock __altitude_lock)
   (setq _in_air __in_air)
   (setq _control_mode (string __control_mode))
   (setq _pitch_angle (float __pitch_angle))
   (setq _yaw_angle (float __yaw_angle))
   (setq _yaw_valid __yaw_valid)
   (setq _roll_angle (float __roll_angle))
   (setq _roll_traget_angle (float __roll_traget_angle))
   (setq _pitch_traget_angle (float __pitch_traget_angle))
   (setq _yaw_traget_angle (float __yaw_traget_angle))
   (setq _att_quater __att_quater)
   (setq _ground_speed_ned_n (float __ground_speed_ned_n))
   (setq _ground_speed_ned_e (float __ground_speed_ned_e))
   (setq _ground_speed_ned_d (float __ground_speed_ned_d))
   (setq _ground_speed (float __ground_speed))
   (setq _ground_speed_traget (float __ground_speed_traget))
   (setq _global_vel_x (float __global_vel_x))
   (setq _global_vel_y (float __global_vel_y))
   (setq _global_vel_z (float __global_vel_z))
   (setq _air_speed (float __air_speed))
   (setq _wind_estimate_x (float __wind_estimate_x))
   (setq _wind_estimate_y (float __wind_estimate_y))
   (setq _wind_estimate_z (float __wind_estimate_z))
   (setq _relative_hight (float __relative_hight))
   (setq _relative_hight_traget (float __relative_hight_traget))
   (setq _latitude (float __latitude))
   (setq _altitude (float __altitude))
   (setq _longitude (float __longitude))
   (setq _relative_alt (float __relative_alt))
   (setq _ned_altitude (float __ned_altitude))
   (setq _ned_pos_x (float __ned_pos_x))
   (setq _ned_pos_y (float __ned_pos_y))
   (setq _ned_pos_z (float __ned_pos_z))
   (setq _ned_vel_x (float __ned_vel_x))
   (setq _ned_vel_y (float __ned_vel_y))
   (setq _ned_vel_z (float __ned_vel_z))
   (setq _ned_acc_x (float __ned_acc_x))
   (setq _ned_acc_y (float __ned_acc_y))
   (setq _ned_acc_z (float __ned_acc_z))
   (setq _ned_acc __ned_acc)
   (setq _body_acc_x (float __body_acc_x))
   (setq _body_acc_y (float __body_acc_y))
   (setq _body_acc_z (float __body_acc_z))
   (setq _body_acc __body_acc)
   (setq _battery_voltage (float __battery_voltage))
   (setq _battery_precentage (float __battery_precentage))
   (setq _battery_current (float __battery_current))
   self)
  (:planeID
   (&optional __planeID)
   (if __planeID (setq _planeID __planeID)) _planeID)
  (:target_planeID
   (&optional __target_planeID)
   (if __target_planeID (setq _target_planeID __target_planeID)) _target_planeID)
  (:altitude_lock
   (&optional __altitude_lock)
   (if __altitude_lock (setq _altitude_lock __altitude_lock)) _altitude_lock)
  (:in_air
   (&optional __in_air)
   (if __in_air (setq _in_air __in_air)) _in_air)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:pitch_angle
   (&optional __pitch_angle)
   (if __pitch_angle (setq _pitch_angle __pitch_angle)) _pitch_angle)
  (:yaw_angle
   (&optional __yaw_angle)
   (if __yaw_angle (setq _yaw_angle __yaw_angle)) _yaw_angle)
  (:yaw_valid
   (&optional __yaw_valid)
   (if __yaw_valid (setq _yaw_valid __yaw_valid)) _yaw_valid)
  (:roll_angle
   (&optional __roll_angle)
   (if __roll_angle (setq _roll_angle __roll_angle)) _roll_angle)
  (:roll_traget_angle
   (&optional __roll_traget_angle)
   (if __roll_traget_angle (setq _roll_traget_angle __roll_traget_angle)) _roll_traget_angle)
  (:pitch_traget_angle
   (&optional __pitch_traget_angle)
   (if __pitch_traget_angle (setq _pitch_traget_angle __pitch_traget_angle)) _pitch_traget_angle)
  (:yaw_traget_angle
   (&optional __yaw_traget_angle)
   (if __yaw_traget_angle (setq _yaw_traget_angle __yaw_traget_angle)) _yaw_traget_angle)
  (:att_quater
   (&rest __att_quater)
   (if (keywordp (car __att_quater))
       (send* _att_quater __att_quater)
     (progn
       (if __att_quater (setq _att_quater (car __att_quater)))
       _att_quater)))
  (:ground_speed_ned_n
   (&optional __ground_speed_ned_n)
   (if __ground_speed_ned_n (setq _ground_speed_ned_n __ground_speed_ned_n)) _ground_speed_ned_n)
  (:ground_speed_ned_e
   (&optional __ground_speed_ned_e)
   (if __ground_speed_ned_e (setq _ground_speed_ned_e __ground_speed_ned_e)) _ground_speed_ned_e)
  (:ground_speed_ned_d
   (&optional __ground_speed_ned_d)
   (if __ground_speed_ned_d (setq _ground_speed_ned_d __ground_speed_ned_d)) _ground_speed_ned_d)
  (:ground_speed
   (&optional __ground_speed)
   (if __ground_speed (setq _ground_speed __ground_speed)) _ground_speed)
  (:ground_speed_traget
   (&optional __ground_speed_traget)
   (if __ground_speed_traget (setq _ground_speed_traget __ground_speed_traget)) _ground_speed_traget)
  (:global_vel_x
   (&optional __global_vel_x)
   (if __global_vel_x (setq _global_vel_x __global_vel_x)) _global_vel_x)
  (:global_vel_y
   (&optional __global_vel_y)
   (if __global_vel_y (setq _global_vel_y __global_vel_y)) _global_vel_y)
  (:global_vel_z
   (&optional __global_vel_z)
   (if __global_vel_z (setq _global_vel_z __global_vel_z)) _global_vel_z)
  (:air_speed
   (&optional __air_speed)
   (if __air_speed (setq _air_speed __air_speed)) _air_speed)
  (:wind_estimate_x
   (&optional __wind_estimate_x)
   (if __wind_estimate_x (setq _wind_estimate_x __wind_estimate_x)) _wind_estimate_x)
  (:wind_estimate_y
   (&optional __wind_estimate_y)
   (if __wind_estimate_y (setq _wind_estimate_y __wind_estimate_y)) _wind_estimate_y)
  (:wind_estimate_z
   (&optional __wind_estimate_z)
   (if __wind_estimate_z (setq _wind_estimate_z __wind_estimate_z)) _wind_estimate_z)
  (:relative_hight
   (&optional __relative_hight)
   (if __relative_hight (setq _relative_hight __relative_hight)) _relative_hight)
  (:relative_hight_traget
   (&optional __relative_hight_traget)
   (if __relative_hight_traget (setq _relative_hight_traget __relative_hight_traget)) _relative_hight_traget)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:relative_alt
   (&optional __relative_alt)
   (if __relative_alt (setq _relative_alt __relative_alt)) _relative_alt)
  (:ned_altitude
   (&optional __ned_altitude)
   (if __ned_altitude (setq _ned_altitude __ned_altitude)) _ned_altitude)
  (:ned_pos_x
   (&optional __ned_pos_x)
   (if __ned_pos_x (setq _ned_pos_x __ned_pos_x)) _ned_pos_x)
  (:ned_pos_y
   (&optional __ned_pos_y)
   (if __ned_pos_y (setq _ned_pos_y __ned_pos_y)) _ned_pos_y)
  (:ned_pos_z
   (&optional __ned_pos_z)
   (if __ned_pos_z (setq _ned_pos_z __ned_pos_z)) _ned_pos_z)
  (:ned_vel_x
   (&optional __ned_vel_x)
   (if __ned_vel_x (setq _ned_vel_x __ned_vel_x)) _ned_vel_x)
  (:ned_vel_y
   (&optional __ned_vel_y)
   (if __ned_vel_y (setq _ned_vel_y __ned_vel_y)) _ned_vel_y)
  (:ned_vel_z
   (&optional __ned_vel_z)
   (if __ned_vel_z (setq _ned_vel_z __ned_vel_z)) _ned_vel_z)
  (:ned_acc_x
   (&optional __ned_acc_x)
   (if __ned_acc_x (setq _ned_acc_x __ned_acc_x)) _ned_acc_x)
  (:ned_acc_y
   (&optional __ned_acc_y)
   (if __ned_acc_y (setq _ned_acc_y __ned_acc_y)) _ned_acc_y)
  (:ned_acc_z
   (&optional __ned_acc_z)
   (if __ned_acc_z (setq _ned_acc_z __ned_acc_z)) _ned_acc_z)
  (:ned_acc
   (&rest __ned_acc)
   (if (keywordp (car __ned_acc))
       (send* _ned_acc __ned_acc)
     (progn
       (if __ned_acc (setq _ned_acc (car __ned_acc)))
       _ned_acc)))
  (:body_acc_x
   (&optional __body_acc_x)
   (if __body_acc_x (setq _body_acc_x __body_acc_x)) _body_acc_x)
  (:body_acc_y
   (&optional __body_acc_y)
   (if __body_acc_y (setq _body_acc_y __body_acc_y)) _body_acc_y)
  (:body_acc_z
   (&optional __body_acc_z)
   (if __body_acc_z (setq _body_acc_z __body_acc_z)) _body_acc_z)
  (:body_acc
   (&rest __body_acc)
   (if (keywordp (car __body_acc))
       (send* _body_acc __body_acc)
     (progn
       (if __body_acc (setq _body_acc (car __body_acc)))
       _body_acc)))
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:battery_precentage
   (&optional __battery_precentage)
   (if __battery_precentage (setq _battery_precentage __battery_precentage)) _battery_precentage)
  (:battery_current
   (&optional __battery_current)
   (if __battery_current (setq _battery_current __battery_current)) _battery_current)
  (:serialization-length
   ()
   (+
    ;; uint16 _planeID
    2
    ;; uint16 _target_planeID
    2
    ;; bool _altitude_lock
    1
    ;; bool _in_air
    1
    ;; string _control_mode
    4 (length _control_mode)
    ;; float64 _pitch_angle
    8
    ;; float64 _yaw_angle
    8
    ;; bool _yaw_valid
    1
    ;; float64 _roll_angle
    8
    ;; float64 _roll_traget_angle
    8
    ;; float64 _pitch_traget_angle
    8
    ;; float64 _yaw_traget_angle
    8
    ;; geometry_msgs/Quaternion _att_quater
    (send _att_quater :serialization-length)
    ;; float64 _ground_speed_ned_n
    8
    ;; float64 _ground_speed_ned_e
    8
    ;; float64 _ground_speed_ned_d
    8
    ;; float64 _ground_speed
    8
    ;; float64 _ground_speed_traget
    8
    ;; float64 _global_vel_x
    8
    ;; float64 _global_vel_y
    8
    ;; float64 _global_vel_z
    8
    ;; float64 _air_speed
    8
    ;; float64 _wind_estimate_x
    8
    ;; float64 _wind_estimate_y
    8
    ;; float64 _wind_estimate_z
    8
    ;; float64 _relative_hight
    8
    ;; float64 _relative_hight_traget
    8
    ;; float64 _latitude
    8
    ;; float64 _altitude
    8
    ;; float64 _longitude
    8
    ;; float64 _relative_alt
    8
    ;; float64 _ned_altitude
    8
    ;; float64 _ned_pos_x
    8
    ;; float64 _ned_pos_y
    8
    ;; float64 _ned_pos_z
    8
    ;; float64 _ned_vel_x
    8
    ;; float64 _ned_vel_y
    8
    ;; float64 _ned_vel_z
    8
    ;; float64 _ned_acc_x
    8
    ;; float64 _ned_acc_y
    8
    ;; float64 _ned_acc_z
    8
    ;; geometry_msgs/Vector3 _ned_acc
    (send _ned_acc :serialization-length)
    ;; float64 _body_acc_x
    8
    ;; float64 _body_acc_y
    8
    ;; float64 _body_acc_z
    8
    ;; geometry_msgs/Vector3 _body_acc
    (send _body_acc :serialization-length)
    ;; float64 _battery_voltage
    8
    ;; float64 _battery_precentage
    8
    ;; float64 _battery_current
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _planeID
       (write-word _planeID s)
     ;; uint16 _target_planeID
       (write-word _target_planeID s)
     ;; bool _altitude_lock
       (if _altitude_lock (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_air
       (if _in_air (write-byte -1 s) (write-byte 0 s))
     ;; string _control_mode
       (write-long (length _control_mode) s) (princ _control_mode s)
     ;; float64 _pitch_angle
       (sys::poke _pitch_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_angle
       (sys::poke _yaw_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _yaw_valid
       (if _yaw_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _roll_angle
       (sys::poke _roll_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_traget_angle
       (sys::poke _roll_traget_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_traget_angle
       (sys::poke _pitch_traget_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_traget_angle
       (sys::poke _yaw_traget_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Quaternion _att_quater
       (send _att_quater :serialize s)
     ;; float64 _ground_speed_ned_n
       (sys::poke _ground_speed_ned_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ground_speed_ned_e
       (sys::poke _ground_speed_ned_e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ground_speed_ned_d
       (sys::poke _ground_speed_ned_d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ground_speed
       (sys::poke _ground_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ground_speed_traget
       (sys::poke _ground_speed_traget (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_vel_x
       (sys::poke _global_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_vel_y
       (sys::poke _global_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_vel_z
       (sys::poke _global_vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _air_speed
       (sys::poke _air_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wind_estimate_x
       (sys::poke _wind_estimate_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wind_estimate_y
       (sys::poke _wind_estimate_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wind_estimate_z
       (sys::poke _wind_estimate_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_hight
       (sys::poke _relative_hight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_hight_traget
       (sys::poke _relative_hight_traget (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_alt
       (sys::poke _relative_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_altitude
       (sys::poke _ned_altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_pos_x
       (sys::poke _ned_pos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_pos_y
       (sys::poke _ned_pos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_pos_z
       (sys::poke _ned_pos_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_vel_x
       (sys::poke _ned_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_vel_y
       (sys::poke _ned_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_vel_z
       (sys::poke _ned_vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_acc_x
       (sys::poke _ned_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_acc_y
       (sys::poke _ned_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_acc_z
       (sys::poke _ned_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _ned_acc
       (send _ned_acc :serialize s)
     ;; float64 _body_acc_x
       (sys::poke _body_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _body_acc_y
       (sys::poke _body_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _body_acc_z
       (sys::poke _body_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _body_acc
       (send _body_acc :serialize s)
     ;; float64 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery_precentage
       (sys::poke _battery_precentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery_current
       (sys::poke _battery_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _planeID
     (setq _planeID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _target_planeID
     (setq _target_planeID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _altitude_lock
     (setq _altitude_lock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_air
     (setq _in_air (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _control_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _pitch_angle
     (setq _pitch_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_angle
     (setq _yaw_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _yaw_valid
     (setq _yaw_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _roll_angle
     (setq _roll_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_traget_angle
     (setq _roll_traget_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_traget_angle
     (setq _pitch_traget_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_traget_angle
     (setq _yaw_traget_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Quaternion _att_quater
     (send _att_quater :deserialize buf ptr-) (incf ptr- (send _att_quater :serialization-length))
   ;; float64 _ground_speed_ned_n
     (setq _ground_speed_ned_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ground_speed_ned_e
     (setq _ground_speed_ned_e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ground_speed_ned_d
     (setq _ground_speed_ned_d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ground_speed
     (setq _ground_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ground_speed_traget
     (setq _ground_speed_traget (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_vel_x
     (setq _global_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_vel_y
     (setq _global_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_vel_z
     (setq _global_vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _air_speed
     (setq _air_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wind_estimate_x
     (setq _wind_estimate_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wind_estimate_y
     (setq _wind_estimate_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wind_estimate_z
     (setq _wind_estimate_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_hight
     (setq _relative_hight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_hight_traget
     (setq _relative_hight_traget (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_alt
     (setq _relative_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_altitude
     (setq _ned_altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_pos_x
     (setq _ned_pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_pos_y
     (setq _ned_pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_pos_z
     (setq _ned_pos_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_vel_x
     (setq _ned_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_vel_y
     (setq _ned_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_vel_z
     (setq _ned_vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_acc_x
     (setq _ned_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_acc_y
     (setq _ned_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_acc_z
     (setq _ned_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _ned_acc
     (send _ned_acc :deserialize buf ptr-) (incf ptr- (send _ned_acc :serialization-length))
   ;; float64 _body_acc_x
     (setq _body_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _body_acc_y
     (setq _body_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _body_acc_z
     (setq _body_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _body_acc
     (send _body_acc :deserialize buf ptr-) (incf ptr- (send _body_acc :serialization-length))
   ;; float64 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery_precentage
     (setq _battery_precentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery_current
     (setq _battery_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hust_fw_formation_control::FWstates :md5sum-) "3a9dfc7015c39929bc474960d75372d7")
(setf (get hust_fw_formation_control::FWstates :datatype-) "hust_fw_formation_control/FWstates")
(setf (get hust_fw_formation_control::FWstates :definition-)
      "# Message 固定翼的编队控制，可能用到的消息类型全定义
uint16 planeID

uint16 target_planeID

bool altitude_lock

bool in_air

string control_mode

float64 pitch_angle

float64 yaw_angle

bool yaw_valid

float64 roll_angle

float64 roll_traget_angle

float64 pitch_traget_angle

float64 yaw_traget_angle


geometry_msgs/Quaternion att_quater #姿态四元数，只能在外面弄下旋转矩阵了

float64 ground_speed_ned_n

float64 ground_speed_ned_e

float64 ground_speed_ned_d

float64 ground_speed

float64 ground_speed_traget

float64 global_vel_x

float64 global_vel_y

float64 global_vel_z


float64 air_speed

float64 wind_estimate_x

float64 wind_estimate_y

float64 wind_estimate_z

float64 relative_hight

float64 relative_hight_traget

float64 latitude

float64 altitude

float64 longitude

float64 relative_alt

float64 ned_altitude

float64 ned_pos_x

float64 ned_pos_y

float64 ned_pos_z

float64 ned_vel_x

float64 ned_vel_y

float64 ned_vel_z

float64 ned_acc_x

float64 ned_acc_y

float64 ned_acc_z

geometry_msgs/Vector3 ned_acc

float64 body_acc_x

float64 body_acc_y

float64 body_acc_z

geometry_msgs/Vector3 body_acc

float64 battery_voltage

float64 battery_precentage

float64 battery_current
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :hust_fw_formation_control/FWstates "3a9dfc7015c39929bc474960d75372d7")


