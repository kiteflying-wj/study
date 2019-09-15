; Auto-generated. Do not edit!


(cl:in-package practice-msg)


;//! \htmlinclude send.msg.html

(cl:defclass <send> (roslisp-msg-protocol:ros-message)
  ((message1
    :reader message1
    :initarg :message1
    :type cl:string
    :initform "")
   (message2
    :reader message2
    :initarg :message2
    :type cl:string
    :initform ""))
)

(cl:defclass send (<send>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <send>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'send)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name practice-msg:<send> is deprecated: use practice-msg:send instead.")))

(cl:ensure-generic-function 'message1-val :lambda-list '(m))
(cl:defmethod message1-val ((m <send>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader practice-msg:message1-val is deprecated.  Use practice-msg:message1 instead.")
  (message1 m))

(cl:ensure-generic-function 'message2-val :lambda-list '(m))
(cl:defmethod message2-val ((m <send>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader practice-msg:message2-val is deprecated.  Use practice-msg:message2 instead.")
  (message2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <send>) ostream)
  "Serializes a message object of type '<send>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <send>) istream)
  "Deserializes a message object of type '<send>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<send>)))
  "Returns string type for a message object of type '<send>"
  "practice/send")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'send)))
  "Returns string type for a message object of type 'send"
  "practice/send")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<send>)))
  "Returns md5sum for a message object of type '<send>"
  "5eba6f8f31d161a30d781af191db38e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'send)))
  "Returns md5sum for a message object of type 'send"
  "5eba6f8f31d161a30d781af191db38e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<send>)))
  "Returns full string definition for message of type '<send>"
  (cl:format cl:nil "string message1~%string message2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'send)))
  "Returns full string definition for message of type 'send"
  (cl:format cl:nil "string message1~%string message2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <send>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message1))
     4 (cl:length (cl:slot-value msg 'message2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <send>))
  "Converts a ROS message object to a list"
  (cl:list 'send
    (cl:cons ':message1 (message1 msg))
    (cl:cons ':message2 (message2 msg))
))
