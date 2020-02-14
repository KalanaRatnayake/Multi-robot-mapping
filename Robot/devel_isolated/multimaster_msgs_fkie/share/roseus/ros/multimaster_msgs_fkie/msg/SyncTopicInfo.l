;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::SyncTopicInfo)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'SyncTopicInfo (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::SYNCTOPICINFO")
  (make-package "MULTIMASTER_MSGS_FKIE::SYNCTOPICINFO"))

(in-package "ROS")
;;//! \htmlinclude SyncTopicInfo.msg.html


(defclass multimaster_msgs_fkie::SyncTopicInfo
  :super ros::object
  :slots (_topic _node _nodeuri ))

(defmethod multimaster_msgs_fkie::SyncTopicInfo
  (:init
   (&key
    ((:topic __topic) "")
    ((:node __node) "")
    ((:nodeuri __nodeuri) "")
    )
   (send-super :init)
   (setq _topic (string __topic))
   (setq _node (string __node))
   (setq _nodeuri (string __nodeuri))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:nodeuri
   (&optional __nodeuri)
   (if __nodeuri (setq _nodeuri __nodeuri)) _nodeuri)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ;; string _node
    4 (length _node)
    ;; string _nodeuri
    4 (length _nodeuri)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;; string _nodeuri
       (write-long (length _nodeuri) s) (princ _nodeuri s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _nodeuri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nodeuri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get multimaster_msgs_fkie::SyncTopicInfo :md5sum-) "1b296160d6f5a9d7f6550f6130da2ba4")
(setf (get multimaster_msgs_fkie::SyncTopicInfo :datatype-) "multimaster_msgs_fkie/SyncTopicInfo")
(setf (get multimaster_msgs_fkie::SyncTopicInfo :definition-)
      "string topic
string node
string nodeuri
")



(provide :multimaster_msgs_fkie/SyncTopicInfo "1b296160d6f5a9d7f6550f6130da2ba4")


