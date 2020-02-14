; Auto-generated. Do not edit!


(cl:in-package multimaster_msgs_fkie-srv)


;//! \htmlinclude DiscoverMasters-request.msg.html

(cl:defclass <DiscoverMasters-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DiscoverMasters-request (<DiscoverMasters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiscoverMasters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiscoverMasters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<DiscoverMasters-request> is deprecated: use multimaster_msgs_fkie-srv:DiscoverMasters-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiscoverMasters-request>) ostream)
  "Serializes a message object of type '<DiscoverMasters-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiscoverMasters-request>) istream)
  "Deserializes a message object of type '<DiscoverMasters-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiscoverMasters-request>)))
  "Returns string type for a service object of type '<DiscoverMasters-request>"
  "multimaster_msgs_fkie/DiscoverMastersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiscoverMasters-request)))
  "Returns string type for a service object of type 'DiscoverMasters-request"
  "multimaster_msgs_fkie/DiscoverMastersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiscoverMasters-request>)))
  "Returns md5sum for a message object of type '<DiscoverMasters-request>"
  "bc7525cc24dd3b880f044a2cdfb95aad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiscoverMasters-request)))
  "Returns md5sum for a message object of type 'DiscoverMasters-request"
  "bc7525cc24dd3b880f044a2cdfb95aad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiscoverMasters-request>)))
  "Returns full string definition for message of type '<DiscoverMasters-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiscoverMasters-request)))
  "Returns full string definition for message of type 'DiscoverMasters-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiscoverMasters-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiscoverMasters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DiscoverMasters-request
))
;//! \htmlinclude DiscoverMasters-response.msg.html

(cl:defclass <DiscoverMasters-response> (roslisp-msg-protocol:ros-message)
  ((masters
    :reader masters
    :initarg :masters
    :type (cl:vector multimaster_msgs_fkie-msg:ROSMaster)
   :initform (cl:make-array 0 :element-type 'multimaster_msgs_fkie-msg:ROSMaster :initial-element (cl:make-instance 'multimaster_msgs_fkie-msg:ROSMaster))))
)

(cl:defclass DiscoverMasters-response (<DiscoverMasters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiscoverMasters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiscoverMasters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multimaster_msgs_fkie-srv:<DiscoverMasters-response> is deprecated: use multimaster_msgs_fkie-srv:DiscoverMasters-response instead.")))

(cl:ensure-generic-function 'masters-val :lambda-list '(m))
(cl:defmethod masters-val ((m <DiscoverMasters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multimaster_msgs_fkie-srv:masters-val is deprecated.  Use multimaster_msgs_fkie-srv:masters instead.")
  (masters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiscoverMasters-response>) ostream)
  "Serializes a message object of type '<DiscoverMasters-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'masters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'masters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiscoverMasters-response>) istream)
  "Deserializes a message object of type '<DiscoverMasters-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'masters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'masters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'multimaster_msgs_fkie-msg:ROSMaster))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiscoverMasters-response>)))
  "Returns string type for a service object of type '<DiscoverMasters-response>"
  "multimaster_msgs_fkie/DiscoverMastersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiscoverMasters-response)))
  "Returns string type for a service object of type 'DiscoverMasters-response"
  "multimaster_msgs_fkie/DiscoverMastersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiscoverMasters-response>)))
  "Returns md5sum for a message object of type '<DiscoverMasters-response>"
  "bc7525cc24dd3b880f044a2cdfb95aad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiscoverMasters-response)))
  "Returns md5sum for a message object of type 'DiscoverMasters-response"
  "bc7525cc24dd3b880f044a2cdfb95aad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiscoverMasters-response>)))
  "Returns full string definition for message of type '<DiscoverMasters-response>"
  (cl:format cl:nil "multimaster_msgs_fkie/ROSMaster[] masters~%~%~%================================================================================~%MSG: multimaster_msgs_fkie/ROSMaster~%string name~%# ROS Master URI~%string uri~%# The timestamp of the state of the remoter ROS master~%float64 timestamp~%# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.~%float64 timestamp_local~%bool online~%string discoverer_name~%string monitoruri~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiscoverMasters-response)))
  "Returns full string definition for message of type 'DiscoverMasters-response"
  (cl:format cl:nil "multimaster_msgs_fkie/ROSMaster[] masters~%~%~%================================================================================~%MSG: multimaster_msgs_fkie/ROSMaster~%string name~%# ROS Master URI~%string uri~%# The timestamp of the state of the remoter ROS master~%float64 timestamp~%# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.~%float64 timestamp_local~%bool online~%string discoverer_name~%string monitoruri~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiscoverMasters-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'masters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiscoverMasters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DiscoverMasters-response
    (cl:cons ':masters (masters msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DiscoverMasters)))
  'DiscoverMasters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DiscoverMasters)))
  'DiscoverMasters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiscoverMasters)))
  "Returns string type for a service object of type '<DiscoverMasters>"
  "multimaster_msgs_fkie/DiscoverMasters")