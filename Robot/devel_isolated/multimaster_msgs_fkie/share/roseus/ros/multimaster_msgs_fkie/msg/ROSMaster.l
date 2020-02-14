;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::ROSMaster)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'ROSMaster (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::ROSMASTER")
  (make-package "MULTIMASTER_MSGS_FKIE::ROSMASTER"))

(in-package "ROS")
;;//! \htmlinclude ROSMaster.msg.html


(defclass multimaster_msgs_fkie::ROSMaster
  :super ros::object
  :slots (_name _uri _timestamp _timestamp_local _online _discoverer_name _monitoruri ))

(defmethod multimaster_msgs_fkie::ROSMaster
  (:init
   (&key
    ((:name __name) "")
    ((:uri __uri) "")
    ((:timestamp __timestamp) 0.0)
    ((:timestamp_local __timestamp_local) 0.0)
    ((:online __online) nil)
    ((:discoverer_name __discoverer_name) "")
    ((:monitoruri __monitoruri) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _uri (string __uri))
   (setq _timestamp (float __timestamp))
   (setq _timestamp_local (float __timestamp_local))
   (setq _online __online)
   (setq _discoverer_name (string __discoverer_name))
   (setq _monitoruri (string __monitoruri))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:uri
   (&optional __uri)
   (if __uri (setq _uri __uri)) _uri)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:timestamp_local
   (&optional __timestamp_local)
   (if __timestamp_local (setq _timestamp_local __timestamp_local)) _timestamp_local)
  (:online
   (&optional __online)
   (if __online (setq _online __online)) _online)
  (:discoverer_name
   (&optional __discoverer_name)
   (if __discoverer_name (setq _discoverer_name __discoverer_name)) _discoverer_name)
  (:monitoruri
   (&optional __monitoruri)
   (if __monitoruri (setq _monitoruri __monitoruri)) _monitoruri)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _uri
    4 (length _uri)
    ;; float64 _timestamp
    8
    ;; float64 _timestamp_local
    8
    ;; bool _online
    1
    ;; string _discoverer_name
    4 (length _discoverer_name)
    ;; string _monitoruri
    4 (length _monitoruri)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _uri
       (write-long (length _uri) s) (princ _uri s)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp_local
       (sys::poke _timestamp_local (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _online
       (if _online (write-byte -1 s) (write-byte 0 s))
     ;; string _discoverer_name
       (write-long (length _discoverer_name) s) (princ _discoverer_name s)
     ;; string _monitoruri
       (write-long (length _monitoruri) s) (princ _monitoruri s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp_local
     (setq _timestamp_local (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _online
     (setq _online (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _discoverer_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _discoverer_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _monitoruri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _monitoruri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get multimaster_msgs_fkie::ROSMaster :md5sum-) "08ea76968a3be2b8b1c6550b39616f72")
(setf (get multimaster_msgs_fkie::ROSMaster :datatype-) "multimaster_msgs_fkie/ROSMaster")
(setf (get multimaster_msgs_fkie::ROSMaster :definition-)
      "string name
# ROS Master URI
string uri
# The timestamp of the state of the remoter ROS master
float64 timestamp
# The timestamp of the state of the remoter ROS master, without the changes maked while a synchronization.
float64 timestamp_local
bool online
string discoverer_name
string monitoruri
")



(provide :multimaster_msgs_fkie/ROSMaster "08ea76968a3be2b8b1c6550b39616f72")


