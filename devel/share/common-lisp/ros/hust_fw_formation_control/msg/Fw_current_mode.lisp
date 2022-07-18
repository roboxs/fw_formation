; Auto-generated. Do not edit!


(cl:in-package hust_fw_formation_control-msg)


;//! \htmlinclude Fw_current_mode.msg.html

(cl:defclass <Fw_current_mode> (roslisp-msg-protocol:ros-message)
  ((planeID
    :reader planeID
    :initarg :planeID
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Fw_current_mode (<Fw_current_mode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fw_current_mode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fw_current_mode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hust_fw_formation_control-msg:<Fw_current_mode> is deprecated: use hust_fw_formation_control-msg:Fw_current_mode instead.")))

(cl:ensure-generic-function 'planeID-val :lambda-list '(m))
(cl:defmethod planeID-val ((m <Fw_current_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:planeID-val is deprecated.  Use hust_fw_formation_control-msg:planeID instead.")
  (planeID m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Fw_current_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:mode-val is deprecated.  Use hust_fw_formation_control-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Fw_current_mode>)))
    "Constants for message type '<Fw_current_mode>"
  '((:FW_IN_IDEL . 0)
    (:FW_IN_TAKEOFF . 1)
    (:FW_IN_LANDING . 2)
    (:FW_IN_FORMATION . 3)
    (:FW_IN_PROTECT . 4)
    (:FW_IN_MISSION . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Fw_current_mode)))
    "Constants for message type 'Fw_current_mode"
  '((:FW_IN_IDEL . 0)
    (:FW_IN_TAKEOFF . 1)
    (:FW_IN_LANDING . 2)
    (:FW_IN_FORMATION . 3)
    (:FW_IN_PROTECT . 4)
    (:FW_IN_MISSION . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fw_current_mode>) ostream)
  "Serializes a message object of type '<Fw_current_mode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'planeID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'planeID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fw_current_mode>) istream)
  "Deserializes a message object of type '<Fw_current_mode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'planeID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'planeID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fw_current_mode>)))
  "Returns string type for a message object of type '<Fw_current_mode>"
  "hust_fw_formation_control/Fw_current_mode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fw_current_mode)))
  "Returns string type for a message object of type 'Fw_current_mode"
  "hust_fw_formation_control/Fw_current_mode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fw_current_mode>)))
  "Returns md5sum for a message object of type '<Fw_current_mode>"
  "0ae2504a5515a0157f4047db76d42489")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fw_current_mode)))
  "Returns md5sum for a message object of type 'Fw_current_mode"
  "0ae2504a5515a0157f4047db76d42489")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fw_current_mode>)))
  "Returns full string definition for message of type '<Fw_current_mode>"
  (cl:format cl:nil "uint16 planeID~%~%uint8 mode~%~%uint8 FW_IN_IDEL = 0 ~%~%uint8 FW_IN_TAKEOFF = 1~%~%uint8 FW_IN_LANDING = 2~%~%uint8 FW_IN_FORMATION = 3~%~%uint8 FW_IN_PROTECT = 4~%~%uint8 FW_IN_MISSION = 5~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fw_current_mode)))
  "Returns full string definition for message of type 'Fw_current_mode"
  (cl:format cl:nil "uint16 planeID~%~%uint8 mode~%~%uint8 FW_IN_IDEL = 0 ~%~%uint8 FW_IN_TAKEOFF = 1~%~%uint8 FW_IN_LANDING = 2~%~%uint8 FW_IN_FORMATION = 3~%~%uint8 FW_IN_PROTECT = 4~%~%uint8 FW_IN_MISSION = 5~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fw_current_mode>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fw_current_mode>))
  "Converts a ROS message object to a list"
  (cl:list 'Fw_current_mode
    (cl:cons ':planeID (planeID msg))
    (cl:cons ':mode (mode msg))
))
