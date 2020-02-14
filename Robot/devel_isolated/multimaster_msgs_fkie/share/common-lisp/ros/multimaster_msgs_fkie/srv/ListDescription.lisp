; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-srv)


;//! \htmlinclude ListDescription-request.msg.html

(cl:defclass <ListDescription-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListDescription-request (<ListDescription-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListDescription-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListDescription-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<ListDescription-request> is deprecated: use multimaster_msgs_fkie-srv:ListDescription-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListDescription-request>) ostream)
  "Serializes a message object of type '<ListDescription-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListDescription-request>) istream)
  "Deserializes a message object of type '<ListDescription-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListDescription-request>)))
  "Returns string type for a service object of type '<ListDescription-request>"
  "multimaster_msgs_fkie/ListDescriptionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListDescription-request)))
  "Returns string type for a service object of type 'ListDescription-request"
  "multimaster_msgs_fkie/ListDescriptionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListDescription-request>)))
  "Returns md5sum for a message object of type '<ListDescription-request>"
  "a36ba5a97ce785b9b964aa015b26332b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListDescription-request)))
  "Returns md5sum for a message object of type 'ListDescription-request"
  "a36ba5a97ce785b9b964aa015b26332b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListDescription-request>)))
  "Returns full string definition for message of type '<ListDescription-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListDescription-request)))
  "Returns full string definition for message of type 'ListDescription-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListDescription-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListDescription-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListDescription-request
))
;//! \htmlinclude ListDescription-response.msg.html

(cl:defclass <ListDescription-response> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (robot_type
    :reader robot_type
    :initarg :robot_type
    :type cl:string
    :initform "")
   (robot_images
    :reader robot_images
    :initarg :robot_images
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (robot_descr
    :reader robot_descr
    :initarg :robot_descr
    :type cl:string
    :initform "")
   (capabilities
    :reader capabilities
    :initarg :capabilities
    :type (cl:vector multimaster_msgs_fkie-msg:Capability)
   :initform (cl:make-array 0 :element-type 'multimaster_msgs_fkie-msg:Capability :initial-element (cl:make-instance 'multimaster_msgs_fkie-msg:Capability))))
)

(cl:defclass ListDescription-response (<ListDescription-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListDescription-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListDescription-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<ListDescription-response> is deprecated: use multimaster_msgs_fkie-srv:ListDescription-response instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <ListDescription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:robot_name-val is deprecated.  Use multimaster_msgs_fkie-srv:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'robot_type-val :lambda-list '(m))
(cl:defmethod robot_type-val ((m <ListDescription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:robot_type-val is deprecated.  Use multimaster_msgs_fkie-srv:robot_type instead.")
  (robot_type m))

(cl:ensure-generic-function 'robot_images-val :lambda-list '(m))
(cl:defmethod robot_images-val ((m <ListDescription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:robot_images-val is deprecated.  Use multimaster_msgs_fkie-srv:robot_images instead.")
  (robot_images m))

(cl:ensure-generic-function 'robot_descr-val :lambda-list '(m))
(cl:defmethod robot_descr-val ((m <ListDescription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:robot_descr-val is deprecated.  Use multimaster_msgs_fkie-srv:robot_descr instead.")
  (robot_descr m))

(cl:ensure-generic-function 'capabilities-val :lambda-list '(m))
(cl:defmethod capabilities-val ((m <ListDescription-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:capabilities-val is deprecated.  Use multimaster_msgs_fkie-srv:capabilities instead.")
  (capabilities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListDescription-response>) ostream)
  "Serializes a message object of type '<ListDescription-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_images))))
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
   (cl:slot-value msg 'robot_images))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_descr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_descr))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'capabilities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'capabilities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListDescription-response>) istream)
  "Deserializes a message object of type '<ListDescription-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_images) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_images)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_descr) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_descr) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'capabilities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'capabilities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'multimaster_msgs_fkie-msg:Capability))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListDescription-response>)))
  "Returns string type for a service object of type '<ListDescription-response>"
  "multimaster_msgs_fkie/ListDescriptionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListDescription-response)))
  "Returns string type for a service object of type 'ListDescription-response"
  "multimaster_msgs_fkie/ListDescriptionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListDescription-response>)))
  "Returns md5sum for a message object of type '<ListDescription-response>"
  "a36ba5a97ce785b9b964aa015b26332b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListDescription-response)))
  "Returns md5sum for a message object of type 'ListDescription-response"
  "a36ba5a97ce785b9b964aa015b26332b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListDescription-response>)))
  "Returns full string definition for message of type '<ListDescription-response>"
  (cl:format cl:nil "string robot_name~%string robot_type~%string[] robot_images~%string robot_descr~%multimaster_msgs_fkie/Capability[] capabilities~%~%================================================================================~%MSG: multimaster_msgs_fkie/Capability~%# the ROS namespace of the capability~%string namespace~%# the name of the capability~%string name~%# the type of the capability~%string type~%# list of the images assigned to the this capability~%string[] images~%# the description of the capability~%string description~%# a list of nodes assigned to this group. The nodes are described by full ROS name (with namesspace)~%string[] nodes ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListDescription-response)))
  "Returns full string definition for message of type 'ListDescription-response"
  (cl:format cl:nil "string robot_name~%string robot_type~%string[] robot_images~%string robot_descr~%multimaster_msgs_fkie/Capability[] capabilities~%~%================================================================================~%MSG: multimaster_msgs_fkie/Capability~%# the ROS namespace of the capability~%string namespace~%# the name of the capability~%string name~%# the type of the capability~%string type~%# list of the images assigned to the this capability~%string[] images~%# the description of the capability~%string description~%# a list of nodes assigned to this group. The nodes are described by full ROS name (with namesspace)~%string[] nodes ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListDescription-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
     4 (cl:length (cl:slot-value msg 'robot_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_images) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'robot_descr))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'capabilities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListDescription-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListDescription-response
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':robot_type (robot_type msg))
    (cl:cons ':robot_images (robot_images msg))
    (cl:cons ':robot_descr (robot_descr msg))
    (cl:cons ':capabilities (capabilities msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListDescription)))
  'ListDescription-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListDescription)))
  'ListDescription-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListDescription)))
  "Returns string type for a service object of type '<ListDescription>"
  "multimaster_msgs_fkie/ListDescription")