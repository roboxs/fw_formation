;; Auto-generated. Do not edit!


(when (boundp 'hust_fw_formation_control::Fw_current_mode)
  (if (not (find-package "HUST_FW_FORMATION_CONTROL"))
    (make-package "HUST_FW_FORMATION_CONTROL"))
  (shadow 'Fw_current_mode (find-package "HUST_FW_FORMATION_CONTROL")))
(unless (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE")
  (make-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))

(in-package "ROS")
;;//! \htmlinclude Fw_current_mode.msg.html


(intern "*FW_IN_IDEL*" (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(shadow '*FW_IN_IDEL* (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(defconstant hust_fw_formation_control::Fw_current_mode::*FW_IN_IDEL* 0)
(intern "*FW_IN_TAKEOFF*" (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(shadow '*FW_IN_TAKEOFF* (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(defconstant hust_fw_formation_control::Fw_current_mode::*FW_IN_TAKEOFF* 1)
(intern "*FW_IN_LANDING*" (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(shadow '*FW_IN_LANDING* (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(defconstant hust_fw_formation_control::Fw_current_mode::*FW_IN_LANDING* 2)
(intern "*FW_IN_FORMATION*" (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(shadow '*FW_IN_FORMATION* (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(defconstant hust_fw_formation_control::Fw_current_mode::*FW_IN_FORMATION* 3)
(intern "*FW_IN_PROTECT*" (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(shadow '*FW_IN_PROTECT* (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(defconstant hust_fw_formation_control::Fw_current_mode::*FW_IN_PROTECT* 4)
(intern "*FW_IN_MISSION*" (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(shadow '*FW_IN_MISSION* (find-package "HUST_FW_FORMATION_CONTROL::FW_CURRENT_MODE"))
(defconstant hust_fw_formation_control::Fw_current_mode::*FW_IN_MISSION* 5)
(defclass hust_fw_formation_control::Fw_current_mode
  :super ros::object
  :slots (_planeID _mode ))

(defmethod hust_fw_formation_control::Fw_current_mode
  (:init
   (&key
    ((:planeID __planeID) 0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _planeID (round __planeID))
   (setq _mode (round __mode))
   self)
  (:planeID
   (&optional __planeID)
   (if __planeID (setq _planeID __planeID)) _planeID)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint16 _planeID
    2
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _planeID
       (write-word _planeID s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _planeID
     (setq _planeID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hust_fw_formation_control::Fw_current_mode :md5sum-) "0ae2504a5515a0157f4047db76d42489")
(setf (get hust_fw_formation_control::Fw_current_mode :datatype-) "hust_fw_formation_control/Fw_current_mode")
(setf (get hust_fw_formation_control::Fw_current_mode :definition-)
      "uint16 planeID

uint8 mode

uint8 FW_IN_IDEL = 0 

uint8 FW_IN_TAKEOFF = 1

uint8 FW_IN_LANDING = 2

uint8 FW_IN_FORMATION = 3

uint8 FW_IN_PROTECT = 4

uint8 FW_IN_MISSION = 5
")



(provide :hust_fw_formation_control/Fw_current_mode "0ae2504a5515a0157f4047db76d42489")


