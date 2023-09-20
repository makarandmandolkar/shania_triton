;; Auto-generated. Do not edit!


(when (boundp 'rt_carriage_controller_msgs::carriage_sensor_diagnostics)
  (if (not (find-package "RT_CARRIAGE_CONTROLLER_MSGS"))
    (make-package "RT_CARRIAGE_CONTROLLER_MSGS"))
  (shadow 'carriage_sensor_diagnostics (find-package "RT_CARRIAGE_CONTROLLER_MSGS")))
(unless (find-package "RT_CARRIAGE_CONTROLLER_MSGS::CARRIAGE_SENSOR_DIAGNOSTICS")
  (make-package "RT_CARRIAGE_CONTROLLER_MSGS::CARRIAGE_SENSOR_DIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude carriage_sensor_diagnostics.msg.html


(defclass rt_carriage_controller_msgs::carriage_sensor_diagnostics
  :super ros::object
  :slots (_name _raw_data _filtered_data _position ))

(defmethod rt_carriage_controller_msgs::carriage_sensor_diagnostics
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 6) (push "" r)) r))
    ((:raw_data __raw_data) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:filtered_data __filtered_data) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:position __position) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name __name)
   (setq _raw_data __raw_data)
   (setq _filtered_data __filtered_data)
   (setq _position __position)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:raw_data
   (&optional __raw_data)
   (if __raw_data (setq _raw_data __raw_data)) _raw_data)
  (:filtered_data
   (&optional __filtered_data)
   (if __filtered_data (setq _filtered_data __filtered_data)) _filtered_data)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; string[6] _name
    (apply #'+ 4 (length _name)    6)
    ;; float64[6] _raw_data
    (* 8    6)
    ;; float64[6] _filtered_data
    (* 8    6)
    ;; float64[6] _position
    (* 8    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[6] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[6] _raw_data
     (dotimes (i 6)
       (sys::poke (elt _raw_data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _filtered_data
     (dotimes (i 6)
       (sys::poke (elt _filtered_data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _position
     (dotimes (i 6)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[6] _name
   (dotimes (i (length _name))
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     )
   ;; float64[6] _raw_data
   (dotimes (i (length _raw_data))
     (setf (elt _raw_data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _filtered_data
   (dotimes (i (length _filtered_data))
     (setf (elt _filtered_data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get rt_carriage_controller_msgs::carriage_sensor_diagnostics :md5sum-) "0617ade47f8a69926360e2cca79d5e22")
(setf (get rt_carriage_controller_msgs::carriage_sensor_diagnostics :datatype-) "rt_carriage_controller_msgs/carriage_sensor_diagnostics")
(setf (get rt_carriage_controller_msgs::carriage_sensor_diagnostics :definition-)
      "string[6] name
float64[6] raw_data
float64[6] filtered_data
float64[6] position

")



(provide :rt_carriage_controller_msgs/carriage_sensor_diagnostics "0617ade47f8a69926360e2cca79d5e22")


