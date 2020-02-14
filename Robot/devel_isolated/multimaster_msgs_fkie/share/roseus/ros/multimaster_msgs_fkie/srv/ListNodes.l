;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::ListNodes)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'ListNodes (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LISTNODES")
  (make-package "MULTIMASTER_MSGS_FKIE::LISTNODES"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LISTNODESREQUEST")
  (make-package "MULTIMASTER_MSGS_FKIE::LISTNODESREQUEST"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LISTNODESRESPONSE")
  (make-package "MULTIMASTER_MSGS_FKIE::LISTNODESRESPONSE"))

(in-package "ROS")





(defclass multimaster_msgs_fkie::ListNodesRequest
  :super ros::object
  :slots ())

(defmethod multimaster_msgs_fkie::ListNodesRequest
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

(defclass multimaster_msgs_fkie::ListNodesResponse
  :super ros::object
  :slots (_nodes ))

(defmethod multimaster_msgs_fkie::ListNodesResponse
  (:init
   (&key
    ((:nodes __nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _nodes __nodes)
   self)
  (:nodes
   (&optional __nodes)
   (if __nodes (setq _nodes __nodes)) _nodes)
  (:serialization-length
   ()
   (+
    ;; string[] _nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _nodes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass multimaster_msgs_fkie::ListNodes
  :super ros::object
  :slots ())

(setf (get multimaster_msgs_fkie::ListNodes :md5sum-) "3d07bfda1268b4f76b16b7ba8a82665d")
(setf (get multimaster_msgs_fkie::ListNodes :datatype-) "multimaster_msgs_fkie/ListNodes")
(setf (get multimaster_msgs_fkie::ListNodes :request) multimaster_msgs_fkie::ListNodesRequest)
(setf (get multimaster_msgs_fkie::ListNodes :response) multimaster_msgs_fkie::ListNodesResponse)

(defmethod multimaster_msgs_fkie::ListNodesRequest
  (:response () (instance multimaster_msgs_fkie::ListNodesResponse :init)))

(setf (get multimaster_msgs_fkie::ListNodesRequest :md5sum-) "3d07bfda1268b4f76b16b7ba8a82665d")
(setf (get multimaster_msgs_fkie::ListNodesRequest :datatype-) "multimaster_msgs_fkie/ListNodesRequest")
(setf (get multimaster_msgs_fkie::ListNodesRequest :definition-)
      "---
string[] nodes

")

(setf (get multimaster_msgs_fkie::ListNodesResponse :md5sum-) "3d07bfda1268b4f76b16b7ba8a82665d")
(setf (get multimaster_msgs_fkie::ListNodesResponse :datatype-) "multimaster_msgs_fkie/ListNodesResponse")
(setf (get multimaster_msgs_fkie::ListNodesResponse :definition-)
      "---
string[] nodes

")



(provide :multimaster_msgs_fkie/ListNodes "3d07bfda1268b4f76b16b7ba8a82665d")


