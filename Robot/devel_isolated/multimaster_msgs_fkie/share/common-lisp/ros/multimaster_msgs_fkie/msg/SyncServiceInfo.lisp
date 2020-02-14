; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-msg)


;//! \htmlinclude SyncServiceInfo.msg.html

(cl:defclass <SyncServiceInfo> (roslisp-msg-protocol:ros-message)
  ((service
    :reader service
    :initarg :service
    :type cl:string
    :initform "")
   (serviceuri
    :reader serviceuri
    :initarg :serviceuri
    :type cl:string
    :initform "")
   (node
    :reader node
    :initarg :node
    :type cl:string
    :initform "")
   (nodeuri
    :reader nodeuri
    :initarg :nodeuri
    :type cl:string
    :initform ""))
)

(cl:defclass SyncServiceInfo (<SyncServiceInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncServiceInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncServiceInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-msg:<SyncServiceInfo> is deprecated: use multimaster_msgs_fkie-msg:SyncServiceInfo instead.")))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <SyncServiceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:service-val is deprecated.  Use multimaster_msgs_fkie-msg:service instead.")
  (service m))

(cl:ensure-generic-function 'serviceuri-val :lambda-list '(m))
(cl:defmethod serviceuri-val ((m <SyncServiceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:serviceuri-val is deprecated.  Use multimaster_msgs_fkie-msg:serviceuri instead.")
  (serviceuri m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <SyncServiceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:node-val is deprecated.  Use multimaster_msgs_fkie-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'nodeuri-val :lambda-list '(m))
(cl:defmethod nodeuri-val ((m <SyncServiceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:nodeuri-val is deprecated.  Use multimaster_msgs_fkie-msg:nodeuri instead.")
  (nodeuri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncServiceInfo>) ostream)
  "Serializes a message object of type '<SyncServiceInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serviceuri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serviceuri))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nodeuri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nodeuri))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncServiceInfo>) istream)
  "Deserializes a message object of type '<SyncServiceInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'service) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'service) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serviceuri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serviceuri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nodeuri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nodeuri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncServiceInfo>)))
  "Returns string type for a message object of type '<SyncServiceInfo>"
  "multimaster_msgs_fkie/SyncServiceInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncServiceInfo)))
  "Returns string type for a message object of type 'SyncServiceInfo"
  "multimaster_msgs_fkie/SyncServiceInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncServiceInfo>)))
  "Returns md5sum for a message object of type '<SyncServiceInfo>"
  "8c21bb9ea24403924441840b8c167c40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncServiceInfo)))
  "Returns md5sum for a message object of type 'SyncServiceInfo"
  "8c21bb9ea24403924441840b8c167c40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncServiceInfo>)))
  "Returns full string definition for message of type '<SyncServiceInfo>"
  (cl:format cl:nil "string service~%string serviceuri~%string node~%string nodeuri~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncServiceInfo)))
  "Returns full string definition for message of type 'SyncServiceInfo"
  (cl:format cl:nil "string service~%string serviceuri~%string node~%string nodeuri~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncServiceInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service))
     4 (cl:length (cl:slot-value msg 'serviceuri))
     4 (cl:length (cl:slot-value msg 'node))
     4 (cl:length (cl:slot-value msg 'nodeuri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncServiceInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncServiceInfo
    (cl:cons ':service (service msg))
    (cl:cons ':serviceuri (serviceuri msg))
    (cl:cons ':node (node msg))
    (cl:cons ':nodeuri (nodeuri msg))
))
