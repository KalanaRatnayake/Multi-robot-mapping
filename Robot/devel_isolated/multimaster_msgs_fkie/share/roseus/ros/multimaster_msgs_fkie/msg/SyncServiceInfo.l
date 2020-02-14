;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::SyncServiceInfo)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'SyncServiceInfo (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::SYNCSERVICEINFO")
  (make-package "MULTIMASTER_MSGS_FKIE::SYNCSERVICEINFO"))

(in-package "ROS")
;;//! \htmlinclude SyncServiceInfo.msg.html


(defclass multimaster_msgs_fkie::SyncServiceInfo
  :super ros::object
  :slots (_service _serviceuri _node _nodeuri ))

(defmethod multimaster_msgs_fkie::SyncServiceInfo
  (:init
   (&key
    ((:service __service) "")
    ((:serviceuri __serviceuri) "")
    ((:node __node) "")
    ((:nodeuri __nodeuri) "")
    )
   (send-super :init)
   (setq _service (string __service))
   (setq _serviceuri (string __serviceuri))
   (setq _node (string __node))
   (setq _nodeuri (string __nodeuri))
   self)
  (:service
   (&optional __service)
   (if __service (setq _service __service)) _service)
  (:serviceuri
   (&optional __serviceuri)
   (if __serviceuri (setq _serviceuri __serviceuri)) _serviceuri)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:nodeuri
   (&optional __nodeuri)
   (if __nodeuri (setq _nodeuri __nodeuri)) _nodeuri)
  (:serialization-length
   ()
   (+
    ;; string _service
    4 (length _service)
    ;; string _serviceuri
    4 (length _serviceuri)
    ;; string _node
    4 (length _node)
    ;; string _nodeuri
    4 (length _nodeuri)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _service
       (write-long (length _service) s) (princ _service s)
     ;; string _serviceuri
       (write-long (length _serviceuri) s) (princ _serviceuri s)
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;; string _nodeuri
       (write-long (length _nodeuri) s) (princ _nodeuri s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _service
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _service (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _serviceuri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serviceuri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _nodeuri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nodeuri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get multimaster_msgs_fkie::SyncServiceInfo :md5sum-) "8c21bb9ea24403924441840b8c167c40")
(setf (get multimaster_msgs_fkie::SyncServiceInfo :datatype-) "multimaster_msgs_fkie/SyncServiceInfo")
(setf (get multimaster_msgs_fkie::SyncServiceInfo :definition-)
      "string service
string serviceuri
string node
string nodeuri
")



(provide :multimaster_msgs_fkie/SyncServiceInfo "8c21bb9ea24403924441840b8c167c40")


