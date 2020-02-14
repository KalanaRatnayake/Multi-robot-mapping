; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-msg)


;//! \htmlinclude ROSMaster.msg.html

(cl:defclass <ROSMaster> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform "")
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (timestamp_local
    :reader timestamp_local
    :initarg :timestamp_local
    :type cl:float
    :initform 0.0)
   (online
    :reader online
    :initarg :online
    :type cl:boolean
    :initform cl:nil)
   (discoverer_name
    :reader discoverer_name
    :initarg :discoverer_name
    :type cl:string
    :initform "")
   (monitoruri
    :reader monitoruri
    :initarg :monitoruri
    :type cl:string
    :initform ""))
)

(cl:defclass ROSMaster (<ROSMaster>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROSMaster>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROSMaster)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-msg:<ROSMaster> is deprecated: use multimaster_msgs_fkie-msg:ROSMaster instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ROSMaster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:name-val is deprecated.  Use multimaster_msgs_fkie-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <ROSMaster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:uri-val is deprecated.  Use multimaster_msgs_fkie-msg:uri instead.")
  (uri m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <ROSMaster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:timestamp-val is deprecated.  Use multimaster_msgs_fkie-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'timestamp_local-val :lambda-list '(m))
(cl:defmethod timestamp_local-val ((m <ROSMaster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:timestamp_local-val is deprecated.  Use multimaster_msgs_fkie-msg:timestamp_local instead.")
  (timestamp_local m))

(cl:ensure-generic-function 'online-val :lambda-list '(m))
(cl:defmethod online-val ((m <ROSMaster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:online-val is deprecated.  Use multimaster_msgs_fkie-msg:online instead.")
  (online m))

(cl:ensure-generic-function 'discoverer_name-val :lambda-list '(m))
(cl:defmethod discoverer_name-val ((m <ROSMaster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:discoverer_name-val is deprecated.  Use multimaster_msgs_fkie-msg:discoverer_name instead.")
  (discoverer_name m))

(cl:ensure-generic-function 'monitoruri-val :lambda-list '(m))
(cl:defmethod monitoruri-val ((m <ROSMaster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:monitoruri-val is deprecated.  Use multimaster_msgs_fkie-msg:monitoruri instead.")
  (monitoruri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROSMaster>) ostream)
  "Serializes a message object of type '<ROSMaster>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp_local))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'online) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'discoverer_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'discoverer_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'monitoruri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'monitoruri))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROSMaster>) istream)
  "Deserializes a message object of type '<ROSMaster>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp_local) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'online) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'discoverer_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'discoverer_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'monitoruri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'monitoruri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROSMaster>)))
  "Returns string type for a message object of type '<ROSMaster>"
  "multimaster_msgs_fkie/ROSMaster")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROSMaster)))
  "Returns string type for a message object of type 'ROSMaster"
  "multimaster_msgs_fkie/ROSMaster")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROSMaster>)))
  "Returns md5sum for a message object of type '<ROSMaster>"
  "08ea76968a3be2b8b1c6550b39616f72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROSMaster)))
  "Returns md5sum for a message object of type 'ROSMaster"
  "08ea76968a3be2b8b1c6550b39616f72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROSMaster>)))
  "Returns full string definition for message of type '<ROSMaster>"
  (cl:format cl:nil "string name~%# ROS Master URI~%string uri~%# The timestamp of the state of the remoter ROS master~%float64 timestamp~%# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.~%float64 timestamp_local~%bool online~%string discoverer_name~%string monitoruri~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROSMaster)))
  "Returns full string definition for message of type 'ROSMaster"
  (cl:format cl:nil "string name~%# ROS Master URI~%string uri~%# The timestamp of the state of the remoter ROS master~%float64 timestamp~%# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.~%float64 timestamp_local~%bool online~%string discoverer_name~%string monitoruri~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROSMaster>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'uri))
     8
     8
     1
     4 (cl:length (cl:slot-value msg 'discoverer_name))
     4 (cl:length (cl:slot-value msg 'monitoruri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROSMaster>))
  "Converts a ROS message object to a list"
  (cl:list 'ROSMaster
    (cl:cons ':name (name msg))
    (cl:cons ':uri (uri msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':timestamp_local (timestamp_local msg))
    (cl:cons ':online (online msg))
    (cl:cons ':discoverer_name (discoverer_name msg))
    (cl:cons ':monitoruri (monitoruri msg))
))
