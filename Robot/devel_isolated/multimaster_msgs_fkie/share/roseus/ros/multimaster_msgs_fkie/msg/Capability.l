;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::Capability)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'Capability (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::CAPABILITY")
  (make-package "MULTIMASTER_MSGS_FKIE::CAPABILITY"))

(in-package "ROS")
;;//! \htmlinclude Capability.msg.html


(defclass multimaster_msgs_fkie::Capability
  :super ros::object
  :slots (_namespace _name _type _images _description _nodes ))

(defmethod multimaster_msgs_fkie::Capability
  (:init
   (&key
    ((:namespace __namespace) "")
    ((:name __name) "")
    ((:type __type) "")
    ((:images __images) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:description __description) "")
    ((:nodes __nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _namespace (string __namespace))
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _images __images)
   (setq _description (string __description))
   (setq _nodes __nodes)
   self)
  (:namespace
   (&optional __namespace)
   (if __namespace (setq _namespace __namespace)) _namespace)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:images
   (&optional __images)
   (if __images (setq _images __images)) _images)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:nodes
   (&optional __nodes)
   (if __nodes (setq _nodes __nodes)) _nodes)
  (:serialization-length
   ()
   (+
    ;; string _namespace
    4 (length _namespace)
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; string[] _images
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _images)) 4
    ;; string _description
    4 (length _description)
    ;; string[] _nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _nodes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _namespace
       (write-long (length _namespace) s) (princ _namespace s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string[] _images
     (write-long (length _images) s)
     (dolist (elem _images)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _namespace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _namespace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _images
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _images (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _images i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get multimaster_msgs_fkie::Capability :md5sum-) "ca248f1a2644e7372795bf788ed1941b")
(setf (get multimaster_msgs_fkie::Capability :datatype-) "multimaster_msgs_fkie/Capability")
(setf (get multimaster_msgs_fkie::Capability :definition-)
      "# the ROS namespace of the capability
string namespace
# the name of the capability
string name
# the type of the capability
string type
# list of the images assigned to the this capability
string[] images
# the description of the capability
string description
# a list of nodes assigned to this group. The nodes are described by full ROS name (with namesspace)
string[] nodes 
")



(provide :multimaster_msgs_fkie/Capability "ca248f1a2644e7372795bf788ed1941b")


