;; Auto-generated. Do not edit!


(when (boundp 'practice::send)
  (if (not (find-package "PRACTICE"))
    (make-package "PRACTICE"))
  (shadow 'send (find-package "PRACTICE")))
(unless (find-package "PRACTICE::SEND")
  (make-package "PRACTICE::SEND"))

(in-package "ROS")
;;//! \htmlinclude send.msg.html


(defclass practice::send
  :super ros::object
  :slots (_message1 _message2 ))

(defmethod practice::send
  (:init
   (&key
    ((:message1 __message1) "")
    ((:message2 __message2) "")
    )
   (send-super :init)
   (setq _message1 (string __message1))
   (setq _message2 (string __message2))
   self)
  (:message1
   (&optional __message1)
   (if __message1 (setq _message1 __message1)) _message1)
  (:message2
   (&optional __message2)
   (if __message2 (setq _message2 __message2)) _message2)
  (:serialization-length
   ()
   (+
    ;; string _message1
    4 (length _message1)
    ;; string _message2
    4 (length _message2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message1
       (write-long (length _message1) s) (princ _message1 s)
     ;; string _message2
       (write-long (length _message2) s) (princ _message2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get practice::send :md5sum-) "5eba6f8f31d161a30d781af191db38e0")
(setf (get practice::send :datatype-) "practice/send")
(setf (get practice::send :definition-)
      "string message1
string message2

")



(provide :practice/send "5eba6f8f31d161a30d781af191db38e0")


