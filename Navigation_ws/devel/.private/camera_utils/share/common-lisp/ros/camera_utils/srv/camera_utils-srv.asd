
(cl:in-package :asdf)

(defsystem "camera_utils-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "LatestImage" :depends-on ("_package_LatestImage"))
    (:file "_package_LatestImage" :depends-on ("_package"))
  ))