
(cl:in-package :asdf)

(defsystem "hust_fw_formation_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "FWcmd" :depends-on ("_package_FWcmd"))
    (:file "_package_FWcmd" :depends-on ("_package"))
    (:file "FWstates" :depends-on ("_package_FWstates"))
    (:file "_package_FWstates" :depends-on ("_package"))
    (:file "Formation_control_states" :depends-on ("_package_Formation_control_states"))
    (:file "_package_Formation_control_states" :depends-on ("_package"))
    (:file "Fw_cmd_mode" :depends-on ("_package_Fw_cmd_mode"))
    (:file "_package_Fw_cmd_mode" :depends-on ("_package"))
    (:file "Fw_current_mode" :depends-on ("_package_Fw_current_mode"))
    (:file "_package_Fw_current_mode" :depends-on ("_package"))
    (:file "Fwmonitor" :depends-on ("_package_Fwmonitor"))
    (:file "_package_Fwmonitor" :depends-on ("_package"))
    (:file "Leaderstates" :depends-on ("_package_Leaderstates"))
    (:file "_package_Leaderstates" :depends-on ("_package"))
  ))