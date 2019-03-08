;; Auto-generated. Do not edit!


(when (boundp 'roscopter_msgs::RemoveWaypoint)
  (if (not (find-package "ROSCOPTER_MSGS"))
    (make-package "ROSCOPTER_MSGS"))
  (shadow 'RemoveWaypoint (find-package "ROSCOPTER_MSGS")))
(unless (find-package "ROSCOPTER_MSGS::REMOVEWAYPOINT")
  (make-package "ROSCOPTER_MSGS::REMOVEWAYPOINT"))
(unless (find-package "ROSCOPTER_MSGS::REMOVEWAYPOINTREQUEST")
  (make-package "ROSCOPTER_MSGS::REMOVEWAYPOINTREQUEST"))
(unless (find-package "ROSCOPTER_MSGS::REMOVEWAYPOINTRESPONSE")
  (make-package "ROSCOPTER_MSGS::REMOVEWAYPOINTRESPONSE"))

(in-package "ROS")





(defclass roscopter_msgs::RemoveWaypointRequest
  :super ros::object
  :slots (_front ))

(defmethod roscopter_msgs::RemoveWaypointRequest
  (:init
   (&key
    ((:front __front) nil)
    )
   (send-super :init)
   (setq _front __front)
   self)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:serialization-length
   ()
   (+
    ;; bool _front
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _front
       (if _front (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _front
     (setq _front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roscopter_msgs::RemoveWaypointResponse
  :super ros::object
  :slots (_length ))

(defmethod roscopter_msgs::RemoveWaypointResponse
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

(defclass roscopter_msgs::RemoveWaypoint
  :super ros::object
  :slots ())

(setf (get roscopter_msgs::RemoveWaypoint :md5sum-) "8e64718d0fc1826ffd884d37ef95c787")
(setf (get roscopter_msgs::RemoveWaypoint :datatype-) "roscopter_msgs/RemoveWaypoint")
(setf (get roscopter_msgs::RemoveWaypoint :request) roscopter_msgs::RemoveWaypointRequest)
(setf (get roscopter_msgs::RemoveWaypoint :response) roscopter_msgs::RemoveWaypointResponse)

(defmethod roscopter_msgs::RemoveWaypointRequest
  (:response () (instance roscopter_msgs::RemoveWaypointResponse :init)))

(setf (get roscopter_msgs::RemoveWaypointRequest :md5sum-) "8e64718d0fc1826ffd884d37ef95c787")
(setf (get roscopter_msgs::RemoveWaypointRequest :datatype-) "roscopter_msgs/RemoveWaypointRequest")
(setf (get roscopter_msgs::RemoveWaypointRequest :definition-)
      "

bool front
---
int32 length

")

(setf (get roscopter_msgs::RemoveWaypointResponse :md5sum-) "8e64718d0fc1826ffd884d37ef95c787")
(setf (get roscopter_msgs::RemoveWaypointResponse :datatype-) "roscopter_msgs/RemoveWaypointResponse")
(setf (get roscopter_msgs::RemoveWaypointResponse :definition-)
      "

bool front
---
int32 length

")



(provide :roscopter_msgs/RemoveWaypoint "8e64718d0fc1826ffd884d37ef95c787")


