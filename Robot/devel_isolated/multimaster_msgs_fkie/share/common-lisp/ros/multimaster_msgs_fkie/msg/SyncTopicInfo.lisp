; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-msg)


;//! \htmlinclude SyncTopicInfo.msg.html

(cl:defclass <SyncTopicInfo> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
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

(cl:defclass SyncTopicInfo (<SyncTopicInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncTopicInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncTopicInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-msg:<SyncTopicInfo> is deprecated: use multimaster_msgs_fkie-msg:SyncTopicInfo instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <SyncTopicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:topic-val is deprecated.  Use multimaster_msgs_fkie-msg:topic instead.")
  (topic m))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <SyncTopicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:node-val is deprecated.  Use multimaster_msgs_fkie-msg:node instead.")
  (node m))

(cl:ensure-generic-function 'nodeuri-val :lambda-list '(m))
(cl:defmethod nodeuri-val ((m <SyncTopicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:nodeuri-val is deprecated.  Use multimaster_msgs_fkie-msg:nodeuri instead.")
  (nodeuri m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncTopicInfo>) ostream)
  "Serializes a message object of type '<SyncTopicInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncTopicInfo>) istream)
  "Deserializes a message object of type '<SyncTopicInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncTopicInfo>)))
  "Returns string type for a message object of type '<SyncTopicInfo>"
  "multimaster_msgs_fkie/SyncTopicInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncTopicInfo)))
  "Returns string type for a message object of type 'SyncTopicInfo"
  "multimaster_msgs_fkie/SyncTopicInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncTopicInfo>)))
  "Returns md5sum for a message object of type '<SyncTopicInfo>"
  "1b296160d6f5a9d7f6550f6130da2ba4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncTopicInfo)))
  "Returns md5sum for a message object of type 'SyncTopicInfo"
  "1b296160d6f5a9d7f6550f6130da2ba4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncTopicInfo>)))
  "Returns full string definition for message of type '<SyncTopicInfo>"
  (cl:format cl:nil "string topic~%string node~%string nodeuri~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncTopicInfo)))
  "Returns full string definition for message of type 'SyncTopicInfo"
  (cl:format cl:nil "string topic~%string node~%string nodeuri~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncTopicInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
     4 (cl:length (cl:slot-value msg 'node))
     4 (cl:length (cl:slot-value msg 'nodeuri))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncTopicInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncTopicInfo
    (cl:cons ':topic (topic msg))
    (cl:cons ':node (node msg))
    (cl:cons ':nodeuri (nodeuri msg))
))
