; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-srv)


;//! \htmlinclude ListNodes-request.msg.html

(cl:defclass <ListNodes-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListNodes-request (<ListNodes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListNodes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListNodes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<ListNodes-request> is deprecated: use multimaster_msgs_fkie-srv:ListNodes-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListNodes-request>) ostream)
  "Serializes a message object of type '<ListNodes-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListNodes-request>) istream)
  "Deserializes a message object of type '<ListNodes-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListNodes-request>)))
  "Returns string type for a service object of type '<ListNodes-request>"
  "multimaster_msgs_fkie/ListNodesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListNodes-request)))
  "Returns string type for a service object of type 'ListNodes-request"
  "multimaster_msgs_fkie/ListNodesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListNodes-request>)))
  "Returns md5sum for a message object of type '<ListNodes-request>"
  "3d07bfda1268b4f76b16b7ba8a82665d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListNodes-request)))
  "Returns md5sum for a message object of type 'ListNodes-request"
  "3d07bfda1268b4f76b16b7ba8a82665d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListNodes-request>)))
  "Returns full string definition for message of type '<ListNodes-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListNodes-request)))
  "Returns full string definition for message of type 'ListNodes-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListNodes-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListNodes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListNodes-request
))
;//! \htmlinclude ListNodes-response.msg.html

(cl:defclass <ListNodes-response> (roslisp-msg-protocol:ros-message)
  ((nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ListNodes-response (<ListNodes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListNodes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListNodes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<ListNodes-response> is deprecated: use multimaster_msgs_fkie-srv:ListNodes-response instead.")))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <ListNodes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:nodes-val is deprecated.  Use multimaster_msgs_fkie-srv:nodes instead.")
  (nodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListNodes-response>) ostream)
  "Serializes a message object of type '<ListNodes-response>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListNodes-response>) istream)
  "Deserializes a message object of type '<ListNodes-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListNodes-response>)))
  "Returns string type for a service object of type '<ListNodes-response>"
  "multimaster_msgs_fkie/ListNodesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListNodes-response)))
  "Returns string type for a service object of type 'ListNodes-response"
  "multimaster_msgs_fkie/ListNodesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListNodes-response>)))
  "Returns md5sum for a message object of type '<ListNodes-response>"
  "3d07bfda1268b4f76b16b7ba8a82665d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListNodes-response)))
  "Returns md5sum for a message object of type 'ListNodes-response"
  "3d07bfda1268b4f76b16b7ba8a82665d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListNodes-response>)))
  "Returns full string definition for message of type '<ListNodes-response>"
  (cl:format cl:nil "string[] nodes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListNodes-response)))
  "Returns full string definition for message of type 'ListNodes-response"
  (cl:format cl:nil "string[] nodes~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListNodes-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListNodes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListNodes-response
    (cl:cons ':nodes (nodes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListNodes)))
  'ListNodes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListNodes)))
  'ListNodes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListNodes)))
  "Returns string type for a service object of type '<ListNodes>"
  "multimaster_msgs_fkie/ListNodes")