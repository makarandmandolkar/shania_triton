
(cl:in-package :asdf)

(defsystem "rt_carriage_controller_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pallet_fork_position" :depends-on ("_package_pallet_fork_position"))
    (:file "_package_pallet_fork_position" :depends-on ("_package"))
  ))