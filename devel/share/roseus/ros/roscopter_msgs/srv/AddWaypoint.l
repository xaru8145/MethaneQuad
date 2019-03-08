;; Auto-generated. Do not edit!


(when (boundp 'roscopter_msgs::AddWaypoint)
  (if (not (find-package "ROSCOPTER_MSGS"))
    (make-package "ROSCOPTER_MSGS"))
  (shadow 'AddWaypoint (find-package "ROSCOPTER_MSGS")))
(unless (find-package "ROSCOPTER_MSGS::ADDWAYPOINT")
  (make-package "ROSCOPTER_MSGS::ADDWAYPOINT"))
(unless (find-package "ROSCOPTER_MSGS::ADDWAYPOINTREQUEST")
  (make-package "ROSCOPTER_MSGS::ADDWAYPOINTREQUEST"))
(unless (find-package "ROSCOPTER_MSGS::ADDWAYPOINTRESPONSE")
  (make-package "ROSCOPTER_MSGS::ADDWAYPOINTRESPONSE"))

(in-package "ROS")





(defclass roscopter_msgs::AddWaypointRequest
  :super ros::object
  :slots (_x _y _z ))

(defmethod roscopter_msgs::AddWaypointRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass roscopter_msgs::AddWaypointResponse
  :super ros::object
  :slots (_length ))

(defmethod roscopter_msgs::AddWaypointResponse
  (:init
   (&key
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _length (round __length))
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; int32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _length
       (write-long _length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass roscopter_msgs::AddWaypoint
  :super ros::object
  :slots ())

(setf (get roscopter_msgs::AddWaypoint :md5sum-) "7cfdc1b052a1b4a9bf3df9443ff04be6")
(setf (get roscopter_msgs::AddWaypoint :datatype-) "roscopter_msgs/AddWaypoint")
(setf (get roscopter_msgs::AddWaypoint :request) roscopter_msgs::AddWaypointRequest)
(setf (get roscopter_msgs::AddWaypoint :response) roscopter_msgs::AddWaypointResponse)

(defmethod roscopter_msgs::AddWaypointRequest
  (:response () (instance roscopter_msgs::AddWaypointResponse :init)))

(setf (get roscopter_msgs::AddWaypointRequest :md5sum-) "7cfdc1b052a1b4a9bf3df9443ff04be6")
(setf (get roscopter_msgs::AddWaypointRequest :datatype-) "roscopter_msgs/AddWaypointRequest")
(setf (get roscopter_msgs::AddWaypointRequest :definition-)
      "

float64 x
float64 y
float64 z
---
int32 length

")

(setf (get roscopter_msgs::AddWaypointResponse :md5sum-) "7cfdc1b052a1b4a9bf3df9443ff04be6")
(setf (get roscopter_msgs::AddWaypointResponse :datatype-) "roscopter_msgs/AddWaypointResponse")
(setf (get roscopter_msgs::AddWaypointResponse :definition-)
      "

float64 x
float64 y
float64 z
---
int32 length

")



(provide :roscopter_msgs/AddWaypoint "7cfdc1b052a1b4a9bf3df9443ff04be6")


