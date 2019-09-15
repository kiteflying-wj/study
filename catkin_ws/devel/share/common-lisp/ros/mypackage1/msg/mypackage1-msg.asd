
(cl:in-package :asdf)

(defsystem "mypackage1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
    (:file "check" :depends-on ("_package_check"))
    (:file "_package_check" :depends-on ("_package"))
    (:file "gps" :depends-on ("_package_gps"))
    (:file "_package_gps" :depends-on ("_package"))
  ))