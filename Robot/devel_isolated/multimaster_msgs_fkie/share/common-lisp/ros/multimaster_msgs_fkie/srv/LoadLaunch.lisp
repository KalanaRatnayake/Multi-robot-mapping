; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-srv)


;//! \htmlinclude LoadLaunch-request.msg.html

(cl:defclass <LoadLaunch-request> (roslisp-msg-protocol:ros-message)
  ((package
    :reader package
    :initarg :package
    :type cl:string
    :initform "")
   (file
    :reader file
    :initarg :file
    :type cl:string
    :initform "")
   (argv
    :reader argv
    :initarg :argv
    :type cl:string
    :initform ""))
)

(cl:defclass LoadLaunch-request (<LoadLaunch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadLaunch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadLaunch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<LoadLaunch-request> is deprecated: use multimaster_msgs_fkie-srv:LoadLaunch-request instead.")))

(cl:ensure-generic-function 'package-val :lambda-list '(m))
(cl:defmethod package-val ((m <LoadLaunch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:package-val is deprecated.  Use multimaster_msgs_fkie-srv:package instead.")
  (package m))

(cl:ensure-generic-function 'file-val :lambda-list '(m))
(cl:defmethod file-val ((m <LoadLaunch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:file-val is deprecated.  Use multimaster_msgs_fkie-srv:file instead.")
  (file m))

(cl:ensure-generic-function 'argv-val :lambda-list '(m))
(cl:defmethod argv-val ((m <LoadLaunch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:argv-val is deprecated.  Use multimaster_msgs_fkie-srv:argv instead.")
  (argv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadLaunch-request>) ostream)
  "Serializes a message object of type '<LoadLaunch-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'package))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'package))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'argv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'argv))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadLaunch-request>) istream)
  "Deserializes a message object of type '<LoadLaunch-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'package) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'package) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'argv) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'argv) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadLaunch-request>)))
  "Returns string type for a service object of type '<LoadLaunch-request>"
  "multimaster_msgs_fkie/LoadLaunchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadLaunch-request)))
  "Returns string type for a service object of type 'LoadLaunch-request"
  "multimaster_msgs_fkie/LoadLaunchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadLaunch-request>)))
  "Returns md5sum for a message object of type '<LoadLaunch-request>"
  "e7cc67269dc4de0d6d7a3648f287878b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadLaunch-request)))
  "Returns md5sum for a message object of type 'LoadLaunch-request"
  "e7cc67269dc4de0d6d7a3648f287878b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadLaunch-request>)))
  "Returns full string definition for message of type '<LoadLaunch-request>"
  (cl:format cl:nil "string package~%string file~%string argv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadLaunch-request)))
  "Returns full string definition for message of type 'LoadLaunch-request"
  (cl:format cl:nil "string package~%string file~%string argv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadLaunch-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'package))
     4 (cl:length (cl:slot-value msg 'file))
     4 (cl:length (cl:slot-value msg 'argv))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadLaunch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadLaunch-request
    (cl:cons ':package (package msg))
    (cl:cons ':file (file msg))
    (cl:cons ':argv (argv msg))
))
;//! \htmlinclude LoadLaunch-response.msg.html

(cl:defclass <LoadLaunch-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadLaunch-response (<LoadLaunch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadLaunch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadLaunch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<LoadLaunch-response> is deprecated: use multimaster_msgs_fkie-srv:LoadLaunch-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadLaunch-response>) ostream)
  "Serializes a message object of type '<LoadLaunch-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadLaunch-response>) istream)
  "Deserializes a message object of type '<LoadLaunch-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadLaunch-response>)))
  "Returns string type for a service object of type '<LoadLaunch-response>"
  "multimaster_msgs_fkie/LoadLaunchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadLaunch-response)))
  "Returns string type for a service object of type 'LoadLaunch-response"
  "multimaster_msgs_fkie/LoadLaunchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadLaunch-response>)))
  "Returns md5sum for a message object of type '<LoadLaunch-response>"
  "e7cc67269dc4de0d6d7a3648f287878b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadLaunch-response)))
  "Returns md5sum for a message object of type 'LoadLaunch-response"
  "e7cc67269dc4de0d6d7a3648f287878b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadLaunch-response>)))
  "Returns full string definition for message of type '<LoadLaunch-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadLaunch-response)))
  "Returns full string definition for message of type 'LoadLaunch-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadLaunch-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadLaunch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadLaunch-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadLaunch)))
  'LoadLaunch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadLaunch)))
  'LoadLaunch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadLaunch)))
  "Returns string type for a service object of type '<LoadLaunch>"
  "multimaster_msgs_fkie/LoadLaunch")