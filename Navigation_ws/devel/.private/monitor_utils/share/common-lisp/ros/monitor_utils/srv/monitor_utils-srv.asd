
(cl:in-package :asdf)

(defsystem "monitor_utils-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "node_watchdog_service" :depends-on ("_package_node_watchdog_service"))
    (:file "_package_node_watchdog_service" :depends-on ("_package"))
  ))