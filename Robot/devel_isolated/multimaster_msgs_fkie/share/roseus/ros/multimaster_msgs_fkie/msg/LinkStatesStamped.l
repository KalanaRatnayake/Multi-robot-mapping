;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::LinkStatesStamped)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'LinkStatesStamped (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LINKSTATESSTAMPED")
  (make-package "MULTIMASTER_MSGS_FKIE::LINKSTATESSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude LinkStatesStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass multimaster_msgs_fkie::LinkStatesStamped
  :super ros::object
  :slots (_header _links ))

(defmethod multimaster_msgs_fkie::LinkStatesStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:links __links) (let (r) (dotimes (i 0) (push (instance multimaster_msgs_fkie::LinkState :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _links __links)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:links
   (&rest __links)
   (if (keywordp (car __links))
       (send* _links __links)
     (progn
       (if __links (setq _links (car __links)))
       _links)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; multimaster_msgs_fkie/LinkState[] _links
    (apply #'+ (send-all _links :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; multimaster_msgs_fkie/LinkState[] _links
     (write-long (length _links) s)
     (dolist (elem _links)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; multimaster_msgs_fkie/LinkState[] _links
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _links (let (r) (dotimes (i n) (push (instance multimaster_msgs_fkie::LinkState :init) r)) r))
     (dolist (elem- _links)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get multimaster_msgs_fkie::LinkStatesStamped :md5sum-) "b7c41a46488485ec6593097b0cabe904")
(setf (get multimaster_msgs_fkie::LinkStatesStamped :datatype-) "multimaster_msgs_fkie/LinkStatesStamped")
(setf (get multimaster_msgs_fkie::LinkStatesStamped :definition-)
      "Header header
multimaster_msgs_fkie/LinkState[] links
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: multimaster_msgs_fkie/LinkState
string destination
float32 quality
")



(provide :multimaster_msgs_fkie/LinkStatesStamped "b7c41a46488485ec6593097b0cabe904")


