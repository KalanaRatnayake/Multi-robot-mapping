;; Auto-generated. Do not edit!


(when (boundp 'multimaster_msgs_fkie::LinkState)
  (if (not (find-package "MULTIMASTER_MSGS_FKIE"))
    (make-package "MULTIMASTER_MSGS_FKIE"))
  (shadow 'LinkState (find-package "MULTIMASTER_MSGS_FKIE")))
(unless (find-package "MULTIMASTER_MSGS_FKIE::LINKSTATE")
  (make-package "MULTIMASTER_MSGS_FKIE::LINKSTATE"))

(in-package "ROS")
;;//! \htmlinclude LinkState.msg.html


(defclass multimaster_msgs_fkie::LinkState
  :super ros::object
  :slots (_destination _quality ))

(defmethod multimaster_msgs_fkie::LinkState
  (:init
   (&key
    ((:destination __destination) "")
    ((:quality __quality) 0.0)
    )
   (send-super :init)
   (setq _destination (string __destination))
   (setq _quality (float __quality))
   self)
  (:destination
   (&optional __destination)
   (if __destination (setq _destination __destination)) _destination)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:serialization-length
   ()
   (+
    ;; string _destination
    4 (length _destination)
    ;; float32 _quality
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _destination
       (write-long (length _destination) s) (princ _destination s)
     ;; float32 _quality
       (sys::poke _quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _destination
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destination (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _quality
     (setq _quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get multimaster_msgs_fkie::LinkState :md5sum-) "d3fe0aab52336c0bd0bfea55b131c66e")
(setf (get multimaster_msgs_fkie::LinkState :datatype-) "multimaster_msgs_fkie/LinkState")
(setf (get multimaster_msgs_fkie::LinkState :definition-)
      "string destination
float32 quality
")



(provide :multimaster_msgs_fkie/LinkState "d3fe0aab52336c0bd0bfea55b131c66e")


