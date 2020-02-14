; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-msg)


;//! \htmlinclude LinkState.msg.html

(cl:defclass <LinkState> (roslisp-msg-protocol:ros-message)
  ((destination
    :reader destination
    :initarg :destination
    :type cl:string
    :initform "")
   (quality
    :reader quality
    :initarg :quality
    :type cl:float
    :initform 0.0))
)

(cl:defclass LinkState (<LinkState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinkState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinkState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-msg:<LinkState> is deprecated: use multimaster_msgs_fkie-msg:LinkState instead.")))

(cl:ensure-generic-function 'destination-val :lambda-list '(m))
(cl:defmethod destination-val ((m <LinkState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:destination-val is deprecated.  Use multimaster_msgs_fkie-msg:destination instead.")
  (destination m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <LinkState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-msg:quality-val is deprecated.  Use multimaster_msgs_fkie-msg:quality instead.")
  (quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinkState>) ostream)
  "Serializes a message object of type '<LinkState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destination))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destination))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinkState>) istream)
  "Deserializes a message object of type '<LinkState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destination) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destination) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'quality) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinkState>)))
  "Returns string type for a message object of type '<LinkState>"
  "multimaster_msgs_fkie/LinkState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinkState)))
  "Returns string type for a message object of type 'LinkState"
  "multimaster_msgs_fkie/LinkState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinkState>)))
  "Returns md5sum for a message object of type '<LinkState>"
  "d3fe0aab52336c0bd0bfea55b131c66e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinkState)))
  "Returns md5sum for a message object of type 'LinkState"
  "d3fe0aab52336c0bd0bfea55b131c66e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinkState>)))
  "Returns full string definition for message of type '<LinkState>"
  (cl:format cl:nil "string destination~%float32 quality~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinkState)))
  "Returns full string definition for message of type 'LinkState"
  (cl:format cl:nil "string destination~%float32 quality~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinkState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'destination))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinkState>))
  "Converts a ROS message object to a list"
  (cl:list 'LinkState
    (cl:cons ':destination (destination msg))
    (cl:cons ':quality (quality msg))
))
