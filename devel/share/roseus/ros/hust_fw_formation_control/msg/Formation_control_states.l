;; Auto-generated. Do not edit!


(when (boundp 'hust_fw_formation_control::Formation_control_states)
  (if (not (find-package "HUST_FW_FORMATION_CONTROL"))
    (make-package "HUST_FW_FORMATION_CONTROL"))
  (shadow 'Formation_control_states (find-package "HUST_FW_FORMATION_CONTROL")))
(unless (find-package "HUST_FW_FORMATION_CONTROL::FORMATION_CONTROL_STATES")
  (make-package "HUST_FW_FORMATION_CONTROL::FORMATION_CONTROL_STATES"))

(in-package "ROS")
;;//! \htmlinclude Formation_control_states.msg.html


(defclass hust_fw_formation_control::Formation_control_states
  :super ros::object
  :slots (_planeID _sp_ned_vel_x _sp_ned_vel_y _sp_ned_vel_z _sp_latitude _sp_longitude _sp_altitude _sp_relative_alt _sp_air_speed _sp_ground_speed _err_P_N _err_P_E _err_P_D _err_P_NE _err_PXk _err_PYk _err_PZk _led_fol_vxk _led_fol_vyk _led_fol_vzk _err_VXk _err_VYk _err_VZk _led_fol_eta _eta_deg _err_PXb _err_PYb _err_PZb _err_VXb _err_VYb _err_VZb _led_fol_vxb _led_fol_vyb _led_fol_vzb _a _b _c ))

(defmethod hust_fw_formation_control::Formation_control_states
  (:init
   (&key
    ((:planeID __planeID) 0)
    ((:sp_ned_vel_x __sp_ned_vel_x) 0.0)
    ((:sp_ned_vel_y __sp_ned_vel_y) 0.0)
    ((:sp_ned_vel_z __sp_ned_vel_z) 0.0)
    ((:sp_latitude __sp_latitude) 0.0)
    ((:sp_longitude __sp_longitude) 0.0)
    ((:sp_altitude __sp_altitude) 0.0)
    ((:sp_relative_alt __sp_relative_alt) 0.0)
    ((:sp_air_speed __sp_air_speed) 0.0)
    ((:sp_ground_speed __sp_ground_speed) 0.0)
    ((:err_P_N __err_P_N) 0.0)
    ((:err_P_E __err_P_E) 0.0)
    ((:err_P_D __err_P_D) 0.0)
    ((:err_P_NE __err_P_NE) 0.0)
    ((:err_PXk __err_PXk) 0.0)
    ((:err_PYk __err_PYk) 0.0)
    ((:err_PZk __err_PZk) 0.0)
    ((:led_fol_vxk __led_fol_vxk) 0.0)
    ((:led_fol_vyk __led_fol_vyk) 0.0)
    ((:led_fol_vzk __led_fol_vzk) 0.0)
    ((:err_VXk __err_VXk) 0.0)
    ((:err_VYk __err_VYk) 0.0)
    ((:err_VZk __err_VZk) 0.0)
    ((:led_fol_eta __led_fol_eta) 0.0)
    ((:eta_deg __eta_deg) 0.0)
    ((:err_PXb __err_PXb) 0.0)
    ((:err_PYb __err_PYb) 0.0)
    ((:err_PZb __err_PZb) 0.0)
    ((:err_VXb __err_VXb) 0.0)
    ((:err_VYb __err_VYb) 0.0)
    ((:err_VZb __err_VZb) 0.0)
    ((:led_fol_vxb __led_fol_vxb) 0.0)
    ((:led_fol_vyb __led_fol_vyb) 0.0)
    ((:led_fol_vzb __led_fol_vzb) 0.0)
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    )
   (send-super :init)
   (setq _planeID (round __planeID))
   (setq _sp_ned_vel_x (float __sp_ned_vel_x))
   (setq _sp_ned_vel_y (float __sp_ned_vel_y))
   (setq _sp_ned_vel_z (float __sp_ned_vel_z))
   (setq _sp_latitude (float __sp_latitude))
   (setq _sp_longitude (float __sp_longitude))
   (setq _sp_altitude (float __sp_altitude))
   (setq _sp_relative_alt (float __sp_relative_alt))
   (setq _sp_air_speed (float __sp_air_speed))
   (setq _sp_ground_speed (float __sp_ground_speed))
   (setq _err_P_N (float __err_P_N))
   (setq _err_P_E (float __err_P_E))
   (setq _err_P_D (float __err_P_D))
   (setq _err_P_NE (float __err_P_NE))
   (setq _err_PXk (float __err_PXk))
   (setq _err_PYk (float __err_PYk))
   (setq _err_PZk (float __err_PZk))
   (setq _led_fol_vxk (float __led_fol_vxk))
   (setq _led_fol_vyk (float __led_fol_vyk))
   (setq _led_fol_vzk (float __led_fol_vzk))
   (setq _err_VXk (float __err_VXk))
   (setq _err_VYk (float __err_VYk))
   (setq _err_VZk (float __err_VZk))
   (setq _led_fol_eta (float __led_fol_eta))
   (setq _eta_deg (float __eta_deg))
   (setq _err_PXb (float __err_PXb))
   (setq _err_PYb (float __err_PYb))
   (setq _err_PZb (float __err_PZb))
   (setq _err_VXb (float __err_VXb))
   (setq _err_VYb (float __err_VYb))
   (setq _err_VZb (float __err_VZb))
   (setq _led_fol_vxb (float __led_fol_vxb))
   (setq _led_fol_vyb (float __led_fol_vyb))
   (setq _led_fol_vzb (float __led_fol_vzb))
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   self)
  (:planeID
   (&optional __planeID)
   (if __planeID (setq _planeID __planeID)) _planeID)
  (:sp_ned_vel_x
   (&optional __sp_ned_vel_x)
   (if __sp_ned_vel_x (setq _sp_ned_vel_x __sp_ned_vel_x)) _sp_ned_vel_x)
  (:sp_ned_vel_y
   (&optional __sp_ned_vel_y)
   (if __sp_ned_vel_y (setq _sp_ned_vel_y __sp_ned_vel_y)) _sp_ned_vel_y)
  (:sp_ned_vel_z
   (&optional __sp_ned_vel_z)
   (if __sp_ned_vel_z (setq _sp_ned_vel_z __sp_ned_vel_z)) _sp_ned_vel_z)
  (:sp_latitude
   (&optional __sp_latitude)
   (if __sp_latitude (setq _sp_latitude __sp_latitude)) _sp_latitude)
  (:sp_longitude
   (&optional __sp_longitude)
   (if __sp_longitude (setq _sp_longitude __sp_longitude)) _sp_longitude)
  (:sp_altitude
   (&optional __sp_altitude)
   (if __sp_altitude (setq _sp_altitude __sp_altitude)) _sp_altitude)
  (:sp_relative_alt
   (&optional __sp_relative_alt)
   (if __sp_relative_alt (setq _sp_relative_alt __sp_relative_alt)) _sp_relative_alt)
  (:sp_air_speed
   (&optional __sp_air_speed)
   (if __sp_air_speed (setq _sp_air_speed __sp_air_speed)) _sp_air_speed)
  (:sp_ground_speed
   (&optional __sp_ground_speed)
   (if __sp_ground_speed (setq _sp_ground_speed __sp_ground_speed)) _sp_ground_speed)
  (:err_P_N
   (&optional __err_P_N)
   (if __err_P_N (setq _err_P_N __err_P_N)) _err_P_N)
  (:err_P_E
   (&optional __err_P_E)
   (if __err_P_E (setq _err_P_E __err_P_E)) _err_P_E)
  (:err_P_D
   (&optional __err_P_D)
   (if __err_P_D (setq _err_P_D __err_P_D)) _err_P_D)
  (:err_P_NE
   (&optional __err_P_NE)
   (if __err_P_NE (setq _err_P_NE __err_P_NE)) _err_P_NE)
  (:err_PXk
   (&optional __err_PXk)
   (if __err_PXk (setq _err_PXk __err_PXk)) _err_PXk)
  (:err_PYk
   (&optional __err_PYk)
   (if __err_PYk (setq _err_PYk __err_PYk)) _err_PYk)
  (:err_PZk
   (&optional __err_PZk)
   (if __err_PZk (setq _err_PZk __err_PZk)) _err_PZk)
  (:led_fol_vxk
   (&optional __led_fol_vxk)
   (if __led_fol_vxk (setq _led_fol_vxk __led_fol_vxk)) _led_fol_vxk)
  (:led_fol_vyk
   (&optional __led_fol_vyk)
   (if __led_fol_vyk (setq _led_fol_vyk __led_fol_vyk)) _led_fol_vyk)
  (:led_fol_vzk
   (&optional __led_fol_vzk)
   (if __led_fol_vzk (setq _led_fol_vzk __led_fol_vzk)) _led_fol_vzk)
  (:err_VXk
   (&optional __err_VXk)
   (if __err_VXk (setq _err_VXk __err_VXk)) _err_VXk)
  (:err_VYk
   (&optional __err_VYk)
   (if __err_VYk (setq _err_VYk __err_VYk)) _err_VYk)
  (:err_VZk
   (&optional __err_VZk)
   (if __err_VZk (setq _err_VZk __err_VZk)) _err_VZk)
  (:led_fol_eta
   (&optional __led_fol_eta)
   (if __led_fol_eta (setq _led_fol_eta __led_fol_eta)) _led_fol_eta)
  (:eta_deg
   (&optional __eta_deg)
   (if __eta_deg (setq _eta_deg __eta_deg)) _eta_deg)
  (:err_PXb
   (&optional __err_PXb)
   (if __err_PXb (setq _err_PXb __err_PXb)) _err_PXb)
  (:err_PYb
   (&optional __err_PYb)
   (if __err_PYb (setq _err_PYb __err_PYb)) _err_PYb)
  (:err_PZb
   (&optional __err_PZb)
   (if __err_PZb (setq _err_PZb __err_PZb)) _err_PZb)
  (:err_VXb
   (&optional __err_VXb)
   (if __err_VXb (setq _err_VXb __err_VXb)) _err_VXb)
  (:err_VYb
   (&optional __err_VYb)
   (if __err_VYb (setq _err_VYb __err_VYb)) _err_VYb)
  (:err_VZb
   (&optional __err_VZb)
   (if __err_VZb (setq _err_VZb __err_VZb)) _err_VZb)
  (:led_fol_vxb
   (&optional __led_fol_vxb)
   (if __led_fol_vxb (setq _led_fol_vxb __led_fol_vxb)) _led_fol_vxb)
  (:led_fol_vyb
   (&optional __led_fol_vyb)
   (if __led_fol_vyb (setq _led_fol_vyb __led_fol_vyb)) _led_fol_vyb)
  (:led_fol_vzb
   (&optional __led_fol_vzb)
   (if __led_fol_vzb (setq _led_fol_vzb __led_fol_vzb)) _led_fol_vzb)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; uint16 _planeID
    2
    ;; float64 _sp_ned_vel_x
    8
    ;; float64 _sp_ned_vel_y
    8
    ;; float64 _sp_ned_vel_z
    8
    ;; float64 _sp_latitude
    8
    ;; float64 _sp_longitude
    8
    ;; float64 _sp_altitude
    8
    ;; float64 _sp_relative_alt
    8
    ;; float64 _sp_air_speed
    8
    ;; float64 _sp_ground_speed
    8
    ;; float64 _err_P_N
    8
    ;; float64 _err_P_E
    8
    ;; float64 _err_P_D
    8
    ;; float64 _err_P_NE
    8
    ;; float64 _err_PXk
    8
    ;; float64 _err_PYk
    8
    ;; float64 _err_PZk
    8
    ;; float64 _led_fol_vxk
    8
    ;; float64 _led_fol_vyk
    8
    ;; float64 _led_fol_vzk
    8
    ;; float64 _err_VXk
    8
    ;; float64 _err_VYk
    8
    ;; float64 _err_VZk
    8
    ;; float64 _led_fol_eta
    8
    ;; float64 _eta_deg
    8
    ;; float64 _err_PXb
    8
    ;; float64 _err_PYb
    8
    ;; float64 _err_PZb
    8
    ;; float64 _err_VXb
    8
    ;; float64 _err_VYb
    8
    ;; float64 _err_VZb
    8
    ;; float64 _led_fol_vxb
    8
    ;; float64 _led_fol_vyb
    8
    ;; float64 _led_fol_vzb
    8
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; float64 _c
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _planeID
       (write-word _planeID s)
     ;; float64 _sp_ned_vel_x
       (sys::poke _sp_ned_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sp_ned_vel_y
       (sys::poke _sp_ned_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sp_ned_vel_z
       (sys::poke _sp_ned_vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sp_latitude
       (sys::poke _sp_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sp_longitude
       (sys::poke _sp_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sp_altitude
       (sys::poke _sp_altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sp_relative_alt
       (sys::poke _sp_relative_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sp_air_speed
       (sys::poke _sp_air_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sp_ground_speed
       (sys::poke _sp_ground_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_P_N
       (sys::poke _err_P_N (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_P_E
       (sys::poke _err_P_E (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_P_D
       (sys::poke _err_P_D (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_P_NE
       (sys::poke _err_P_NE (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_PXk
       (sys::poke _err_PXk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_PYk
       (sys::poke _err_PYk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_PZk
       (sys::poke _err_PZk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _led_fol_vxk
       (sys::poke _led_fol_vxk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _led_fol_vyk
       (sys::poke _led_fol_vyk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _led_fol_vzk
       (sys::poke _led_fol_vzk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_VXk
       (sys::poke _err_VXk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_VYk
       (sys::poke _err_VYk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_VZk
       (sys::poke _err_VZk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _led_fol_eta
       (sys::poke _led_fol_eta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _eta_deg
       (sys::poke _eta_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_PXb
       (sys::poke _err_PXb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_PYb
       (sys::poke _err_PYb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_PZb
       (sys::poke _err_PZb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_VXb
       (sys::poke _err_VXb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_VYb
       (sys::poke _err_VYb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_VZb
       (sys::poke _err_VZb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _led_fol_vxb
       (sys::poke _led_fol_vxb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _led_fol_vyb
       (sys::poke _led_fol_vyb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _led_fol_vzb
       (sys::poke _led_fol_vzb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c
       (sys::poke _c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _planeID
     (setq _planeID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _sp_ned_vel_x
     (setq _sp_ned_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sp_ned_vel_y
     (setq _sp_ned_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sp_ned_vel_z
     (setq _sp_ned_vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sp_latitude
     (setq _sp_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sp_longitude
     (setq _sp_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sp_altitude
     (setq _sp_altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sp_relative_alt
     (setq _sp_relative_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sp_air_speed
     (setq _sp_air_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sp_ground_speed
     (setq _sp_ground_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_P_N
     (setq _err_P_N (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_P_E
     (setq _err_P_E (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_P_D
     (setq _err_P_D (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_P_NE
     (setq _err_P_NE (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_PXk
     (setq _err_PXk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_PYk
     (setq _err_PYk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_PZk
     (setq _err_PZk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _led_fol_vxk
     (setq _led_fol_vxk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _led_fol_vyk
     (setq _led_fol_vyk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _led_fol_vzk
     (setq _led_fol_vzk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_VXk
     (setq _err_VXk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_VYk
     (setq _err_VYk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_VZk
     (setq _err_VZk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _led_fol_eta
     (setq _led_fol_eta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _eta_deg
     (setq _eta_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_PXb
     (setq _err_PXb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_PYb
     (setq _err_PYb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_PZb
     (setq _err_PZb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_VXb
     (setq _err_VXb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_VYb
     (setq _err_VYb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_VZb
     (setq _err_VZb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _led_fol_vxb
     (setq _led_fol_vxb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _led_fol_vyb
     (setq _led_fol_vyb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _led_fol_vzb
     (setq _led_fol_vzb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c
     (setq _c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hust_fw_formation_control::Formation_control_states :md5sum-) "add6e7cf7cfc8236a1710dcddb2c01ac")
(setf (get hust_fw_formation_control::Formation_control_states :datatype-) "hust_fw_formation_control/Formation_control_states")
(setf (get hust_fw_formation_control::Formation_control_states :definition-)
      "#这里也要记得写上planeid，后面得向地面站发送哈！！！！
uint16 planeID

#####################################编队控制器期望状态###############################

#编队期望ned速度
float64 sp_ned_vel_x
float64 sp_ned_vel_y
float64 sp_ned_vel_z

#编队期望经纬度
float64 sp_latitude
float64 sp_longitude
float64 sp_altitude
float64 sp_relative_alt

#编队期望空速地速
float64 sp_air_speed
float64 sp_ground_speed

#####################################编队控制器误差状态###############################

#NED下的位置误差
float64 err_P_N
float64 err_P_E
float64 err_P_D
float64 err_P_NE

#航迹轴系位置误差<与自己期望>
float64 err_PXk
float64 err_PYk
float64 err_PZk

#航迹系速度误差<与领机>
float64 led_fol_vxk
float64 led_fol_vyk
float64 led_fol_vzk

#航迹轴系速度误差<与自己期望>
float64 err_VXk
float64 err_VYk
float64 err_VZk

#角度误差
float64 led_fol_eta
float64 eta_deg

#体轴系位置误差<与自己期望>
float64 err_PXb
float64 err_PYb
float64 err_PZb

#体轴系速度误差<与自己期望>
float64 err_VXb
float64 err_VYb
float64 err_VZb

#体轴系速度误差<与领机>
float64 led_fol_vxb
float64 led_fol_vyb
float64 led_fol_vzb

float64 a
float64 b
float64 c
")



(provide :hust_fw_formation_control/Formation_control_states "add6e7cf7cfc8236a1710dcddb2c01ac")


