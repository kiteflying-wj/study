
(cl:in-package :asdf)

(defsystem "practice-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "send" :depends-on ("_package_send"))
    (:file "_package_send" :depends-on ("_package"))
  ))