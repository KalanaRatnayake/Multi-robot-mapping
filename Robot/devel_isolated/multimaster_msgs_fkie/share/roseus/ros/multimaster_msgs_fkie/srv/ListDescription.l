;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::ListDescription)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'ListDescription (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LISTDESCRIPTION")
  (make-package "MULTIMASTER_MSGS_FKIE::LISTDESCRIPTION"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LISTDESCRIPTIONREQUEST")
  (make-package "MULTIMASTER_MSGS_FKIE::LISTDESCRIPTIONREQUEST"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LISTDESCRIPTIONRESPONSE")
  (make-package "MULTIMASTER_MSGS_FKIE::LISTDESCRIPTIONRESPONSE"))

(in-package "ROS")





(defclass multimaster_msgs_fkie::ListDescriptionRequest
  :super ros::object
  :slots ())

(defmethod multimaster_msgs_fkie::ListDescriptionRequest
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

(defclass multimaster_msgs_fkie::ListDescriptionResponse
  :super ros::object
  :slots (_robot_name _robot_type _robot_images _robot_descr _capabilities ))

(defmethod multimaster_msgs_fkie::ListDescriptionResponse
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:robot_type __robot_type) "")
    ((:robot_images __robot_images) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:robot_descr __robot_descr) "")
    ((:capabilities __capabilities) (let (r) (dotimes (i 0) (push (instance multimaster_msgs_fkie::Capability :init) r)) r))
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _robot_type (string __robot_type))
   (setq _robot_images __robot_images)
   (setq _robot_descr (string __robot_descr))
   (setq _capabilities __capabilities)
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:robot_type
   (&optional __robot_type)
   (if __robot_type (setq _robot_type __robot_type)) _robot_type)
  (:robot_images
   (&optional __robot_images)
   (if __robot_images (setq _robot_images __robot_images)) _robot_images)
  (:robot_descr
   (&optional __robot_descr)
   (if __robot_descr (setq _robot_descr __robot_descr)) _robot_descr)
  (:capabilities
   (&rest __capabilities)
   (if (keywordp (car __capabilities))
       (send* _capabilities __capabilities)
     (progn
       (if __capabilities (setq _capabilities (car __capabilities)))
       _capabilities)))
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; string _robot_type
    4 (length _robot_type)
    ;; string[] _robot_images
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _robot_images)) 4
    ;; string _robot_descr
    4 (length _robot_descr)
    ;; multimaster_msgs_fkie/Capability[] _capabilities
    (apply #'+ (send-all _capabilities :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; string _robot_type
       (write-long (length _robot_type) s) (princ _robot_type s)
     ;; string[] _robot_images
     (write-long (length _robot_images) s)
     (dolist (elem _robot_images)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _robot_descr
       (write-long (length _robot_descr) s) (princ _robot_descr s)
     ;; multimaster_msgs_fkie/Capability[] _capabilities
     (write-long (length _capabilities) s)
     (dolist (elem _capabilities)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _robot_images
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_images (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _robot_images i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _robot_descr
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_descr (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; multimaster_msgs_fkie/Capability[] _capabilities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _capabilities (let (r) (dotimes (i n) (push (instance multimaster_msgs_fkie::Capability :init) r)) r))
     (dolist (elem- _capabilities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass multimaster_msgs_fkie::ListDescription
  :super ros::object
  :slots ())

(setf (get multimaster_msgs_fkie::ListDescription :md5sum-) "a36ba5a97ce785b9b964aa015b26332b")
(setf (get multimaster_msgs_fkie::ListDescription :datatype-) "multimaster_msgs_fkie/ListDescription")
(setf (get multimaster_msgs_fkie::ListDescription :request) multimaster_msgs_fkie::ListDescriptionRequest)
(setf (get multimaster_msgs_fkie::ListDescription :response) multimaster_msgs_fkie::ListDescriptionResponse)

(defmethod multimaster_msgs_fkie::ListDescriptionRequest
  (:response () (instance multimaster_msgs_fkie::ListDescriptionResponse :init)))

(setf (get multimaster_msgs_fkie::ListDescriptionRequest :md5sum-) "a36ba5a97ce785b9b964aa015b26332b")
(setf (get multimaster_msgs_fkie::ListDescriptionRequest :datatype-) "multimaster_msgs_fkie/ListDescriptionRequest")
(setf (get multimaster_msgs_fkie::ListDescriptionRequest :definition-)
      "---
string robot_name
string robot_type
string[] robot_images
string robot_descr
multimaster_msgs_fkie/Capability[] capabilities

================================================================================
MSG: multimaster_msgs_fkie/Capability
# the ROS namespace of the capability
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
")

(setf (get multimaster_msgs_fkie::ListDescriptionResponse :md5sum-) "a36ba5a97ce785b9b964aa015b26332b")
(setf (get multimaster_msgs_fkie::ListDescriptionResponse :datatype-) "multimaster_msgs_fkie/ListDescriptionResponse")
(setf (get multimaster_msgs_fkie::ListDescriptionResponse :definition-)
      "---
string robot_name
string robot_type
string[] robot_images
string robot_descr
multimaster_msgs_fkie/Capability[] capabilities

================================================================================
MSG: multimaster_msgs_fkie/Capability
# the ROS namespace of the capability
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
")



(provide :multimaster_msgs_fkie/ListDescription "a36ba5a97ce785b9b964aa015b26332b")


