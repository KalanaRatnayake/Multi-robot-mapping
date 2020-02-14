;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::SyncMasterInfo)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'SyncMasterInfo (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::SYNCMASTERINFO")
  (make-package "MULTIMASTER_MSGS_FKIE::SYNCMASTERINFO"))

(in-package "ROS")
;;//! \htmlinclude SyncMasterInfo.msg.html


(defclass multimaster_msgs_fkie::SyncMasterInfo
  :super ros::object
  :slots (_masteruri _nodes _publisher _subscriber _services ))

(defmethod multimaster_msgs_fkie::SyncMasterInfo
  (:init
   (&key
    ((:masteruri __masteruri) "")
    ((:nodes __nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:publisher __publisher) (let (r) (dotimes (i 0) (push (instance multimaster_msgs_fkie::SyncTopicInfo :init) r)) r))
    ((:subscriber __subscriber) (let (r) (dotimes (i 0) (push (instance multimaster_msgs_fkie::SyncTopicInfo :init) r)) r))
    ((:services __services) (let (r) (dotimes (i 0) (push (instance multimaster_msgs_fkie::SyncServiceInfo :init) r)) r))
    )
   (send-super :init)
   (setq _masteruri (string __masteruri))
   (setq _nodes __nodes)
   (setq _publisher __publisher)
   (setq _subscriber __subscriber)
   (setq _services __services)
   self)
  (:masteruri
   (&optional __masteruri)
   (if __masteruri (setq _masteruri __masteruri)) _masteruri)
  (:nodes
   (&optional __nodes)
   (if __nodes (setq _nodes __nodes)) _nodes)
  (:publisher
   (&rest __publisher)
   (if (keywordp (car __publisher))
       (send* _publisher __publisher)
     (progn
       (if __publisher (setq _publisher (car __publisher)))
       _publisher)))
  (:subscriber
   (&rest __subscriber)
   (if (keywordp (car __subscriber))
       (send* _subscriber __subscriber)
     (progn
       (if __subscriber (setq _subscriber (car __subscriber)))
       _subscriber)))
  (:services
   (&rest __services)
   (if (keywordp (car __services))
       (send* _services __services)
     (progn
       (if __services (setq _services (car __services)))
       _services)))
  (:serialization-length
   ()
   (+
    ;; string _masteruri
    4 (length _masteruri)
    ;; string[] _nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _nodes)) 4
    ;; multimaster_msgs_fkie/SyncTopicInfo[] _publisher
    (apply #'+ (send-all _publisher :serialization-length)) 4
    ;; multimaster_msgs_fkie/SyncTopicInfo[] _subscriber
    (apply #'+ (send-all _subscriber :serialization-length)) 4
    ;; multimaster_msgs_fkie/SyncServiceInfo[] _services
    (apply #'+ (send-all _services :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _masteruri
       (write-long (length _masteruri) s) (princ _masteruri s)
     ;; string[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; multimaster_msgs_fkie/SyncTopicInfo[] _publisher
     (write-long (length _publisher) s)
     (dolist (elem _publisher)
       (send elem :serialize s)
       )
     ;; multimaster_msgs_fkie/SyncTopicInfo[] _subscriber
     (write-long (length _subscriber) s)
     (dolist (elem _subscriber)
       (send elem :serialize s)
       )
     ;; multimaster_msgs_fkie/SyncServiceInfo[] _services
     (write-long (length _services) s)
     (dolist (elem _services)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _masteruri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _masteruri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; multimaster_msgs_fkie/SyncTopicInfo[] _publisher
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _publisher (let (r) (dotimes (i n) (push (instance multimaster_msgs_fkie::SyncTopicInfo :init) r)) r))
     (dolist (elem- _publisher)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; multimaster_msgs_fkie/SyncTopicInfo[] _subscriber
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _subscriber (let (r) (dotimes (i n) (push (instance multimaster_msgs_fkie::SyncTopicInfo :init) r)) r))
     (dolist (elem- _subscriber)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; multimaster_msgs_fkie/SyncServiceInfo[] _services
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _services (let (r) (dotimes (i n) (push (instance multimaster_msgs_fkie::SyncServiceInfo :init) r)) r))
     (dolist (elem- _services)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get multimaster_msgs_fkie::SyncMasterInfo :md5sum-) "ba4b02792114bcc4bae507c60dd14d66")
(setf (get multimaster_msgs_fkie::SyncMasterInfo :datatype-) "multimaster_msgs_fkie/SyncMasterInfo")
(setf (get multimaster_msgs_fkie::SyncMasterInfo :definition-)
      "string masteruri
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
string nodeuri
")



(provide :multimaster_msgs_fkie/SyncMasterInfo "ba4b02792114bcc4bae507c60dd14d66")


