;; Auto-generated. Do not edit!


(when (boundp 'mypackage1::gps)
  (if (not (find-package "MYPACKAGE1"))
    (make-package "MYPACKAGE1"))
  (shadow 'gps (find-package "MYPACKAGE1")))
(unless (find-package "MYPACKAGE1::GPS")
  (make-package "MYPACKAGE1::GPS"))

(in-package "ROS")
;;//! \htmlinclude gps.msg.html


(defclass mypackage1::gps
  :super ros::object
  :slots (_x _y _state ))

(defmethod mypackage1::gps
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:state __state) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _state (string __state))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mypackage1::gps :md5sum-) "21b595b2539ba75170061ab15234e4eb")
(setf (get mypackage1::gps :datatype-) "mypackage1/gps")
(setf (get mypackage1::gps :definition-)
      "float32 x
float32 y
string state

")



(provide :mypackage1/gps "21b595b2539ba75170061ab15234e4eb")


