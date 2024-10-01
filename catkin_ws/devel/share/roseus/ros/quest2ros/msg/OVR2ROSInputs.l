;; Auto-generated. Do not edit!


(when (boundp 'quest2ros::OVR2ROSInputs)
  (if (not (find-package "QUEST2ROS"))
    (make-package "QUEST2ROS"))
  (shadow 'OVR2ROSInputs (find-package "QUEST2ROS")))
(unless (find-package "QUEST2ROS::OVR2ROSINPUTS")
  (make-package "QUEST2ROS::OVR2ROSINPUTS"))

(in-package "ROS")
;;//! \htmlinclude OVR2ROSInputs.msg.html


(defclass quest2ros::OVR2ROSInputs
  :super ros::object
  :slots (_button_upper _button_lower _thumb_stick_horizontal _thumb_stick_vertical _press_index _press_middle ))

(defmethod quest2ros::OVR2ROSInputs
  (:init
   (&key
    ((:button_upper __button_upper) nil)
    ((:button_lower __button_lower) nil)
    ((:thumb_stick_horizontal __thumb_stick_horizontal) 0.0)
    ((:thumb_stick_vertical __thumb_stick_vertical) 0.0)
    ((:press_index __press_index) 0.0)
    ((:press_middle __press_middle) 0.0)
    )
   (send-super :init)
   (setq _button_upper __button_upper)
   (setq _button_lower __button_lower)
   (setq _thumb_stick_horizontal (float __thumb_stick_horizontal))
   (setq _thumb_stick_vertical (float __thumb_stick_vertical))
   (setq _press_index (float __press_index))
   (setq _press_middle (float __press_middle))
   self)
  (:button_upper
   (&optional (__button_upper :null))
   (if (not (eq __button_upper :null)) (setq _button_upper __button_upper)) _button_upper)
  (:button_lower
   (&optional (__button_lower :null))
   (if (not (eq __button_lower :null)) (setq _button_lower __button_lower)) _button_lower)
  (:thumb_stick_horizontal
   (&optional __thumb_stick_horizontal)
   (if __thumb_stick_horizontal (setq _thumb_stick_horizontal __thumb_stick_horizontal)) _thumb_stick_horizontal)
  (:thumb_stick_vertical
   (&optional __thumb_stick_vertical)
   (if __thumb_stick_vertical (setq _thumb_stick_vertical __thumb_stick_vertical)) _thumb_stick_vertical)
  (:press_index
   (&optional __press_index)
   (if __press_index (setq _press_index __press_index)) _press_index)
  (:press_middle
   (&optional __press_middle)
   (if __press_middle (setq _press_middle __press_middle)) _press_middle)
  (:serialization-length
   ()
   (+
    ;; bool _button_upper
    1
    ;; bool _button_lower
    1
    ;; float32 _thumb_stick_horizontal
    4
    ;; float32 _thumb_stick_vertical
    4
    ;; float32 _press_index
    4
    ;; float32 _press_middle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _button_upper
       (if _button_upper (write-byte -1 s) (write-byte 0 s))
     ;; bool _button_lower
       (if _button_lower (write-byte -1 s) (write-byte 0 s))
     ;; float32 _thumb_stick_horizontal
       (sys::poke _thumb_stick_horizontal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _thumb_stick_vertical
       (sys::poke _thumb_stick_vertical (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _press_index
       (sys::poke _press_index (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _press_middle
       (sys::poke _press_middle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _button_upper
     (setq _button_upper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _button_lower
     (setq _button_lower (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _thumb_stick_horizontal
     (setq _thumb_stick_horizontal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _thumb_stick_vertical
     (setq _thumb_stick_vertical (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _press_index
     (setq _press_index (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _press_middle
     (setq _press_middle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get quest2ros::OVR2ROSInputs :md5sum-) "8758130cf7abdc4f62ab78aeafd59057")
(setf (get quest2ros::OVR2ROSInputs :datatype-) "quest2ros/OVR2ROSInputs")
(setf (get quest2ros::OVR2ROSInputs :definition-)
      "# Inputs
bool button_upper
bool button_lower
float32 thumb_stick_horizontal
float32 thumb_stick_vertical
float32 press_index
float32 press_middle
")



(provide :quest2ros/OVR2ROSInputs "8758130cf7abdc4f62ab78aeafd59057")


