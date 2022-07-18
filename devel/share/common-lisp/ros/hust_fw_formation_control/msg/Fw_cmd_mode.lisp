; Auto-generated. Do not edit!


(cl:in-package hust_fw_formation_control-msg)


;//! \htmlinclude Fw_cmd_mode.msg.html

(cl:defclass <Fw_cmd_mode> (roslisp-msg-protocol:ros-message)
  ((planeID
    :reader planeID
    :initarg :planeID
    :type cl:fixnum
    :initform 0)
   (need_idel
    :reader need_idel
    :initarg :need_idel
    :type cl:boolean
    :initform cl:nil)
   (need_take_off
    :reader need_take_off
    :initarg :need_take_off
    :type cl:boolean
    :initform cl:nil)
   (need_mission
    :reader need_mission
    :initarg :need_mission
    :type cl:boolean
    :initform cl:nil)
   (need_land
    :reader need_land
    :initarg :need_land
    :type cl:boolean
    :initform cl:nil)
   (need_formation
    :reader need_formation
    :initarg :need_formation
    :type cl:boolean
    :initform cl:nil)
   (need_protected
    :reader need_protected
    :initarg :need_protected
    :type cl:boolean
    :initform cl:nil)
   (swarm_shape
    :reader swarm_shape
    :initarg :swarm_shape
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Fw_cmd_mode (<Fw_cmd_mode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fw_cmd_mode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fw_cmd_mode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hust_fw_formation_control-msg:<Fw_cmd_mode> is deprecated: use hust_fw_formation_control-msg:Fw_cmd_mode instead.")))

(cl:ensure-generic-function 'planeID-val :lambda-list '(m))
(cl:defmethod planeID-val ((m <Fw_cmd_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:planeID-val is deprecated.  Use hust_fw_formation_control-msg:planeID instead.")
  (planeID m))

(cl:ensure-generic-function 'need_idel-val :lambda-list '(m))
(cl:defmethod need_idel-val ((m <Fw_cmd_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:need_idel-val is deprecated.  Use hust_fw_formation_control-msg:need_idel instead.")
  (need_idel m))

(cl:ensure-generic-function 'need_take_off-val :lambda-list '(m))
(cl:defmethod need_take_off-val ((m <Fw_cmd_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:need_take_off-val is deprecated.  Use hust_fw_formation_control-msg:need_take_off instead.")
  (need_take_off m))

(cl:ensure-generic-function 'need_mission-val :lambda-list '(m))
(cl:defmethod need_mission-val ((m <Fw_cmd_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:need_mission-val is deprecated.  Use hust_fw_formation_control-msg:need_mission instead.")
  (need_mission m))

(cl:ensure-generic-function 'need_land-val :lambda-list '(m))
(cl:defmethod need_land-val ((m <Fw_cmd_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:need_land-val is deprecated.  Use hust_fw_formation_control-msg:need_land instead.")
  (need_land m))

(cl:ensure-generic-function 'need_formation-val :lambda-list '(m))
(cl:defmethod need_formation-val ((m <Fw_cmd_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:need_formation-val is deprecated.  Use hust_fw_formation_control-msg:need_formation instead.")
  (need_formation m))

(cl:ensure-generic-function 'need_protected-val :lambda-list '(m))
(cl:defmethod need_protected-val ((m <Fw_cmd_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:need_protected-val is deprecated.  Use hust_fw_formation_control-msg:need_protected instead.")
  (need_protected m))

(cl:ensure-generic-function 'swarm_shape-val :lambda-list '(m))
(cl:defmethod swarm_shape-val ((m <Fw_cmd_mode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:swarm_shape-val is deprecated.  Use hust_fw_formation_control-msg:swarm_shape instead.")
  (swarm_shape m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Fw_cmd_mode>)))
    "Constants for message type '<Fw_cmd_mode>"
  '((:ONE_COLUMN . 0)
    (:TRIANGLE . 1)
    (:ONE_ROW . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Fw_cmd_mode)))
    "Constants for message type 'Fw_cmd_mode"
  '((:ONE_COLUMN . 0)
    (:TRIANGLE . 1)
    (:ONE_ROW . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fw_cmd_mode>) ostream)
  "Serializes a message object of type '<Fw_cmd_mode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'planeID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'planeID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'need_idel) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'need_take_off) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'need_mission) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'need_land) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'need_formation) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'need_protected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swarm_shape)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fw_cmd_mode>) istream)
  "Deserializes a message object of type '<Fw_cmd_mode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'planeID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'planeID)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'need_idel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'need_take_off) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'need_mission) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'need_land) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'need_formation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'need_protected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'swarm_shape)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fw_cmd_mode>)))
  "Returns string type for a message object of type '<Fw_cmd_mode>"
  "hust_fw_formation_control/Fw_cmd_mode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fw_cmd_mode)))
  "Returns string type for a message object of type 'Fw_cmd_mode"
  "hust_fw_formation_control/Fw_cmd_mode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fw_cmd_mode>)))
  "Returns md5sum for a message object of type '<Fw_cmd_mode>"
  "1df1161f0a9e91fb07222ee1046d0d1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fw_cmd_mode)))
  "Returns md5sum for a message object of type 'Fw_cmd_mode"
  "1df1161f0a9e91fb07222ee1046d0d1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fw_cmd_mode>)))
  "Returns full string definition for message of type '<Fw_cmd_mode>"
  (cl:format cl:nil "uint16 planeID~%~%bool need_idel~%~%bool need_take_off~%~%bool need_mission~%~%bool need_land~%~%bool need_formation~%~%bool need_protected~%~%uint8 swarm_shape~%~%uint8 One_column=0~%uint8 Triangle=1~%uint8 One_row=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fw_cmd_mode)))
  "Returns full string definition for message of type 'Fw_cmd_mode"
  (cl:format cl:nil "uint16 planeID~%~%bool need_idel~%~%bool need_take_off~%~%bool need_mission~%~%bool need_land~%~%bool need_formation~%~%bool need_protected~%~%uint8 swarm_shape~%~%uint8 One_column=0~%uint8 Triangle=1~%uint8 One_row=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fw_cmd_mode>))
  (cl:+ 0
     2
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fw_cmd_mode>))
  "Converts a ROS message object to a list"
  (cl:list 'Fw_cmd_mode
    (cl:cons ':planeID (planeID msg))
    (cl:cons ':need_idel (need_idel msg))
    (cl:cons ':need_take_off (need_take_off msg))
    (cl:cons ':need_mission (need_mission msg))
    (cl:cons ':need_land (need_land msg))
    (cl:cons ':need_formation (need_formation msg))
    (cl:cons ':need_protected (need_protected msg))
    (cl:cons ':swarm_shape (swarm_shape msg))
))
