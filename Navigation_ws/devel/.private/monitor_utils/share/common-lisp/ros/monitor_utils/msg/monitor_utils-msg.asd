
(cl:in-package :asdf)

(defsystem "monitor_utils-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "node_watchdog_status" :depends-on ("_package_node_watchdog_status"))
    (:file "_package_node_watchdog_status" :depends-on ("_package"))
    (:file "watched_node_data" :depends-on ("_package_watched_node_data"))
    (:file "_package_watched_node_data" :depends-on ("_package"))
  ))