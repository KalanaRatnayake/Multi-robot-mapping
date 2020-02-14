;; Auto-generated. Do not edit!


(when (boundp 'sbpl_lattice_planner::SBPLLatticePlannerStats)
  (if (not (find-package "SBPL_LATTICE_PLANNER"))
    (make-package "SBPL_LATTICE_PLANNER"))
  (shadow 'SBPLLatticePlannerStats (find-package "SBPL_LATTICE_PLANNER")))
(unless (find-package "SBPL_LATTICE_PLANNER::SBPLLATTICEPLANNERSTATS")
  (make-package "SBPL_LATTICE_PLANNER::SBPLLATTICEPLANNERSTATS"))

(in-package "ROS")
;;//! \htmlinclude SBPLLatticePlannerStats.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass sbpl_lattice_planner::SBPLLatticePlannerStats
  :super ros::object
  :slots (_initial_epsilon _final_epsilon _plan_to_first_solution _allocated_time _actual_time _time_to_first_solution _solution_cost _path_size _final_number_of_expands _number_of_expands_initial_solution _start _goal ))

(defmethod sbpl_lattice_planner::SBPLLatticePlannerStats
  (:init
   (&key
    ((:initial_epsilon __initial_epsilon) 0.0)
    ((:final_epsilon __final_epsilon) 0.0)
    ((:plan_to_first_solution __plan_to_first_solution) nil)
    ((:allocated_time __allocated_time) 0.0)
    ((:actual_time __actual_time) 0.0)
    ((:time_to_first_solution __time_to_first_solution) 0.0)
    ((:solution_cost __solution_cost) 0.0)
    ((:path_size __path_size) 0.0)
    ((:final_number_of_expands __final_number_of_expands) 0)
    ((:number_of_expands_initial_solution __number_of_expands_initial_solution) 0)
    ((:start __start) (instance geometry_msgs::PoseStamped :init))
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _initial_epsilon (float __initial_epsilon))
   (setq _final_epsilon (float __final_epsilon))
   (setq _plan_to_first_solution __plan_to_first_solution)
   (setq _allocated_time (float __allocated_time))
   (setq _actual_time (float __actual_time))
   (setq _time_to_first_solution (float __time_to_first_solution))
   (setq _solution_cost (float __solution_cost))
   (setq _path_size (float __path_size))
   (setq _final_number_of_expands (round __final_number_of_expands))
   (setq _number_of_expands_initial_solution (round __number_of_expands_initial_solution))
   (setq _start __start)
   (setq _goal __goal)
   self)
  (:initial_epsilon
   (&optional __initial_epsilon)
   (if __initial_epsilon (setq _initial_epsilon __initial_epsilon)) _initial_epsilon)
  (:final_epsilon
   (&optional __final_epsilon)
   (if __final_epsilon (setq _final_epsilon __final_epsilon)) _final_epsilon)
  (:plan_to_first_solution
   (&optional __plan_to_first_solution)
   (if __plan_to_first_solution (setq _plan_to_first_solution __plan_to_first_solution)) _plan_to_first_solution)
  (:allocated_time
   (&optional __allocated_time)
   (if __allocated_time (setq _allocated_time __allocated_time)) _allocated_time)
  (:actual_time
   (&optional __actual_time)
   (if __actual_time (setq _actual_time __actual_time)) _actual_time)
  (:time_to_first_solution
   (&optional __time_to_first_solution)
   (if __time_to_first_solution (setq _time_to_first_solution __time_to_first_solution)) _time_to_first_solution)
  (:solution_cost
   (&optional __solution_cost)
   (if __solution_cost (setq _solution_cost __solution_cost)) _solution_cost)
  (:path_size
   (&optional __path_size)
   (if __path_size (setq _path_size __path_size)) _path_size)
  (:final_number_of_expands
   (&optional __final_number_of_expands)
   (if __final_number_of_expands (setq _final_number_of_expands __final_number_of_expands)) _final_number_of_expands)
  (:number_of_expands_initial_solution
   (&optional __number_of_expands_initial_solution)
   (if __number_of_expands_initial_solution (setq _number_of_expands_initial_solution __number_of_expands_initial_solution)) _number_of_expands_initial_solution)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; float64 _initial_epsilon
    8
    ;; float64 _final_epsilon
    8
    ;; bool _plan_to_first_solution
    1
    ;; float64 _allocated_time
    8
    ;; float64 _actual_time
    8
    ;; float64 _time_to_first_solution
    8
    ;; float64 _solution_cost
    8
    ;; float64 _path_size
    8
    ;; int64 _final_number_of_expands
    8
    ;; int64 _number_of_expands_initial_solution
    8
    ;; geometry_msgs/PoseStamped _start
    (send _start :serialization-length)
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _initial_epsilon
       (sys::poke _initial_epsilon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_epsilon
       (sys::poke _final_epsilon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _plan_to_first_solution
       (if _plan_to_first_solution (write-byte -1 s) (write-byte 0 s))
     ;; float64 _allocated_time
       (sys::poke _allocated_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _actual_time
       (sys::poke _actual_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time_to_first_solution
       (sys::poke _time_to_first_solution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _solution_cost
       (sys::poke _solution_cost (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _path_size
       (sys::poke _path_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _final_number_of_expands
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _final_number_of_expands (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _final_number_of_expands) (= (length (_final_number_of_expands . bv)) 2)) ;; bignum
              (write-long (ash (elt (_final_number_of_expands . bv) 0) 0) s)
              (write-long (ash (elt (_final_number_of_expands . bv) 1) -1) s))
             ((and (class _final_number_of_expands) (= (length (_final_number_of_expands . bv)) 1)) ;; big1
              (write-long (elt (_final_number_of_expands . bv) 0) s)
              (write-long (if (>= _final_number_of_expands 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _final_number_of_expands s)(write-long (if (>= _final_number_of_expands 0) 0 #xffffffff) s)))
     ;; int64 _number_of_expands_initial_solution
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _number_of_expands_initial_solution (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _number_of_expands_initial_solution) (= (length (_number_of_expands_initial_solution . bv)) 2)) ;; bignum
              (write-long (ash (elt (_number_of_expands_initial_solution . bv) 0) 0) s)
              (write-long (ash (elt (_number_of_expands_initial_solution . bv) 1) -1) s))
             ((and (class _number_of_expands_initial_solution) (= (length (_number_of_expands_initial_solution . bv)) 1)) ;; big1
              (write-long (elt (_number_of_expands_initial_solution . bv) 0) s)
              (write-long (if (>= _number_of_expands_initial_solution 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _number_of_expands_initial_solution s)(write-long (if (>= _number_of_expands_initial_solution 0) 0 #xffffffff) s)))
     ;; geometry_msgs/PoseStamped _start
       (send _start :serialize s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _initial_epsilon
     (setq _initial_epsilon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_epsilon
     (setq _final_epsilon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _plan_to_first_solution
     (setq _plan_to_first_solution (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _allocated_time
     (setq _allocated_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _actual_time
     (setq _actual_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time_to_first_solution
     (setq _time_to_first_solution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _solution_cost
     (setq _solution_cost (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _path_size
     (setq _path_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _final_number_of_expands
#+(or :alpha :irix6 :x86_64)
      (setf _final_number_of_expands (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _final_number_of_expands (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _number_of_expands_initial_solution
#+(or :alpha :irix6 :x86_64)
      (setf _number_of_expands_initial_solution (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _number_of_expands_initial_solution (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/PoseStamped _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get sbpl_lattice_planner::SBPLLatticePlannerStats :md5sum-) "b1c85b1cec5e7b196cc477ac1440bbf0")
(setf (get sbpl_lattice_planner::SBPLLatticePlannerStats :datatype-) "sbpl_lattice_planner/SBPLLatticePlannerStats")
(setf (get sbpl_lattice_planner::SBPLLatticePlannerStats :definition-)
      "#planner stats
float64 initial_epsilon
float64 final_epsilon
bool plan_to_first_solution
float64 allocated_time
float64 actual_time
float64 time_to_first_solution
float64 solution_cost
float64 path_size
int64 final_number_of_expands
int64 number_of_expands_initial_solution

#problem stats
geometry_msgs/PoseStamped start
geometry_msgs/PoseStamped goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :sbpl_lattice_planner/SBPLLatticePlannerStats "b1c85b1cec5e7b196cc477ac1440bbf0")


