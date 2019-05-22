;; Auto-generated. Do not edit!


(when (boundp 'fcu_common::Status)
  (if (not (find-package "FCU_COMMON"))
    (make-package "FCU_COMMON"))
  (shadow 'Status (find-package "FCU_COMMON")))
(unless (find-package "FCU_COMMON::STATUS")
  (make-package "FCU_COMMON::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fcu_common::Status
  :super ros::object
  :slots (_header _armed _failsafe _rc_override _num_errors _loop_time_us ))

(defmethod fcu_common::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:armed __armed) nil)
    ((:failsafe __failsafe) nil)
    ((:rc_override __rc_override) nil)
    ((:num_errors __num_errors) 0)
    ((:loop_time_us __loop_time_us) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _armed __armed)
   (setq _failsafe __failsafe)
   (setq _rc_override __rc_override)
   (setq _num_errors (round __num_errors))
   (setq _loop_time_us (round __loop_time_us))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:armed
   (&optional __armed)
   (if __armed (setq _armed __armed)) _armed)
  (:failsafe
   (&optional __failsafe)
   (if __failsafe (setq _failsafe __failsafe)) _failsafe)
  (:rc_override
   (&optional __rc_override)
   (if __rc_override (setq _rc_override __rc_override)) _rc_override)
  (:num_errors
   (&optional __num_errors)
   (if __num_errors (setq _num_errors __num_errors)) _num_errors)
  (:loop_time_us
   (&optional __loop_time_us)
   (if __loop_time_us (setq _loop_time_us __loop_time_us)) _loop_time_us)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _armed
    1
    ;; bool _failsafe
    1
    ;; bool _rc_override
    1
    ;; int16 _num_errors
    2
    ;; int16 _loop_time_us
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _armed
       (if _armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _failsafe
       (if _failsafe (write-byte -1 s) (write-byte 0 s))
     ;; bool _rc_override
       (if _rc_override (write-byte -1 s) (write-byte 0 s))
     ;; int16 _num_errors
       (write-word _num_errors s)
     ;; int16 _loop_time_us
       (write-word _loop_time_us s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _armed
     (setq _armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _failsafe
     (setq _failsafe (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rc_override
     (setq _rc_override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _num_errors
     (setq _num_errors (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _loop_time_us
     (setq _loop_time_us (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get fcu_common::Status :md5sum-) "4fd0b48adc917c302f3247eed9283190")
(setf (get fcu_common::Status :datatype-) "fcu_common/Status")
(setf (get fcu_common::Status :definition-)
      "Header header

bool armed 			# True if armed
bool failsafe 		# True if in failsafe
bool rc_override 	# True if RC is in control
int16 num_errors 	# Number of errors
int16 loop_time_us 	# Loop time in us

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

")



(provide :fcu_common/Status "4fd0b48adc917c302f3247eed9283190")


