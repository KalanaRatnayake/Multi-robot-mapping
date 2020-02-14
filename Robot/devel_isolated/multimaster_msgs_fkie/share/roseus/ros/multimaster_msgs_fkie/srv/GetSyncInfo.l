;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::GetSyncInfo)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'GetSyncInfo (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::GETSYNCINFO")
  (make-package "MULTIMASTER_MSGS_FKIE::GETSYNCINFO"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::GETSYNCINFOREQUEST")
  (make-package "MULTIMASTER_MSGS_FKIE::GETSYNCINFOREQUEST"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::GETSYNCINFORESPONSE")
  (make-package "MULTIMASTER_MSGS_FKIE::GETSYNCINFORESPONSE"))

(in-package "ROS")





(defclass multimaster_msgs_fkie::GetSyncInfoRequest
  :super ros::object
  :slots ())

(defmethod multimaster_msgs_fkie::GetSyncInfoRequest
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

(defclass multimaster_msgs_fkie::GetSyncInfoResponse
  :super ros::object
  :slots (_hosts ))

(defmethod multimaster_msgs_fkie::GetSyncInfoResponse
  (:init
   (&key
    ((:hosts __hosts) (let (r) (dotimes (i 0) (push (instance multimaster_msgs_fkie::SyncMasterInfo :init) r)) r))
    )
   (send-super :init)
   (setq _hosts __hosts)
   self)
  (:hosts
   (&rest __hosts)
   (if (keywordp (car __hosts))
       (send* _hosts __hosts)
     (progn
       (if __hosts (setq _hosts (car __hosts)))
       _hosts)))
  (:serialization-length
   ()
   (+
    ;; multimaster_msgs_fkie/SyncMasterInfo[] _hosts
    (apply #'+ (send-all _hosts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; multimaster_msgs_fkie/SyncMasterInfo[] _hosts
     (write-long (length _hosts) s)
     (dolist (elem _hosts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; multimaster_msgs_fkie/SyncMasterInfo[] _hosts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hosts (let (r) (dotimes (i n) (push (instance multimaster_msgs_fkie::SyncMasterInfo :init) r)) r))
     (dolist (elem- _hosts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass multimaster_msgs_fkie::GetSyncInfo
  :super ros::object
  :slots ())

(setf (get multimaster_msgs_fkie::GetSyncInfo :md5sum-) "d5261ec56e202860a07fb47b41e1b2a8")
(setf (get multimaster_msgs_fkie::GetSyncInfo :datatype-) "multimaster_msgs_fkie/GetSyncInfo")
(setf (get multimaster_msgs_fkie::GetSyncInfo :request) multimaster_msgs_fkie::GetSyncInfoRequest)
(setf (get multimaster_msgs_fkie::GetSyncInfo :response) multimaster_msgs_fkie::GetSyncInfoResponse)

(defmethod multimaster_msgs_fkie::GetSyncInfoRequest
  (:response () (instance multimaster_msgs_fkie::GetSyncInfoResponse :init)))

(setf (get multimaster_msgs_fkie::GetSyncInfoRequest :md5sum-) "d5261ec56e202860a07fb47b41e1b2a8")
(setf (get multimaster_msgs_fkie::GetSyncInfoRequest :datatype-) "multimaster_msgs_fkie/GetSyncInfoRequest")
(setf (get multimaster_msgs_fkie::GetSyncInfoRequest :definition-)
      "---
multimaster_msgs_fkie/SyncMasterInfo[] hosts

================================================================================
MSG: multimaster_msgs_fkie/SyncMasterInfo
string masteruri
string[] nodes
multimaster_msgs_fkie/SyncTopicInfo[] publisher
multimaster_msgs_fkie/SyncTopicInfo[] subscriber
multimaster_msgs_fkie/SyncServiceInfo[] services
================================================================================
MSG: multimaster_msgs_fkie/SyncTopicInfo
string topic
string node
string nodeuri
================================================================================
MSG: multimaster_msgs_fkie/SyncServiceInfo
string service
string serviceuri
string node
")

(setf (get multimaster_msgs_fkie::GetSyncInfoResponse :md5sum-) "d5261ec56e202860a07fb47b41e1b2a8")
(setf (get multimaster_msgs_fkie::GetSyncInfoResponse :datatype-) "multimaster_msgs_fkie/GetSyncInfoResponse")
(setf (get multimaster_msgs_fkie::GetSyncInfoResponse :definition-)
      "---
multimaster_msgs_fkie/SyncMasterInfo[] hosts

================================================================================
MSG: multimaster_msgs_fkie/SyncMasterInfo
string masteruri
string[] nodes
multimaster_msgs_fkie/SyncTopicInfo[] publisher
multimaster_msgs_fkie/SyncTopicInfo[] subscriber
multimaster_msgs_fkie/SyncServiceInfo[] services
================================================================================
MSG: multimaster_msgs_fkie/SyncTopicInfo
string topic
string node
string nodeuri
================================================================================
MSG: multimaster_msgs_fkie/SyncServiceInfo
string service
string serviceuri
string node
")



(provide :multimaster_msgs_fkie/GetSyncInfo "d5261ec56e202860a07fb47b41e1b2a8")


