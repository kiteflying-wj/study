;; Auto-generated. Do not edit!


(when (boundp 'mypackage1::check)
  (if (not (find-package "MYPACKAGE1"))
    (make-package "MYPACKAGE1"))
  (shadow 'check (find-package "MYPACKAGE1")))
(unless (find-package "MYPACKAGE1::CHECK")
  (make-package "MYPACKAGE1::CHECK"))

(in-package "ROS")
;;//! \htmlinclude check.msg.html


(defclass mypackage1::check
  :super ros::object
  :slots (_state ))

(defmethod mypackage1::check
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mypackage1::check :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get mypackage1::check :datatype-) "mypackage1/check")
(setf (get mypackage1::check :definition-)
      "string state

")



(provide :mypackage1/check "af6d3a99f0fbeb66d3248fa4b3e675fb")


