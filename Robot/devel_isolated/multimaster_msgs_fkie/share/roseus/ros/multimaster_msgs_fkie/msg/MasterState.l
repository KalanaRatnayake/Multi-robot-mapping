;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::MasterState)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'MasterState (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::MASTERSTATE")
  (make-package "MULTIMASTER_MSGS_FKIE::MASTERSTATE"))

(in-package "ROS")
;;//! \htmlinclude MasterState.msg.html


(intern "*STATE_NEW*" (find-package "MULTIMASTER_MSGS_FKIE::MASTERSTATE"))
(shadow '*STATE_NEW* (find-package "MULTIMASTER_MSGS_FKIE::MASTERSTATE"))
(defconstant multimaster_msgs_fkie::MasterState::*STATE_NEW* "'new'")
(intern "*STATE_REMOVED*" (find-package "MULTIMASTER_MSGS_FKIE::MASTERSTATE"))
(shadow '*STATE_REMOVED* (find-package "MULTIMASTER_MSGS_FKIE::MASTERSTATE"))
(defconstant multimaster_msgs_fkie::MasterState::*STATE_REMOVED* "'removed'")
(intern "*STATE_CHANGED*" (find-package "MULTIMASTER_MSGS_FKIE::MASTERSTATE"))
(shadow '*STATE_CHANGED* (find-package "MULTIMASTER_MSGS_FKIE::MASTERSTATE"))
(defconstant multimaster_msgs_fkie::MasterState::*STATE_CHANGED* "'changed'")
(defclass multimaster_msgs_fkie::MasterState
  :super ros::object
  :slots (_state _master ))

(defmethod multimaster_msgs_fkie::MasterState
  (:init
   (&key
    ((:state __state) "")
    ((:master __master) (instance multimaster_msgs_fkie::ROSMaster :init))
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _master __master)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:master
   (&rest __master)
   (if (keywordp (car __master))
       (send* _master __master)
     (progn
       (if __master (setq _master (car __master)))
       _master)))
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; multimaster_msgs_fkie/ROSMaster _master
    (send _master :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; multimaster_msgs_fkie/ROSMaster _master
       (send _master :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; multimaster_msgs_fkie/ROSMaster _master
     (send _master :deserialize buf ptr-) (incf ptr- (send _master :serialization-length))
   ;;
   self)
  )

(setf (get multimaster_msgs_fkie::MasterState :md5sum-) "80884072ff659ac99555a763e9ba0b23")
(setf (get multimaster_msgs_fkie::MasterState :datatype-) "multimaster_msgs_fkie/MasterState")
(setf (get multimaster_msgs_fkie::MasterState :definition-)
      "string state
multimaster_msgs_fkie/ROSMaster master

string STATE_NEW='new'
string STATE_REMOVED='removed'
string STATE_CHANGED='changed'

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
string monitoruri
")



(provide :multimaster_msgs_fkie/MasterState "80884072ff659ac99555a763e9ba0b23")


