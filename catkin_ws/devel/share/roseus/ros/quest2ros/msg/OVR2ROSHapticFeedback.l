;; Auto-generated. Do not edit!


(when (boundp 'quest2ros::OVR2ROSHapticFeedback)
  (if (not (find-package "QUEST2ROS"))
    (make-package "QUEST2ROS"))
  (shadow 'OVR2ROSHapticFeedback (find-package "QUEST2ROS")))
(unless (find-package "QUEST2ROS::OVR2ROSHAPTICFEEDBACK")
  (make-package "QUEST2ROS::OVR2ROSHAPTICFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude OVR2ROSHapticFeedback.msg.html


(defclass quest2ros::OVR2ROSHapticFeedback
  :super ros::object
  :slots (_frequency _amplitude ))

(defmethod quest2ros::OVR2ROSHapticFeedback
  (:init
   (&key
    ((:frequency __frequency) 0.0)
    ((:amplitude __amplitude) 0.0)
    )
   (send-super :init)
   (setq _frequency (float __frequency))
   (setq _amplitude (float __amplitude))
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:amplitude
   (&optional __amplitude)
   (if __amplitude (setq _amplitude __amplitude)) _amplitude)
  (:serialization-length
   ()
   (+
    ;; float32 _frequency
    4
    ;; float32 _amplitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _amplitude
       (sys::poke _amplitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _amplitude
     (setq _amplitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get quest2ros::OVR2ROSHapticFeedback :md5sum-) "70169d48245fcf63af46b9faf76bdbdf")
(setf (get quest2ros::OVR2ROSHapticFeedback :datatype-) "quest2ros/OVR2ROSHapticFeedback")
(setf (get quest2ros::OVR2ROSHapticFeedback :definition-)
      "float32 frequency
float32 amplitude
")



(provide :quest2ros/OVR2ROSHapticFeedback "70169d48245fcf63af46b9faf76bdbdf")


