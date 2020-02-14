;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::Task)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'Task (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::TASK")
  (make-package "MULTIMASTER_MSGS_FKIE::TASK"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::TASKREQUEST")
  (make-package "MULTIMASTER_MSGS_FKIE::TASKREQUEST"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::TASKRESPONSE")
  (make-package "MULTIMASTER_MSGS_FKIE::TASKRESPONSE"))

(in-package "ROS")





(defclass multimaster_msgs_fkie::TaskRequest
  :super ros::object
  :slots (_node ))

(defmethod multimaster_msgs_fkie::TaskRequest
  (:init
   (&key
    ((:node __node) "")
    )
   (send-super :init)
   (setq _node (string __node))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:serialization-length
   ()
   (+
    ;; string _node
    4 (length _node)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass multimaster_msgs_fkie::TaskResponse
  :super ros::object
  :slots ())

(defmethod multimaster_msgs_fkie::TaskResponse
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

(defclass multimaster_msgs_fkie::Task
  :super ros::object
  :slots ())

(setf (get multimaster_msgs_fkie::Task :md5sum-) "a94c40e70a4b82863e6e52ec16732447")
(setf (get multimaster_msgs_fkie::Task :datatype-) "multimaster_msgs_fkie/Task")
(setf (get multimaster_msgs_fkie::Task :request) multimaster_msgs_fkie::TaskRequest)
(setf (get multimaster_msgs_fkie::Task :response) multimaster_msgs_fkie::TaskResponse)

(defmethod multimaster_msgs_fkie::TaskRequest
  (:response () (instance multimaster_msgs_fkie::TaskResponse :init)))

(setf (get multimaster_msgs_fkie::TaskRequest :md5sum-) "a94c40e70a4b82863e6e52ec16732447")
(setf (get multimaster_msgs_fkie::TaskRequest :datatype-) "multimaster_msgs_fkie/TaskRequest")
(setf (get multimaster_msgs_fkie::TaskRequest :definition-)
      "string node
---

")

(setf (get multimaster_msgs_fkie::TaskResponse :md5sum-) "a94c40e70a4b82863e6e52ec16732447")
(setf (get multimaster_msgs_fkie::TaskResponse :datatype-) "multimaster_msgs_fkie/TaskResponse")
(setf (get multimaster_msgs_fkie::TaskResponse :definition-)
      "string node
---

")



(provide :multimaster_msgs_fkie/Task "a94c40e70a4b82863e6e52ec16732447")


