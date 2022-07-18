;; Auto-generated. Do not edit!


(when (boundp 'hust_fw_formation_control::Fw_cmd_mode)
  (if (not (find-package "HUST_FW_FORMATION_CONTROL"))
    (make-package "HUST_FW_FORMATION_CONTROL"))
  (shadow 'Fw_cmd_mode (find-package "HUST_FW_FORMATION_CONTROL")))
(unless (find-package "HUST_FW_FORMATION_CONTROL::FW_CMD_MODE")
  (make-package "HUST_FW_FORMATION_CONTROL::FW_CMD_MODE"))

(in-package "ROS")
;;//! \htmlinclude Fw_cmd_mode.msg.html


(intern "*ONE_COLUMN*" (find-package "HUST_FW_FORMATION_CONTROL::FW_CMD_MODE"))
(shadow '*ONE_COLUMN* (find-package "HUST_FW_FORMATION_CONTROL::FW_CMD_MODE"))
(defconstant hust_fw_formation_control::Fw_cmd_mode::*ONE_COLUMN* 0)
(intern "*TRIANGLE*" (find-package "HUST_FW_FORMATION_CONTROL::FW_CMD_MODE"))
(shadow '*TRIANGLE* (find-package "HUST_FW_FORMATION_CONTROL::FW_CMD_MODE"))
(defconstant hust_fw_formation_control::Fw_cmd_mode::*TRIANGLE* 1)
(intern "*ONE_ROW*" (find-package "HUST_FW_FORMATION_CONTROL::FW_CMD_MODE"))
(shadow '*ONE_ROW* (find-package "HUST_FW_FORMATION_CONTROL::FW_CMD_MODE"))
(defconstant hust_fw_formation_control::Fw_cmd_mode::*ONE_ROW* 2)
(defclass hust_fw_formation_control::Fw_cmd_mode
  :super ros::object
  :slots (_planeID _need_idel _need_take_off _need_mission _need_land _need_formation _need_protected _swarm_shape ))

(defmethod hust_fw_formation_control::Fw_cmd_mode
  (:init
   (&key
    ((:planeID __planeID) 0)
    ((:need_idel __need_idel) nil)
    ((:need_take_off __need_take_off) nil)
    ((:need_mission __need_mission) nil)
    ((:need_land __need_land) nil)
    ((:need_formation __need_formation) nil)
    ((:need_protected __need_protected) nil)
    ((:swarm_shape __swarm_shape) 0)
    )
   (send-super :init)
   (setq _planeID (round __planeID))
   (setq _need_idel __need_idel)
   (setq _need_take_off __need_take_off)
   (setq _need_mission __need_mission)
   (setq _need_land __need_land)
   (setq _need_formation __need_formation)
   (setq _need_protected __need_protected)
   (setq _swarm_shape (round __swarm_shape))
   self)
  (:planeID
   (&optional __planeID)
   (if __planeID (setq _planeID __planeID)) _planeID)
  (:need_idel
   (&optional __need_idel)
   (if __need_idel (setq _need_idel __need_idel)) _need_idel)
  (:need_take_off
   (&optional __need_take_off)
   (if __need_take_off (setq _need_take_off __need_take_off)) _need_take_off)
  (:need_mission
   (&optional __need_mission)
   (if __need_mission (setq _need_mission __need_mission)) _need_mission)
  (:need_land
   (&optional __need_land)
   (if __need_land (setq _need_land __need_land)) _need_land)
  (:need_formation
   (&optional __need_formation)
   (if __need_formation (setq _need_formation __need_formation)) _need_formation)
  (:need_protected
   (&optional __need_protected)
   (if __need_protected (setq _need_protected __need_protected)) _need_protected)
  (:swarm_shape
   (&optional __swarm_shape)
   (if __swarm_shape (setq _swarm_shape __swarm_shape)) _swarm_shape)
  (:serialization-length
   ()
   (+
    ;; uint16 _planeID
    2
    ;; bool _need_idel
    1
    ;; bool _need_take_off
    1
    ;; bool _need_mission
    1
    ;; bool _need_land
    1
    ;; bool _need_formation
    1
    ;; bool _need_protected
    1
    ;; uint8 _swarm_shape
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _planeID
       (write-word _planeID s)
     ;; bool _need_idel
       (if _need_idel (write-byte -1 s) (write-byte 0 s))
     ;; bool _need_take_off
       (if _need_take_off (write-byte -1 s) (write-byte 0 s))
     ;; bool _need_mission
       (if _need_mission (write-byte -1 s) (write-byte 0 s))
     ;; bool _need_land
       (if _need_land (write-byte -1 s) (write-byte 0 s))
     ;; bool _need_formation
       (if _need_formation (write-byte -1 s) (write-byte 0 s))
     ;; bool _need_protected
       (if _need_protected (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _swarm_shape
       (write-byte _swarm_shape s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _planeID
     (setq _planeID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _need_idel
     (setq _need_idel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _need_take_off
     (setq _need_take_off (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _need_mission
     (setq _need_mission (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _need_land
     (setq _need_land (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _need_formation
     (setq _need_formation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _need_protected
     (setq _need_protected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _swarm_shape
     (setq _swarm_shape (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hust_fw_formation_control::Fw_cmd_mode :md5sum-) "1df1161f0a9e91fb07222ee1046d0d1f")
(setf (get hust_fw_formation_control::Fw_cmd_mode :datatype-) "hust_fw_formation_control/Fw_cmd_mode")
(setf (get hust_fw_formation_control::Fw_cmd_mode :definition-)
      "uint16 planeID

bool need_idel

bool need_take_off

bool need_mission

bool need_land

bool need_formation

bool need_protected

uint8 swarm_shape

uint8 One_column=0
uint8 Triangle=1
uint8 One_row=2

")



(provide :hust_fw_formation_control/Fw_cmd_mode "1df1161f0a9e91fb07222ee1046d0d1f")


