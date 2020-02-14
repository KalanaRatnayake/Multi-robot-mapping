;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::DiscoverMasters)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'DiscoverMasters (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::DISCOVERMASTERS")
  (make-package "MULTIMASTER_MSGS_FKIE::DISCOVERMASTERS"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::DISCOVERMASTERSREQUEST")
  (make-package "MULTIMASTER_MSGS_FKIE::DISCOVERMASTERSREQUEST"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::DISCOVERMASTERSRESPONSE")
  (make-package "MULTIMASTER_MSGS_FKIE::DISCOVERMASTERSRESPONSE"))

(in-package "ROS")





(defclass multimaster_msgs_fkie::DiscoverMastersRequest
  :super ros::object
  :slots ())

(defmethod multimaster_msgs_fkie::DiscoverMastersRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass multimaster_msgs_fkie::DiscoverMastersResponse
  :super ros::object
  :slots (_masters ))

(defmethod multimaster_msgs_fkie::DiscoverMastersResponse
  (:init
   (&key
    ((:masters __masters) (let (r) (dotimes (i 0) (push (instance multimaster_msgs_fkie::ROSMaster :init) r)) r))
    )
   (send-super :init)
   (setq _masters __masters)
   self)
  (:masters
   (&rest __masters)
   (if (keywordp (car __masters))
       (send* _masters __masters)
     (progn
       (if __masters (setq _masters (car __masters)))
       _masters)))
  (:serialization-length
   ()
   (+
    ;; multimaster_msgs_fkie/ROSMaster[] _masters
    (apply #'+ (send-all _masters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; multimaster_msgs_fkie/ROSMaster[] _masters
     (write-long (length _masters) s)
     (dolist (elem _masters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; multimaster_msgs_fkie/ROSMaster[] _masters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _masters (let (r) (dotimes (i n) (push (instance multimaster_msgs_fkie::ROSMaster :init) r)) r))
     (dolist (elem- _masters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass multimaster_msgs_fkie::DiscoverMasters
  :super ros::object
  :slots ())

(setf (get multimaster_msgs_fkie::DiscoverMasters :md5sum-) "bc7525cc24dd3b880f044a2cdfb95aad")
(setf (get multimaster_msgs_fkie::DiscoverMasters :datatype-) "multimaster_msgs_fkie/DiscoverMasters")
(setf (get multimaster_msgs_fkie::DiscoverMasters :request) multimaster_msgs_fkie::DiscoverMastersRequest)
(setf (get multimaster_msgs_fkie::DiscoverMasters :response) multimaster_msgs_fkie::DiscoverMastersResponse)

(defmethod multimaster_msgs_fkie::DiscoverMastersRequest
  (:response () (instance multimaster_msgs_fkie::DiscoverMastersResponse :init)))

(setf (get multimaster_msgs_fkie::DiscoverMastersRequest :md5sum-) "bc7525cc24dd3b880f044a2cdfb95aad")
(setf (get multimaster_msgs_fkie::DiscoverMastersRequest :datatype-) "multimaster_msgs_fkie/DiscoverMastersRequest")
(setf (get multimaster_msgs_fkie::DiscoverMastersRequest :definition-)
      "---
multimaster_msgs_fkie/ROSMaster[] masters


================================================================================
MSG: multimaster_msgs_fkie/ROSMaster
string name
# ROS Master URI
string uri
# The timestamp of the state of the remoter ROS master
float64 timestamp
# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.
float64 timestamp_local
bool online
string discoverer_name
")

(setf (get multimaster_msgs_fkie::DiscoverMastersResponse :md5sum-) "bc7525cc24dd3b880f044a2cdfb95aad")
(setf (get multimaster_msgs_fkie::DiscoverMastersResponse :datatype-) "multimaster_msgs_fkie/DiscoverMastersResponse")
(setf (get multimaster_msgs_fkie::DiscoverMastersResponse :definition-)
      "---
multimaster_msgs_fkie/ROSMaster[] masters


================================================================================
MSG: multimaster_msgs_fkie/ROSMaster
string name
# ROS Master URI
string uri
# The timestamp of the state of the remoter ROS master
float64 timestamp
# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.
float64 timestamp_local
bool online
string discoverer_name
")



(provide :multimaster_msgs_fkie/DiscoverMasters "bc7525cc24dd3b880f044a2cdfb95aad")


