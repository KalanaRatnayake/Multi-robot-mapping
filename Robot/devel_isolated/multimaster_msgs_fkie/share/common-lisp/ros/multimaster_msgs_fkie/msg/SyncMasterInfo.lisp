; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-msg)


;//! \htmlinclude SyncMasterInfo.msg.html

(cl:defclass <SyncMasterInfo> (roslisp-msg-protocol:ros-message)
  ((masteruri
    :reader masteruri
    :initarg :masteruri
    :type cl:string
    :initform "")
   (nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (publisher
    :reader publisher
    :initarg :publisher
    :type (cl:vector multimaster_msgs_fkie-msg:SyncTopicInfo)
   :initform (cl:make-array 0 :element-type 'multimaster_msgs_fkie-msg:SyncTopicInfo :initial-element (cl:make-instance 'multimaster_msgs_fkie-msg:SyncTopicInfo)))
   (subscriber
    :reader subscriber
    :initarg :subscriber
    :type (cl:vector multimaster_msgs_fkie-msg:SyncTopicInfo)
   :initform (cl:make-array 0 :element-type 'multimaster_msgs_fkie-msg:SyncTopicInfo :initial-element (cl:make-instance 'multimaster_msgs_fkie-msg:SyncTopicInfo)))
   (services
    :reader services
    :initarg :services
    :type (cl:vector multimaster_msgs_fkie-msg:SyncServiceInfo)
   :initform (cl:make-array 0 :element-type 'multimaster_msgs_fkie-msg:SyncServiceInfo :initial-element (cl:make-instance 'multimaster_msgs_fkie-msg:SyncServiceInfo))))
)

(cl:defclass SyncMasterInfo (<SyncMasterInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncMasterInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncMasterInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-msg:<SyncMasterInfo> is deprecated: use multimaster_msgs_fkie-msg:SyncMasterInfo instead.")))

(cl:ensure-generic-function 'masteruri-val :lambda-list '(m))
(cl:defmethod masteruri-val ((m <SyncMasterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:masteruri-val is deprecated.  Use multimaster_msgs_fkie-msg:masteruri instead.")
  (masteruri m))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <SyncMasterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:nodes-val is deprecated.  Use multimaster_msgs_fkie-msg:nodes instead.")
  (nodes m))

(cl:ensure-generic-function 'publisher-val :lambda-list '(m))
(cl:defmethod publisher-val ((m <SyncMasterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:publisher-val is deprecated.  Use multimaster_msgs_fkie-msg:publisher instead.")
  (publisher m))

(cl:ensure-generic-function 'subscriber-val :lambda-list '(m))
(cl:defmethod subscriber-val ((m <SyncMasterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:subscriber-val is deprecated.  Use multimaster_msgs_fkie-msg:subscriber instead.")
  (subscriber m))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <SyncMasterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:services-val is deprecated.  Use multimaster_msgs_fkie-msg:services instead.")
  (services m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncMasterInfo>) ostream)
  "Serializes a message object of type '<SyncMasterInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'masteruri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'masteruri))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'nodes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'publisher))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'publisher))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subscriber))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'subscriber))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'services))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'services))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncMasterInfo>) istream)
  "Deserializes a message object of type '<SyncMasterInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'masteruri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'masteruri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'publisher) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'publisher)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'multimaster_msgs_fkie-msg:SyncTopicInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subscriber) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subscriber)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'multimaster_msgs_fkie-msg:SyncTopicInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'services) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'services)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'multimaster_msgs_fkie-msg:SyncServiceInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncMasterInfo>)))
  "Returns string type for a message object of type '<SyncMasterInfo>"
  "multimaster_msgs_fkie/SyncMasterInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncMasterInfo)))
  "Returns string type for a message object of type 'SyncMasterInfo"
  "multimaster_msgs_fkie/SyncMasterInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncMasterInfo>)))
  "Returns md5sum for a message object of type '<SyncMasterInfo>"
  "ba4b02792114bcc4bae507c60dd14d66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncMasterInfo)))
  "Returns md5sum for a message object of type 'SyncMasterInfo"
  "ba4b02792114bcc4bae507c60dd14d66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncMasterInfo>)))
  "Returns full string definition for message of type '<SyncMasterInfo>"
  (cl:format cl:nil "string masteruri~%string[] nodes~%multimaster_msgs_fkie/SyncTopicInfo[] publisher~%multimaster_msgs_fkie/SyncTopicInfo[] subscriber~%multimaster_msgs_fkie/SyncServiceInfo[] services~%================================================================================~%MSG: multimaster_msgs_fkie/SyncTopicInfo~%string topic~%string node~%string nodeuri~%================================================================================~%MSG: multimaster_msgs_fkie/SyncServiceInfo~%string service~%string serviceuri~%string node~%string nodeuri~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncMasterInfo)))
  "Returns full string definition for message of type 'SyncMasterInfo"
  (cl:format cl:nil "string masteruri~%string[] nodes~%multimaster_msgs_fkie/SyncTopicInfo[] publisher~%multimaster_msgs_fkie/SyncTopicInfo[] subscriber~%multimaster_msgs_fkie/SyncServiceInfo[] services~%================================================================================~%MSG: multimaster_msgs_fkie/SyncTopicInfo~%string topic~%string node~%string nodeuri~%================================================================================~%MSG: multimaster_msgs_fkie/SyncServiceInfo~%string service~%string serviceuri~%string node~%string nodeuri~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncMasterInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'masteruri))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'publisher) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subscriber) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncMasterInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncMasterInfo
    (cl:cons ':masteruri (masteruri msg))
    (cl:cons ':nodes (nodes msg))
    (cl:cons ':publisher (publisher msg))
    (cl:cons ':subscriber (subscriber msg))
    (cl:cons ':services (services msg))
))
