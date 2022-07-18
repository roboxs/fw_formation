;; Auto-generated. Do not edit!


(when (boundp 'hust_fw_formation_control::Fwmonitor)
  (if (not (find-package "HUST_FW_FORMATION_CONTROL"))
    (make-package "HUST_FW_FORMATION_CONTROL"))
  (shadow 'Fwmonitor (find-package "HUST_FW_FORMATION_CONTROL")))
(unless (find-package "HUST_FW_FORMATION_CONTROL::FWMONITOR")
  (make-package "HUST_FW_FORMATION_CONTROL::FWMONITOR"))

(in-package "ROS")
;;//! \htmlinclude Fwmonitor.msg.html


(defclass hust_fw_formation_control::Fwmonitor
  :super ros::object
  :slots (_planeID _fw_complete_idel _fw_is_connected _fw_is_wellctrlled _fw_complete_takeoff _fw_complete_landed _formation_distance_complete _formation_time_complete ))

(defmethod hust_fw_formation_control::Fwmonitor
  (:init
   (&key
    ((:planeID __planeID) 0)
    ((:fw_complete_idel __fw_complete_idel) nil)
    ((:fw_is_connected __fw_is_connected) nil)
    ((:fw_is_wellctrlled __fw_is_wellctrlled) nil)
    ((:fw_complete_takeoff __fw_complete_takeoff) nil)
    ((:fw_complete_landed __fw_complete_landed) nil)
    ((:formation_distance_complete __formation_distance_complete) nil)
    ((:formation_time_complete __formation_time_complete) nil)
    )
   (send-super :init)
   (setq _planeID (round __planeID))
   (setq _fw_complete_idel __fw_complete_idel)
   (setq _fw_is_connected __fw_is_connected)
   (setq _fw_is_wellctrlled __fw_is_wellctrlled)
   (setq _fw_complete_takeoff __fw_complete_takeoff)
   (setq _fw_complete_landed __fw_complete_landed)
   (setq _formation_distance_complete __formation_distance_complete)
   (setq _formation_time_complete __formation_time_complete)
   self)
  (:planeID
   (&optional __planeID)
   (if __planeID (setq _planeID __planeID)) _planeID)
  (:fw_complete_idel
   (&optional __fw_complete_idel)
   (if __fw_complete_idel (setq _fw_complete_idel __fw_complete_idel)) _fw_complete_idel)
  (:fw_is_connected
   (&optional __fw_is_connected)
   (if __fw_is_connected (setq _fw_is_connected __fw_is_connected)) _fw_is_connected)
  (:fw_is_wellctrlled
   (&optional __fw_is_wellctrlled)
   (if __fw_is_wellctrlled (setq _fw_is_wellctrlled __fw_is_wellctrlled)) _fw_is_wellctrlled)
  (:fw_complete_takeoff
   (&optional __fw_complete_takeoff)
   (if __fw_complete_takeoff (setq _fw_complete_takeoff __fw_complete_takeoff)) _fw_complete_takeoff)
  (:fw_complete_landed
   (&optional __fw_complete_landed)
   (if __fw_complete_landed (setq _fw_complete_landed __fw_complete_landed)) _fw_complete_landed)
  (:formation_distance_complete
   (&optional __formation_distance_complete)
   (if __formation_distance_complete (setq _formation_distance_complete __formation_distance_complete)) _formation_distance_complete)
  (:formation_time_complete
   (&optional __formation_time_complete)
   (if __formation_time_complete (setq _formation_time_complete __formation_time_complete)) _formation_time_complete)
  (:serialization-length
   ()
   (+
    ;; uint8 _planeID
    1
    ;; bool _fw_complete_idel
    1
    ;; bool _fw_is_connected
    1
    ;; bool _fw_is_wellctrlled
    1
    ;; bool _fw_complete_takeoff
    1
    ;; bool _fw_complete_landed
    1
    ;; bool _formation_distance_complete
    1
    ;; bool _formation_time_complete
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _planeID
       (write-byte _planeID s)
     ;; bool _fw_complete_idel
       (if _fw_complete_idel (write-byte -1 s) (write-byte 0 s))
     ;; bool _fw_is_connected
       (if _fw_is_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _fw_is_wellctrlled
       (if _fw_is_wellctrlled (write-byte -1 s) (write-byte 0 s))
     ;; bool _fw_complete_takeoff
       (if _fw_complete_takeoff (write-byte -1 s) (write-byte 0 s))
     ;; bool _fw_complete_landed
       (if _fw_complete_landed (write-byte -1 s) (write-byte 0 s))
     ;; bool _formation_distance_complete
       (if _formation_distance_complete (write-byte -1 s) (write-byte 0 s))
     ;; bool _formation_time_complete
       (if _formation_time_complete (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _planeID
     (setq _planeID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _fw_complete_idel
     (setq _fw_complete_idel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fw_is_connected
     (setq _fw_is_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fw_is_wellctrlled
     (setq _fw_is_wellctrlled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fw_complete_takeoff
     (setq _fw_complete_takeoff (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fw_complete_landed
     (setq _fw_complete_landed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _formation_distance_complete
     (setq _formation_distance_complete (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _formation_time_complete
     (setq _formation_time_complete (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hust_fw_formation_control::Fwmonitor :md5sum-) "3094edf1d529e87912463a6fbc28d66c")
(setf (get hust_fw_formation_control::Fwmonitor :datatype-) "hust_fw_formation_control/Fwmonitor")
(setf (get hust_fw_formation_control::Fwmonitor :definition-)
      "#飞机的控制状态，任务状态的flags，表示任务完成状况，飞机的飞行状态，失联状态，
#飞机控制保护状态

uint8 planeID#飞机编号

bool fw_complete_idel#飞机已经空闲

bool fw_is_connected #飞机链接地面站标志位

bool fw_is_wellctrlled #飞机控制状态标志位

bool fw_complete_takeoff #飞机已经起飞标志位

bool fw_complete_landed #飞机已经降落标志位

bool formation_distance_complete #飞机编队距离已经满足

bool formation_time_complete #飞机编队时间已经满足
")



(provide :hust_fw_formation_control/Fwmonitor "3094edf1d529e87912463a6fbc28d66c")


