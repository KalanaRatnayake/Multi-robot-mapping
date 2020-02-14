;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::LoadLaunch)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'LoadLaunch (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LOADLAUNCH")
  (make-package "MULTIMASTER_MSGS_FKIE::LOADLAUNCH"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LOADLAUNCHREQUEST")
  (make-package "MULTIMASTER_MSGS_FKIE::LOADLAUNCHREQUEST"))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LOADLAUNCHRESPONSE")
  (make-package "MULTIMASTER_MSGS_FKIE::LOADLAUNCHRESPONSE"))

(in-package "ROS")





(defclass multimaster_msgs_fkie::LoadLaunchRequest
  :super ros::object
  :slots (_package _file _argv ))

(defmethod multimaster_msgs_fkie::LoadLaunchRequest
  (:init
   (&key
    ((:package __package) "")
    ((:file __file) "")
    ((:argv __argv) "")
    )
   (send-super :init)
   (setq _package (string __package))
   (setq _file (string __file))
   (setq _argv (string __argv))
   self)
  (:package
   (&optional __package)
   (if __package (setq _package __package)) _package)
  (:file
   (&optional __file)
   (if __file (setq _file __file)) _file)
  (:argv
   (&optional __argv)
   (if __argv (setq _argv __argv)) _argv)
  (:serialization-length
   ()
   (+
    ;; string _package
    4 (length _package)
    ;; string _file
    4 (length _file)
    ;; string _argv
    4 (length _argv)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _package
       (write-long (length _package) s) (princ _package s)
     ;; string _file
       (write-long (length _file) s) (princ _file s)
     ;; string _argv
       (write-long (length _argv) s) (princ _argv s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _package
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _package (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _argv
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _argv (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass multimaster_msgs_fkie::LoadLaunchResponse
  :super ros::object
  :slots ())

(defmethod multimaster_msgs_fkie::LoadLaunchResponse
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

(defclass multimaster_msgs_fkie::LoadLaunch
  :super ros::object
  :slots ())

(setf (get multimaster_msgs_fkie::LoadLaunch :md5sum-) "e7cc67269dc4de0d6d7a3648f287878b")
(setf (get multimaster_msgs_fkie::LoadLaunch :datatype-) "multimaster_msgs_fkie/LoadLaunch")
(setf (get multimaster_msgs_fkie::LoadLaunch :request) multimaster_msgs_fkie::LoadLaunchRequest)
(setf (get multimaster_msgs_fkie::LoadLaunch :response) multimaster_msgs_fkie::LoadLaunchResponse)

(defmethod multimaster_msgs_fkie::LoadLaunchRequest
  (:response () (instance multimaster_msgs_fkie::LoadLaunchResponse :init)))

(setf (get multimaster_msgs_fkie::LoadLaunchRequest :md5sum-) "e7cc67269dc4de0d6d7a3648f287878b")
(setf (get multimaster_msgs_fkie::LoadLaunchRequest :datatype-) "multimaster_msgs_fkie/LoadLaunchRequest")
(setf (get multimaster_msgs_fkie::LoadLaunchRequest :definition-)
      "string package
string file
string argv
---

")

(setf (get multimaster_msgs_fkie::LoadLaunchResponse :md5sum-) "e7cc67269dc4de0d6d7a3648f287878b")
(setf (get multimaster_msgs_fkie::LoadLaunchResponse :datatype-) "multimaster_msgs_fkie/LoadLaunchResponse")
(setf (get multimaster_msgs_fkie::LoadLaunchResponse :definition-)
      "string package
string file
string argv
---

")



(provide :multimaster_msgs_fkie/LoadLaunch "e7cc67269dc4de0d6d7a3648f287878b")


