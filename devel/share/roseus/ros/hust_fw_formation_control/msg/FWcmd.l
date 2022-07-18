;; Auto-generated. Do not edit!


(when (boundp 'hust_fw_formation_control::FWcmd)
  (if (not (find-package "HUST_FW_FORMATION_CONTROL"))
    (make-package "HUST_FW_FORMATION_CONTROL"))
  (shadow 'FWcmd (find-package "HUST_FW_FORMATION_CONTROL")))
(unless (find-package "HUST_FW_FORMATION_CONTROL::FWCMD")
  (make-package "HUST_FW_FORMATION_CONTROL::FWCMD"))

(in-package "ROS")
;;//! \htmlinclude FWcmd.msg.html


(defclass hust_fw_formation_control::FWcmd
  :super ros::object
  :slots (_cmd_mode _pitch_angle_sp _yaw_angle_sp _roll_angle_sp _throttle_sp _t_flight _date_pitch _date_pitchcmd _date_roll _date_rollcmd _date_v _date_vcmd _date_h _date_hcmd _date_vy _date_vycmd _date_delta_perr _date_delta_verr _date_delta_gd _date_yaw _date_yawcmd _date_flag_zw _z0 _z1 _z2 _z3 _z4 ))

(defmethod hust_fw_formation_control::FWcmd
  (:init
   (&key
    ((:cmd_mode __cmd_mode) "")
    ((:pitch_angle_sp __pitch_angle_sp) 0.0)
    ((:yaw_angle_sp __yaw_angle_sp) 0.0)
    ((:roll_angle_sp __roll_angle_sp) 0.0)
    ((:throttle_sp __throttle_sp) 0.0)
    ((:t_flight __t_flight) 0.0)
    ((:date_pitch __date_pitch) 0.0)
    ((:date_pitchcmd __date_pitchcmd) 0.0)
    ((:date_roll __date_roll) 0.0)
    ((:date_rollcmd __date_rollcmd) 0.0)
    ((:date_v __date_v) 0.0)
    ((:date_vcmd __date_vcmd) 0.0)
    ((:date_h __date_h) 0.0)
    ((:date_hcmd __date_hcmd) 0.0)
    ((:date_vy __date_vy) 0.0)
    ((:date_vycmd __date_vycmd) 0.0)
    ((:date_delta_perr __date_delta_perr) 0.0)
    ((:date_delta_verr __date_delta_verr) 0.0)
    ((:date_delta_gd __date_delta_gd) 0.0)
    ((:date_yaw __date_yaw) 0.0)
    ((:date_yawcmd __date_yawcmd) 0.0)
    ((:date_flag_zw __date_flag_zw) 0.0)
    ((:z0 __z0) 0.0)
    ((:z1 __z1) 0.0)
    ((:z2 __z2) 0.0)
    ((:z3 __z3) 0.0)
    ((:z4 __z4) 0.0)
    )
   (send-super :init)
   (setq _cmd_mode (string __cmd_mode))
   (setq _pitch_angle_sp (float __pitch_angle_sp))
   (setq _yaw_angle_sp (float __yaw_angle_sp))
   (setq _roll_angle_sp (float __roll_angle_sp))
   (setq _throttle_sp (float __throttle_sp))
   (setq _t_flight (float __t_flight))
   (setq _date_pitch (float __date_pitch))
   (setq _date_pitchcmd (float __date_pitchcmd))
   (setq _date_roll (float __date_roll))
   (setq _date_rollcmd (float __date_rollcmd))
   (setq _date_v (float __date_v))
   (setq _date_vcmd (float __date_vcmd))
   (setq _date_h (float __date_h))
   (setq _date_hcmd (float __date_hcmd))
   (setq _date_vy (float __date_vy))
   (setq _date_vycmd (float __date_vycmd))
   (setq _date_delta_perr (float __date_delta_perr))
   (setq _date_delta_verr (float __date_delta_verr))
   (setq _date_delta_gd (float __date_delta_gd))
   (setq _date_yaw (float __date_yaw))
   (setq _date_yawcmd (float __date_yawcmd))
   (setq _date_flag_zw (float __date_flag_zw))
   (setq _z0 (float __z0))
   (setq _z1 (float __z1))
   (setq _z2 (float __z2))
   (setq _z3 (float __z3))
   (setq _z4 (float __z4))
   self)
  (:cmd_mode
   (&optional __cmd_mode)
   (if __cmd_mode (setq _cmd_mode __cmd_mode)) _cmd_mode)
  (:pitch_angle_sp
   (&optional __pitch_angle_sp)
   (if __pitch_angle_sp (setq _pitch_angle_sp __pitch_angle_sp)) _pitch_angle_sp)
  (:yaw_angle_sp
   (&optional __yaw_angle_sp)
   (if __yaw_angle_sp (setq _yaw_angle_sp __yaw_angle_sp)) _yaw_angle_sp)
  (:roll_angle_sp
   (&optional __roll_angle_sp)
   (if __roll_angle_sp (setq _roll_angle_sp __roll_angle_sp)) _roll_angle_sp)
  (:throttle_sp
   (&optional __throttle_sp)
   (if __throttle_sp (setq _throttle_sp __throttle_sp)) _throttle_sp)
  (:t_flight
   (&optional __t_flight)
   (if __t_flight (setq _t_flight __t_flight)) _t_flight)
  (:date_pitch
   (&optional __date_pitch)
   (if __date_pitch (setq _date_pitch __date_pitch)) _date_pitch)
  (:date_pitchcmd
   (&optional __date_pitchcmd)
   (if __date_pitchcmd (setq _date_pitchcmd __date_pitchcmd)) _date_pitchcmd)
  (:date_roll
   (&optional __date_roll)
   (if __date_roll (setq _date_roll __date_roll)) _date_roll)
  (:date_rollcmd
   (&optional __date_rollcmd)
   (if __date_rollcmd (setq _date_rollcmd __date_rollcmd)) _date_rollcmd)
  (:date_v
   (&optional __date_v)
   (if __date_v (setq _date_v __date_v)) _date_v)
  (:date_vcmd
   (&optional __date_vcmd)
   (if __date_vcmd (setq _date_vcmd __date_vcmd)) _date_vcmd)
  (:date_h
   (&optional __date_h)
   (if __date_h (setq _date_h __date_h)) _date_h)
  (:date_hcmd
   (&optional __date_hcmd)
   (if __date_hcmd (setq _date_hcmd __date_hcmd)) _date_hcmd)
  (:date_vy
   (&optional __date_vy)
   (if __date_vy (setq _date_vy __date_vy)) _date_vy)
  (:date_vycmd
   (&optional __date_vycmd)
   (if __date_vycmd (setq _date_vycmd __date_vycmd)) _date_vycmd)
  (:date_delta_perr
   (&optional __date_delta_perr)
   (if __date_delta_perr (setq _date_delta_perr __date_delta_perr)) _date_delta_perr)
  (:date_delta_verr
   (&optional __date_delta_verr)
   (if __date_delta_verr (setq _date_delta_verr __date_delta_verr)) _date_delta_verr)
  (:date_delta_gd
   (&optional __date_delta_gd)
   (if __date_delta_gd (setq _date_delta_gd __date_delta_gd)) _date_delta_gd)
  (:date_yaw
   (&optional __date_yaw)
   (if __date_yaw (setq _date_yaw __date_yaw)) _date_yaw)
  (:date_yawcmd
   (&optional __date_yawcmd)
   (if __date_yawcmd (setq _date_yawcmd __date_yawcmd)) _date_yawcmd)
  (:date_flag_zw
   (&optional __date_flag_zw)
   (if __date_flag_zw (setq _date_flag_zw __date_flag_zw)) _date_flag_zw)
  (:z0
   (&optional __z0)
   (if __z0 (setq _z0 __z0)) _z0)
  (:z1
   (&optional __z1)
   (if __z1 (setq _z1 __z1)) _z1)
  (:z2
   (&optional __z2)
   (if __z2 (setq _z2 __z2)) _z2)
  (:z3
   (&optional __z3)
   (if __z3 (setq _z3 __z3)) _z3)
  (:z4
   (&optional __z4)
   (if __z4 (setq _z4 __z4)) _z4)
  (:serialization-length
   ()
   (+
    ;; string _cmd_mode
    4 (length _cmd_mode)
    ;; float64 _pitch_angle_sp
    8
    ;; float64 _yaw_angle_sp
    8
    ;; float64 _roll_angle_sp
    8
    ;; float64 _throttle_sp
    8
    ;; float64 _t_flight
    8
    ;; float64 _date_pitch
    8
    ;; float64 _date_pitchcmd
    8
    ;; float64 _date_roll
    8
    ;; float64 _date_rollcmd
    8
    ;; float64 _date_v
    8
    ;; float64 _date_vcmd
    8
    ;; float64 _date_h
    8
    ;; float64 _date_hcmd
    8
    ;; float64 _date_vy
    8
    ;; float64 _date_vycmd
    8
    ;; float64 _date_delta_perr
    8
    ;; float64 _date_delta_verr
    8
    ;; float64 _date_delta_gd
    8
    ;; float64 _date_yaw
    8
    ;; float64 _date_yawcmd
    8
    ;; float64 _date_flag_zw
    8
    ;; float64 _z0
    8
    ;; float64 _z1
    8
    ;; float64 _z2
    8
    ;; float64 _z3
    8
    ;; float64 _z4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd_mode
       (write-long (length _cmd_mode) s) (princ _cmd_mode s)
     ;; float64 _pitch_angle_sp
       (sys::poke _pitch_angle_sp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_angle_sp
       (sys::poke _yaw_angle_sp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_angle_sp
       (sys::poke _roll_angle_sp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle_sp
       (sys::poke _throttle_sp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _t_flight
       (sys::poke _t_flight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_pitch
       (sys::poke _date_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_pitchcmd
       (sys::poke _date_pitchcmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_roll
       (sys::poke _date_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_rollcmd
       (sys::poke _date_rollcmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_v
       (sys::poke _date_v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_vcmd
       (sys::poke _date_vcmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_h
       (sys::poke _date_h (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_hcmd
       (sys::poke _date_hcmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_vy
       (sys::poke _date_vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_vycmd
       (sys::poke _date_vycmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_delta_perr
       (sys::poke _date_delta_perr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_delta_verr
       (sys::poke _date_delta_verr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_delta_gd
       (sys::poke _date_delta_gd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_yaw
       (sys::poke _date_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_yawcmd
       (sys::poke _date_yawcmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _date_flag_zw
       (sys::poke _date_flag_zw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z0
       (sys::poke _z0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z1
       (sys::poke _z1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z2
       (sys::poke _z2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z3
       (sys::poke _z3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z4
       (sys::poke _z4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _pitch_angle_sp
     (setq _pitch_angle_sp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_angle_sp
     (setq _yaw_angle_sp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_angle_sp
     (setq _roll_angle_sp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle_sp
     (setq _throttle_sp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _t_flight
     (setq _t_flight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_pitch
     (setq _date_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_pitchcmd
     (setq _date_pitchcmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_roll
     (setq _date_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_rollcmd
     (setq _date_rollcmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_v
     (setq _date_v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_vcmd
     (setq _date_vcmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_h
     (setq _date_h (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_hcmd
     (setq _date_hcmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_vy
     (setq _date_vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_vycmd
     (setq _date_vycmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_delta_perr
     (setq _date_delta_perr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_delta_verr
     (setq _date_delta_verr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_delta_gd
     (setq _date_delta_gd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_yaw
     (setq _date_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_yawcmd
     (setq _date_yawcmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _date_flag_zw
     (setq _date_flag_zw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z0
     (setq _z0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z1
     (setq _z1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z2
     (setq _z2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z3
     (setq _z3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z4
     (setq _z4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hust_fw_formation_control::FWcmd :md5sum-) "b1a541e09a3ea10b2429785cd152840b")
(setf (get hust_fw_formation_control::FWcmd :datatype-) "hust_fw_formation_control/FWcmd")
(setf (get hust_fw_formation_control::FWcmd :definition-)
      "#固定翼控制指令的期望值		
string cmd_mode

float64 pitch_angle_sp

float64 yaw_angle_sp

float64 roll_angle_sp

float64 throttle_sp


float64 t_flight
float64 date_pitch
float64 date_pitchcmd
float64 date_roll
float64 date_rollcmd
float64 date_v
float64 date_vcmd
float64 date_h
float64 date_hcmd
float64 date_vy
float64 date_vycmd
float64 date_delta_perr
float64 date_delta_verr
float64 date_delta_gd
float64 date_yaw
float64 date_yawcmd
float64 date_flag_zw




























float64 z0

float64 z1

float64 z2

float64 z3

float64 z4
")



(provide :hust_fw_formation_control/FWcmd "b1a541e09a3ea10b2429785cd152840b")


