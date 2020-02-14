; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-msg)


;//! \htmlinclude LinkStatesStamped.msg.html

(cl:defclass <LinkStatesStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (links
    :reader links
    :initarg :links
    :type (cl:vector multimaster_msgs_fkie-msg:LinkState)
   :initform (cl:make-array 0 :element-type 'multimaster_msgs_fkie-msg:LinkState :initial-element (cl:make-instance 'multimaster_msgs_fkie-msg:LinkState))))
)

(cl:defclass LinkStatesStamped (<LinkStatesStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinkStatesStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinkStatesStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-msg:<LinkStatesStamped> is deprecated: use multimaster_msgs_fkie-msg:LinkStatesStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LinkStatesStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:header-val is deprecated.  Use multimaster_msgs_fkie-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'links-val :lambda-list '(m))
(cl:defmethod links-val ((m <LinkStatesStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:links-val is deprecated.  Use multimaster_msgs_fkie-msg:links instead.")
  (links m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinkStatesStamped>) ostream)
  "Serializes a message object of type '<LinkStatesStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'links))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'links))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinkStatesStamped>) istream)
  "Deserializes a message object of type '<LinkStatesStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'links) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'links)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'multimaster_msgs_fkie-msg:LinkState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinkStatesStamped>)))
  "Returns string type for a message object of type '<LinkStatesStamped>"
  "multimaster_msgs_fkie/LinkStatesStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinkStatesStamped)))
  "Returns string type for a message object of type 'LinkStatesStamped"
  "multimaster_msgs_fkie/LinkStatesStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinkStatesStamped>)))
  "Returns md5sum for a message object of type '<LinkStatesStamped>"
  "b7c41a46488485ec6593097b0cabe904")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinkStatesStamped)))
  "Returns md5sum for a message object of type 'LinkStatesStamped"
  "b7c41a46488485ec6593097b0cabe904")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinkStatesStamped>)))
  "Returns full string definition for message of type '<LinkStatesStamped>"
  (cl:format cl:nil "Header header~%multimaster_msgs_fkie/LinkState[] links~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: multimaster_msgs_fkie/LinkState~%string destination~%float32 quality~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinkStatesStamped)))
  "Returns full string definition for message of type 'LinkStatesStamped"
  (cl:format cl:nil "Header header~%multimaster_msgs_fkie/LinkState[] links~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: multimaster_msgs_fkie/LinkState~%string destination~%float32 quality~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinkStatesStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'links) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinkStatesStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'LinkStatesStamped
    (cl:cons ':header (header msg))
    (cl:cons ':links (links msg))
))
