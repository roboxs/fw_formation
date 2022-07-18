;; Auto-generated. Do not edit!


(when (boundp 'hust_fw_formation_control::Leaderstates)
  (if (not (find-package "HUST_FW_FORMATION_CONTROL"))
    (make-package "HUST_FW_FORMATION_CONTROL"))
  (shadow 'Leaderstates (find-package "HUST_FW_FORMATION_CONTROL")))
(unless (find-package "HUST_FW_FORMATION_CONTROL::LEADERSTATES")
  (make-package "HUST_FW_FORMATION_CONTROL::LEADERSTATES"))

(in-package "ROS")
;;//! \htmlinclude Leaderstates.msg.html


(defclass hust_fw_formation_control::Leaderstates
  :super ros::object
  :slots (_pitch_angle _yaw_angle _yaw_valid _roll_angle _thrust _latitude _altitude _longitude _relative_alt _airspeed _ned_vel_x _ned_vel_y _ned_vel_z _global_vel_x _global_vel_y _global_vel_z _ned_acc_x _ned_acc_y _ned_acc_z _body_acc_x _body_acc_y _body_acc_z _rel_pos_Xb _rel_pos_Yb _rel_pos_Zb _rel_vel_Xb _rel_vel_Yb _rel_vel_Zb _rel_angle_a _rel_angle_b _rel_angle_c _rel_att_pitch _rel_att_roll _rel_att_yaw ))

(defmethod hust_fw_formation_control::Leaderstates
  (:init
   (&key
    ((:pitch_angle __pitch_angle) 0.0)
    ((:yaw_angle __yaw_angle) 0.0)
    ((:yaw_valid __yaw_valid) nil)
    ((:roll_angle __roll_angle) 0.0)
    ((:thrust __thrust) 0.0)
    ((:latitude __latitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:relative_alt __relative_alt) 0.0)
    ((:airspeed __airspeed) 0.0)
    ((:ned_vel_x __ned_vel_x) 0.0)
    ((:ned_vel_y __ned_vel_y) 0.0)
    ((:ned_vel_z __ned_vel_z) 0.0)
    ((:global_vel_x __global_vel_x) 0.0)
    ((:global_vel_y __global_vel_y) 0.0)
    ((:global_vel_z __global_vel_z) 0.0)
    ((:ned_acc_x __ned_acc_x) 0.0)
    ((:ned_acc_y __ned_acc_y) 0.0)
    ((:ned_acc_z __ned_acc_z) 0.0)
    ((:body_acc_x __body_acc_x) 0.0)
    ((:body_acc_y __body_acc_y) 0.0)
    ((:body_acc_z __body_acc_z) 0.0)
    ((:rel_pos_Xb __rel_pos_Xb) 0.0)
    ((:rel_pos_Yb __rel_pos_Yb) 0.0)
    ((:rel_pos_Zb __rel_pos_Zb) 0.0)
    ((:rel_vel_Xb __rel_vel_Xb) 0.0)
    ((:rel_vel_Yb __rel_vel_Yb) 0.0)
    ((:rel_vel_Zb __rel_vel_Zb) 0.0)
    ((:rel_angle_a __rel_angle_a) 0.0)
    ((:rel_angle_b __rel_angle_b) 0.0)
    ((:rel_angle_c __rel_angle_c) 0.0)
    ((:rel_att_pitch __rel_att_pitch) 0.0)
    ((:rel_att_roll __rel_att_roll) 0.0)
    ((:rel_att_yaw __rel_att_yaw) 0.0)
    )
   (send-super :init)
   (setq _pitch_angle (float __pitch_angle))
   (setq _yaw_angle (float __yaw_angle))
   (setq _yaw_valid __yaw_valid)
   (setq _roll_angle (float __roll_angle))
   (setq _thrust (float __thrust))
   (setq _latitude (float __latitude))
   (setq _altitude (float __altitude))
   (setq _longitude (float __longitude))
   (setq _relative_alt (float __relative_alt))
   (setq _airspeed (float __airspeed))
   (setq _ned_vel_x (float __ned_vel_x))
   (setq _ned_vel_y (float __ned_vel_y))
   (setq _ned_vel_z (float __ned_vel_z))
   (setq _global_vel_x (float __global_vel_x))
   (setq _global_vel_y (float __global_vel_y))
   (setq _global_vel_z (float __global_vel_z))
   (setq _ned_acc_x (float __ned_acc_x))
   (setq _ned_acc_y (float __ned_acc_y))
   (setq _ned_acc_z (float __ned_acc_z))
   (setq _body_acc_x (float __body_acc_x))
   (setq _body_acc_y (float __body_acc_y))
   (setq _body_acc_z (float __body_acc_z))
   (setq _rel_pos_Xb (float __rel_pos_Xb))
   (setq _rel_pos_Yb (float __rel_pos_Yb))
   (setq _rel_pos_Zb (float __rel_pos_Zb))
   (setq _rel_vel_Xb (float __rel_vel_Xb))
   (setq _rel_vel_Yb (float __rel_vel_Yb))
   (setq _rel_vel_Zb (float __rel_vel_Zb))
   (setq _rel_angle_a (float __rel_angle_a))
   (setq _rel_angle_b (float __rel_angle_b))
   (setq _rel_angle_c (float __rel_angle_c))
   (setq _rel_att_pitch (float __rel_att_pitch))
   (setq _rel_att_roll (float __rel_att_roll))
   (setq _rel_att_yaw (float __rel_att_yaw))
   self)
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
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
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
  (:airspeed
   (&optional __airspeed)
   (if __airspeed (setq _airspeed __airspeed)) _airspeed)
  (:ned_vel_x
   (&optional __ned_vel_x)
   (if __ned_vel_x (setq _ned_vel_x __ned_vel_x)) _ned_vel_x)
  (:ned_vel_y
   (&optional __ned_vel_y)
   (if __ned_vel_y (setq _ned_vel_y __ned_vel_y)) _ned_vel_y)
  (:ned_vel_z
   (&optional __ned_vel_z)
   (if __ned_vel_z (setq _ned_vel_z __ned_vel_z)) _ned_vel_z)
  (:global_vel_x
   (&optional __global_vel_x)
   (if __global_vel_x (setq _global_vel_x __global_vel_x)) _global_vel_x)
  (:global_vel_y
   (&optional __global_vel_y)
   (if __global_vel_y (setq _global_vel_y __global_vel_y)) _global_vel_y)
  (:global_vel_z
   (&optional __global_vel_z)
   (if __global_vel_z (setq _global_vel_z __global_vel_z)) _global_vel_z)
  (:ned_acc_x
   (&optional __ned_acc_x)
   (if __ned_acc_x (setq _ned_acc_x __ned_acc_x)) _ned_acc_x)
  (:ned_acc_y
   (&optional __ned_acc_y)
   (if __ned_acc_y (setq _ned_acc_y __ned_acc_y)) _ned_acc_y)
  (:ned_acc_z
   (&optional __ned_acc_z)
   (if __ned_acc_z (setq _ned_acc_z __ned_acc_z)) _ned_acc_z)
  (:body_acc_x
   (&optional __body_acc_x)
   (if __body_acc_x (setq _body_acc_x __body_acc_x)) _body_acc_x)
  (:body_acc_y
   (&optional __body_acc_y)
   (if __body_acc_y (setq _body_acc_y __body_acc_y)) _body_acc_y)
  (:body_acc_z
   (&optional __body_acc_z)
   (if __body_acc_z (setq _body_acc_z __body_acc_z)) _body_acc_z)
  (:rel_pos_Xb
   (&optional __rel_pos_Xb)
   (if __rel_pos_Xb (setq _rel_pos_Xb __rel_pos_Xb)) _rel_pos_Xb)
  (:rel_pos_Yb
   (&optional __rel_pos_Yb)
   (if __rel_pos_Yb (setq _rel_pos_Yb __rel_pos_Yb)) _rel_pos_Yb)
  (:rel_pos_Zb
   (&optional __rel_pos_Zb)
   (if __rel_pos_Zb (setq _rel_pos_Zb __rel_pos_Zb)) _rel_pos_Zb)
  (:rel_vel_Xb
   (&optional __rel_vel_Xb)
   (if __rel_vel_Xb (setq _rel_vel_Xb __rel_vel_Xb)) _rel_vel_Xb)
  (:rel_vel_Yb
   (&optional __rel_vel_Yb)
   (if __rel_vel_Yb (setq _rel_vel_Yb __rel_vel_Yb)) _rel_vel_Yb)
  (:rel_vel_Zb
   (&optional __rel_vel_Zb)
   (if __rel_vel_Zb (setq _rel_vel_Zb __rel_vel_Zb)) _rel_vel_Zb)
  (:rel_angle_a
   (&optional __rel_angle_a)
   (if __rel_angle_a (setq _rel_angle_a __rel_angle_a)) _rel_angle_a)
  (:rel_angle_b
   (&optional __rel_angle_b)
   (if __rel_angle_b (setq _rel_angle_b __rel_angle_b)) _rel_angle_b)
  (:rel_angle_c
   (&optional __rel_angle_c)
   (if __rel_angle_c (setq _rel_angle_c __rel_angle_c)) _rel_angle_c)
  (:rel_att_pitch
   (&optional __rel_att_pitch)
   (if __rel_att_pitch (setq _rel_att_pitch __rel_att_pitch)) _rel_att_pitch)
  (:rel_att_roll
   (&optional __rel_att_roll)
   (if __rel_att_roll (setq _rel_att_roll __rel_att_roll)) _rel_att_roll)
  (:rel_att_yaw
   (&optional __rel_att_yaw)
   (if __rel_att_yaw (setq _rel_att_yaw __rel_att_yaw)) _rel_att_yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _pitch_angle
    8
    ;; float64 _yaw_angle
    8
    ;; bool _yaw_valid
    1
    ;; float64 _roll_angle
    8
    ;; float64 _thrust
    8
    ;; float64 _latitude
    8
    ;; float64 _altitude
    8
    ;; float64 _longitude
    8
    ;; float64 _relative_alt
    8
    ;; float64 _airspeed
    8
    ;; float64 _ned_vel_x
    8
    ;; float64 _ned_vel_y
    8
    ;; float64 _ned_vel_z
    8
    ;; float64 _global_vel_x
    8
    ;; float64 _global_vel_y
    8
    ;; float64 _global_vel_z
    8
    ;; float64 _ned_acc_x
    8
    ;; float64 _ned_acc_y
    8
    ;; float64 _ned_acc_z
    8
    ;; float64 _body_acc_x
    8
    ;; float64 _body_acc_y
    8
    ;; float64 _body_acc_z
    8
    ;; float64 _rel_pos_Xb
    8
    ;; float64 _rel_pos_Yb
    8
    ;; float64 _rel_pos_Zb
    8
    ;; float64 _rel_vel_Xb
    8
    ;; float64 _rel_vel_Yb
    8
    ;; float64 _rel_vel_Zb
    8
    ;; float64 _rel_angle_a
    8
    ;; float64 _rel_angle_b
    8
    ;; float64 _rel_angle_c
    8
    ;; float64 _rel_att_pitch
    8
    ;; float64 _rel_att_roll
    8
    ;; float64 _rel_att_yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pitch_angle
       (sys::poke _pitch_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_angle
       (sys::poke _yaw_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _yaw_valid
       (if _yaw_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _roll_angle
       (sys::poke _roll_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_alt
       (sys::poke _relative_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _airspeed
       (sys::poke _airspeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_vel_x
       (sys::poke _ned_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_vel_y
       (sys::poke _ned_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_vel_z
       (sys::poke _ned_vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_vel_x
       (sys::poke _global_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_vel_y
       (sys::poke _global_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_vel_z
       (sys::poke _global_vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_acc_x
       (sys::poke _ned_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_acc_y
       (sys::poke _ned_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ned_acc_z
       (sys::poke _ned_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _body_acc_x
       (sys::poke _body_acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _body_acc_y
       (sys::poke _body_acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _body_acc_z
       (sys::poke _body_acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_pos_Xb
       (sys::poke _rel_pos_Xb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_pos_Yb
       (sys::poke _rel_pos_Yb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_pos_Zb
       (sys::poke _rel_pos_Zb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_vel_Xb
       (sys::poke _rel_vel_Xb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_vel_Yb
       (sys::poke _rel_vel_Yb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_vel_Zb
       (sys::poke _rel_vel_Zb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_angle_a
       (sys::poke _rel_angle_a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_angle_b
       (sys::poke _rel_angle_b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_angle_c
       (sys::poke _rel_angle_c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_att_pitch
       (sys::poke _rel_att_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_att_roll
       (sys::poke _rel_att_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rel_att_yaw
       (sys::poke _rel_att_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pitch_angle
     (setq _pitch_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_angle
     (setq _yaw_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _yaw_valid
     (setq _yaw_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _roll_angle
     (setq _roll_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust
     (setq _thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_alt
     (setq _relative_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _airspeed
     (setq _airspeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_vel_x
     (setq _ned_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_vel_y
     (setq _ned_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_vel_z
     (setq _ned_vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_vel_x
     (setq _global_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_vel_y
     (setq _global_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_vel_z
     (setq _global_vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_acc_x
     (setq _ned_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_acc_y
     (setq _ned_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ned_acc_z
     (setq _ned_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _body_acc_x
     (setq _body_acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _body_acc_y
     (setq _body_acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _body_acc_z
     (setq _body_acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_pos_Xb
     (setq _rel_pos_Xb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_pos_Yb
     (setq _rel_pos_Yb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_pos_Zb
     (setq _rel_pos_Zb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_vel_Xb
     (setq _rel_vel_Xb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_vel_Yb
     (setq _rel_vel_Yb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_vel_Zb
     (setq _rel_vel_Zb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_angle_a
     (setq _rel_angle_a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_angle_b
     (setq _rel_angle_b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_angle_c
     (setq _rel_angle_c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_att_pitch
     (setq _rel_att_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_att_roll
     (setq _rel_att_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rel_att_yaw
     (setq _rel_att_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hust_fw_formation_control::Leaderstates :md5sum-) "68a80b14eea42d16a0353d5db35bf100")
(setf (get hust_fw_formation_control::Leaderstates :datatype-) "hust_fw_formation_control/Leaderstates")
(setf (get hust_fw_formation_control::Leaderstates :definition-)
      "#本消息是定义的领机的状态消息，同样也包含了相对运动的关系

#如果能得到领机的当前姿态信息，相当于协同
float64 pitch_angle

float64 yaw_angle

bool yaw_valid

float64 roll_angle

float64 thrust#这个有点不好获得

#领机的绝对位置速度信息
float64 latitude

float64 altitude

float64 longitude

float64 relative_alt

float64 airspeed

float64 ned_vel_x

float64 ned_vel_y

float64 ned_vel_z

float64 global_vel_x

float64 global_vel_y

float64 global_vel_z

float64 ned_acc_x

float64 ned_acc_y

float64 ned_acc_z

float64 body_acc_x

float64 body_acc_y

float64 body_acc_z

#领机与本机相对位置速度信息
float64 rel_pos_Xb

float64 rel_pos_Yb

float64 rel_pos_Zb

float64 rel_vel_Xb

float64 rel_vel_Yb

float64 rel_vel_Zb

float64 rel_angle_a#相对角度，之后再改名

float64 rel_angle_b

float64 rel_angle_c

float64 rel_att_pitch

float64 rel_att_roll

float64 rel_att_yaw
")



(provide :hust_fw_formation_control/Leaderstates "68a80b14eea42d16a0353d5db35bf100")


