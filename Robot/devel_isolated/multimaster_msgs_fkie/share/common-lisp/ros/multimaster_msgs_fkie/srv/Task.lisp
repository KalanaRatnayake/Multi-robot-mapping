; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-srv)


;//! \htmlinclude Task-request.msg.html

(cl:defclass <Task-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:string
    :initform ""))
)

(cl:defclass Task-request (<Task-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<Task-request> is deprecated: use multimaster_msgs_fkie-srv:Task-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <Task-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:node-val is deprecated.  Use multimaster_msgs_fkie-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task-request>) ostream)
  "Serializes a message object of type '<Task-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task-request>) istream)
  "Deserializes a message object of type '<Task-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task-request>)))
  "Returns string type for a service object of type '<Task-request>"
  "multimaster_msgs_fkie/TaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task-request)))
  "Returns string type for a service object of type 'Task-request"
  "multimaster_msgs_fkie/TaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task-request>)))
  "Returns md5sum for a message object of type '<Task-request>"
  "a94c40e70a4b82863e6e52ec16732447")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task-request)))
  "Returns md5sum for a message object of type 'Task-request"
  "a94c40e70a4b82863e6e52ec16732447")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task-request>)))
  "Returns full string definition for message of type '<Task-request>"
  (cl:format cl:nil "string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task-request)))
  "Returns full string definition for message of type 'Task-request"
  (cl:format cl:nil "string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Task-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude Task-response.msg.html

(cl:defclass <Task-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Task-response (<Task-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<Task-response> is deprecated: use multimaster_msgs_fkie-srv:Task-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task-response>) ostream)
  "Serializes a message object of type '<Task-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task-response>) istream)
  "Deserializes a message object of type '<Task-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task-response>)))
  "Returns string type for a service object of type '<Task-response>"
  "multimaster_msgs_fkie/TaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task-response)))
  "Returns string type for a service object of type 'Task-response"
  "multimaster_msgs_fkie/TaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task-response>)))
  "Returns md5sum for a message object of type '<Task-response>"
  "a94c40e70a4b82863e6e52ec16732447")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task-response)))
  "Returns md5sum for a message object of type 'Task-response"
  "a94c40e70a4b82863e6e52ec16732447")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task-response>)))
  "Returns full string definition for message of type '<Task-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task-response)))
  "Returns full string definition for message of type 'Task-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Task-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Task)))
  'Task-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Task)))
  'Task-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task)))
  "Returns string type for a service object of type '<Task>"
  "multimaster_msgs_fkie/Task")