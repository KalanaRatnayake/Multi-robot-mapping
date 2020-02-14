; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-msg)


;//! \htmlinclude MasterState.msg.html

(cl:defclass <MasterState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (master
    :reader master
    :initarg :master
    :type multimaster_msgs_fkie-msg:ROSMaster
    :initform (cl:make-instance 'multimaster_msgs_fkie-msg:ROSMaster)))
)

(cl:defclass MasterState (<MasterState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MasterState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MasterState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-msg:<MasterState> is deprecated: use multimaster_msgs_fkie-msg:MasterState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MasterState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:state-val is deprecated.  Use multimaster_msgs_fkie-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'master-val :lambda-list '(m))
(cl:defmethod master-val ((m <MasterState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:master-val is deprecated.  Use multimaster_msgs_fkie-msg:master instead.")
  (master m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MasterState>)))
    "Constants for message type '<MasterState>"
  '((:STATE_NEW . 'new')
    (:STATE_REMOVED . 'removed')
    (:STATE_CHANGED . 'changed'))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MasterState)))
    "Constants for message type 'MasterState"
  '((:STATE_NEW . 'new')
    (:STATE_REMOVED . 'removed')
    (:STATE_CHANGED . 'changed'))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MasterState>) ostream)
  "Serializes a message object of type '<MasterState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'master) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MasterState>) istream)
  "Deserializes a message object of type '<MasterState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'master) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MasterState>)))
  "Returns string type for a message object of type '<MasterState>"
  "multimaster_msgs_fkie/MasterState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MasterState)))
  "Returns string type for a message object of type 'MasterState"
  "multimaster_msgs_fkie/MasterState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MasterState>)))
  "Returns md5sum for a message object of type '<MasterState>"
  "80884072ff659ac99555a763e9ba0b23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MasterState)))
  "Returns md5sum for a message object of type 'MasterState"
  "80884072ff659ac99555a763e9ba0b23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MasterState>)))
  "Returns full string definition for message of type '<MasterState>"
  (cl:format cl:nil "string state~%multimaster_msgs_fkie/ROSMaster master~%~%string STATE_NEW='new'~%string STATE_REMOVED='removed'~%string STATE_CHANGED='changed'~%~%================================================================================~%MSG: multimaster_msgs_fkie/ROSMaster~%string name~%# ROS Master URI~%string uri~%# The timestamp of the state of the remoter ROS master~%float64 timestamp~%# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.~%float64 timestamp_local~%bool online~%string discoverer_name~%string monitoruri~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MasterState)))
  "Returns full string definition for message of type 'MasterState"
  (cl:format cl:nil "string state~%multimaster_msgs_fkie/ROSMaster master~%~%string STATE_NEW='new'~%string STATE_REMOVED='removed'~%string STATE_CHANGED='changed'~%~%================================================================================~%MSG: multimaster_msgs_fkie/ROSMaster~%string name~%# ROS Master URI~%string uri~%# The timestamp of the state of the remoter ROS master~%float64 timestamp~%# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.~%float64 timestamp_local~%bool online~%string discoverer_name~%string monitoruri~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MasterState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'master))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MasterState>))
  "Converts a ROS message object to a list"
  (cl:list 'MasterState
    (cl:cons ':state (state msg))
    (cl:cons ':master (master msg))
))
