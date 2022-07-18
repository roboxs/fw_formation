; Auto-generated. Do not edit!


(cl:in-package hust_fw_formation_control-msg)


;//! \htmlinclude Fwmonitor.msg.html

(cl:defclass <Fwmonitor> (roslisp-msg-protocol:ros-message)
  ((planeID
    :reader planeID
    :initarg :planeID
    :type cl:fixnum
    :initform 0)
   (fw_complete_idel
    :reader fw_complete_idel
    :initarg :fw_complete_idel
    :type cl:boolean
    :initform cl:nil)
   (fw_is_connected
    :reader fw_is_connected
    :initarg :fw_is_connected
    :type cl:boolean
    :initform cl:nil)
   (fw_is_wellctrlled
    :reader fw_is_wellctrlled
    :initarg :fw_is_wellctrlled
    :type cl:boolean
    :initform cl:nil)
   (fw_complete_takeoff
    :reader fw_complete_takeoff
    :initarg :fw_complete_takeoff
    :type cl:boolean
    :initform cl:nil)
   (fw_complete_landed
    :reader fw_complete_landed
    :initarg :fw_complete_landed
    :type cl:boolean
    :initform cl:nil)
   (formation_distance_complete
    :reader formation_distance_complete
    :initarg :formation_distance_complete
    :type cl:boolean
    :initform cl:nil)
   (formation_time_complete
    :reader formation_time_complete
    :initarg :formation_time_complete
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Fwmonitor (<Fwmonitor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fwmonitor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fwmonitor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hust_fw_formation_control-msg:<Fwmonitor> is deprecated: use hust_fw_formation_control-msg:Fwmonitor instead.")))

(cl:ensure-generic-function 'planeID-val :lambda-list '(m))
(cl:defmethod planeID-val ((m <Fwmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:planeID-val is deprecated.  Use hust_fw_formation_control-msg:planeID instead.")
  (planeID m))

(cl:ensure-generic-function 'fw_complete_idel-val :lambda-list '(m))
(cl:defmethod fw_complete_idel-val ((m <Fwmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:fw_complete_idel-val is deprecated.  Use hust_fw_formation_control-msg:fw_complete_idel instead.")
  (fw_complete_idel m))

(cl:ensure-generic-function 'fw_is_connected-val :lambda-list '(m))
(cl:defmethod fw_is_connected-val ((m <Fwmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:fw_is_connected-val is deprecated.  Use hust_fw_formation_control-msg:fw_is_connected instead.")
  (fw_is_connected m))

(cl:ensure-generic-function 'fw_is_wellctrlled-val :lambda-list '(m))
(cl:defmethod fw_is_wellctrlled-val ((m <Fwmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:fw_is_wellctrlled-val is deprecated.  Use hust_fw_formation_control-msg:fw_is_wellctrlled instead.")
  (fw_is_wellctrlled m))

(cl:ensure-generic-function 'fw_complete_takeoff-val :lambda-list '(m))
(cl:defmethod fw_complete_takeoff-val ((m <Fwmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:fw_complete_takeoff-val is deprecated.  Use hust_fw_formation_control-msg:fw_complete_takeoff instead.")
  (fw_complete_takeoff m))

(cl:ensure-generic-function 'fw_complete_landed-val :lambda-list '(m))
(cl:defmethod fw_complete_landed-val ((m <Fwmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:fw_complete_landed-val is deprecated.  Use hust_fw_formation_control-msg:fw_complete_landed instead.")
  (fw_complete_landed m))

(cl:ensure-generic-function 'formation_distance_complete-val :lambda-list '(m))
(cl:defmethod formation_distance_complete-val ((m <Fwmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:formation_distance_complete-val is deprecated.  Use hust_fw_formation_control-msg:formation_distance_complete instead.")
  (formation_distance_complete m))

(cl:ensure-generic-function 'formation_time_complete-val :lambda-list '(m))
(cl:defmethod formation_time_complete-val ((m <Fwmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hust_fw_formation_control-msg:formation_time_complete-val is deprecated.  Use hust_fw_formation_control-msg:formation_time_complete instead.")
  (formation_time_complete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fwmonitor>) ostream)
  "Serializes a message object of type '<Fwmonitor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'planeID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fw_complete_idel) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fw_is_connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fw_is_wellctrlled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fw_complete_takeoff) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fw_complete_landed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'formation_distance_complete) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'formation_time_complete) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fwmonitor>) istream)
  "Deserializes a message object of type '<Fwmonitor>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'planeID)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fw_complete_idel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fw_is_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fw_is_wellctrlled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fw_complete_takeoff) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fw_complete_landed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'formation_distance_complete) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'formation_time_complete) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fwmonitor>)))
  "Returns string type for a message object of type '<Fwmonitor>"
  "hust_fw_formation_control/Fwmonitor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fwmonitor)))
  "Returns string type for a message object of type 'Fwmonitor"
  "hust_fw_formation_control/Fwmonitor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fwmonitor>)))
  "Returns md5sum for a message object of type '<Fwmonitor>"
  "3094edf1d529e87912463a6fbc28d66c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fwmonitor)))
  "Returns md5sum for a message object of type 'Fwmonitor"
  "3094edf1d529e87912463a6fbc28d66c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fwmonitor>)))
  "Returns full string definition for message of type '<Fwmonitor>"
  (cl:format cl:nil "#飞机的控制状态，任务状态的flags，表示任务完成状况，飞机的飞行状态，失联状态，~%#飞机控制保护状态~%~%uint8 planeID#飞机编号~%~%bool fw_complete_idel#飞机已经空闲~%~%bool fw_is_connected #飞机链接地面站标志位~%~%bool fw_is_wellctrlled #飞机控制状态标志位~%~%bool fw_complete_takeoff #飞机已经起飞标志位~%~%bool fw_complete_landed #飞机已经降落标志位~%~%bool formation_distance_complete #飞机编队距离已经满足~%~%bool formation_time_complete #飞机编队时间已经满足~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fwmonitor)))
  "Returns full string definition for message of type 'Fwmonitor"
  (cl:format cl:nil "#飞机的控制状态，任务状态的flags，表示任务完成状况，飞机的飞行状态，失联状态，~%#飞机控制保护状态~%~%uint8 planeID#飞机编号~%~%bool fw_complete_idel#飞机已经空闲~%~%bool fw_is_connected #飞机链接地面站标志位~%~%bool fw_is_wellctrlled #飞机控制状态标志位~%~%bool fw_complete_takeoff #飞机已经起飞标志位~%~%bool fw_complete_landed #飞机已经降落标志位~%~%bool formation_distance_complete #飞机编队距离已经满足~%~%bool formation_time_complete #飞机编队时间已经满足~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fwmonitor>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fwmonitor>))
  "Converts a ROS message object to a list"
  (cl:list 'Fwmonitor
    (cl:cons ':planeID (planeID msg))
    (cl:cons ':fw_complete_idel (fw_complete_idel msg))
    (cl:cons ':fw_is_connected (fw_is_connected msg))
    (cl:cons ':fw_is_wellctrlled (fw_is_wellctrlled msg))
    (cl:cons ':fw_complete_takeoff (fw_complete_takeoff msg))
    (cl:cons ':fw_complete_landed (fw_complete_landed msg))
    (cl:cons ':formation_distance_complete (formation_distance_complete msg))
    (cl:cons ':formation_time_complete (formation_time_complete msg))
))
