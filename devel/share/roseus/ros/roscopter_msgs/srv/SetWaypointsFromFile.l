;; Auto-generated. Do not edit!


(when (boundp 'roscopter_msgs::SetWaypointsFromFile)
  (if (not (find-package "ROSCOPTER_MSGS"))
    (make-package "ROSCOPTER_MSGS"))
  (shadow 'SetWaypointsFromFile (find-package "ROSCOPTER_MSGS")))
(unless (find-package "ROSCOPTER_MSGS::SETWAYPOINTSFROMFILE")
  (make-package "ROSCOPTER_MSGS::SETWAYPOINTSFROMFILE"))
(unless (find-package "ROSCOPTER_MSGS::SETWAYPOINTSFROMFILEREQUEST")
  (make-package "ROSCOPTER_MSGS::SETWAYPOINTSFROMFILEREQUEST"))
(unless (find-package "ROSCOPTER_MSGS::SETWAYPOINTSFROMFILERESPONSE")
  (make-package "ROSCOPTER_MSGS::SETWAYPOINTSFROMFILERESPONSE"))

(in-package "ROS")





(defclass roscopter_msgs::SetWaypointsFromFileRequest
  :super ros::object
  :slots (_filename ))

(defmethod roscopter_msgs::SetWaypointsFromFileRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roscopter_msgs::SetWaypointsFromFileResponse
  :super ros::object
  :slots (_success ))

(defmethod roscopter_msgs::SetWaypointsFromFileResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass roscopter_msgs::SetWaypointsFromFile
  :super ros::object
  :slots ())

(setf (get roscopter_msgs::SetWaypointsFromFile :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get roscopter_msgs::SetWaypointsFromFile :datatype-) "roscopter_msgs/SetWaypointsFromFile")
(setf (get roscopter_msgs::SetWaypointsFromFile :request) roscopter_msgs::SetWaypointsFromFileRequest)
(setf (get roscopter_msgs::SetWaypointsFromFile :response) roscopter_msgs::SetWaypointsFromFileResponse)

(defmethod roscopter_msgs::SetWaypointsFromFileRequest
  (:response () (instance roscopter_msgs::SetWaypointsFromFileResponse :init)))

(setf (get roscopter_msgs::SetWaypointsFromFileRequest :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get roscopter_msgs::SetWaypointsFromFileRequest :datatype-) "roscopter_msgs/SetWaypointsFromFileRequest")
(setf (get roscopter_msgs::SetWaypointsFromFileRequest :definition-)
      "


string filename
---
bool success

")

(setf (get roscopter_msgs::SetWaypointsFromFileResponse :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get roscopter_msgs::SetWaypointsFromFileResponse :datatype-) "roscopter_msgs/SetWaypointsFromFileResponse")
(setf (get roscopter_msgs::SetWaypointsFromFileResponse :definition-)
      "


string filename
---
bool success

")



(provide :roscopter_msgs/SetWaypointsFromFile "93a4bc4c60dc17e2a69e3fcaaa25d69d")


