; Auto-generated. Do not edit!


(cl:in-package quest2ros-msg)


;//! \htmlinclude OVR2ROSInputs.msg.html

(cl:defclass <OVR2ROSInputs> (roslisp-msg-protocol:ros-message)
  ((button_upper
    :reader button_upper
    :initarg :button_upper
    :type cl:boolean
    :initform cl:nil)
   (button_lower
    :reader button_lower
    :initarg :button_lower
    :type cl:boolean
    :initform cl:nil)
   (thumb_stick_horizontal
    :reader thumb_stick_horizontal
    :initarg :thumb_stick_horizontal
    :type cl:float
    :initform 0.0)
   (thumb_stick_vertical
    :reader thumb_stick_vertical
    :initarg :thumb_stick_vertical
    :type cl:float
    :initform 0.0)
   (press_index
    :reader press_index
    :initarg :press_index
    :type cl:float
    :initform 0.0)
   (press_middle
    :reader press_middle
    :initarg :press_middle
    :type cl:float
    :initform 0.0))
)

(cl:defclass OVR2ROSInputs (<OVR2ROSInputs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OVR2ROSInputs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OVR2ROSInputs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quest2ros-msg:<OVR2ROSInputs> is deprecated: use quest2ros-msg:OVR2ROSInputs instead.")))

(cl:ensure-generic-function 'button_upper-val :lambda-list '(m))
(cl:defmethod button_upper-val ((m <OVR2ROSInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quest2ros-msg:button_upper-val is deprecated.  Use quest2ros-msg:button_upper instead.")
  (button_upper m))

(cl:ensure-generic-function 'button_lower-val :lambda-list '(m))
(cl:defmethod button_lower-val ((m <OVR2ROSInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quest2ros-msg:button_lower-val is deprecated.  Use quest2ros-msg:button_lower instead.")
  (button_lower m))

(cl:ensure-generic-function 'thumb_stick_horizontal-val :lambda-list '(m))
(cl:defmethod thumb_stick_horizontal-val ((m <OVR2ROSInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quest2ros-msg:thumb_stick_horizontal-val is deprecated.  Use quest2ros-msg:thumb_stick_horizontal instead.")
  (thumb_stick_horizontal m))

(cl:ensure-generic-function 'thumb_stick_vertical-val :lambda-list '(m))
(cl:defmethod thumb_stick_vertical-val ((m <OVR2ROSInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quest2ros-msg:thumb_stick_vertical-val is deprecated.  Use quest2ros-msg:thumb_stick_vertical instead.")
  (thumb_stick_vertical m))

(cl:ensure-generic-function 'press_index-val :lambda-list '(m))
(cl:defmethod press_index-val ((m <OVR2ROSInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quest2ros-msg:press_index-val is deprecated.  Use quest2ros-msg:press_index instead.")
  (press_index m))

(cl:ensure-generic-function 'press_middle-val :lambda-list '(m))
(cl:defmethod press_middle-val ((m <OVR2ROSInputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quest2ros-msg:press_middle-val is deprecated.  Use quest2ros-msg:press_middle instead.")
  (press_middle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OVR2ROSInputs>) ostream)
  "Serializes a message object of type '<OVR2ROSInputs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'button_upper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'button_lower) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thumb_stick_horizontal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thumb_stick_vertical))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'press_index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'press_middle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OVR2ROSInputs>) istream)
  "Deserializes a message object of type '<OVR2ROSInputs>"
    (cl:setf (cl:slot-value msg 'button_upper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'button_lower) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thumb_stick_horizontal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thumb_stick_vertical) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'press_index) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'press_middle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OVR2ROSInputs>)))
  "Returns string type for a message object of type '<OVR2ROSInputs>"
  "quest2ros/OVR2ROSInputs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OVR2ROSInputs)))
  "Returns string type for a message object of type 'OVR2ROSInputs"
  "quest2ros/OVR2ROSInputs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OVR2ROSInputs>)))
  "Returns md5sum for a message object of type '<OVR2ROSInputs>"
  "8758130cf7abdc4f62ab78aeafd59057")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OVR2ROSInputs)))
  "Returns md5sum for a message object of type 'OVR2ROSInputs"
  "8758130cf7abdc4f62ab78aeafd59057")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OVR2ROSInputs>)))
  "Returns full string definition for message of type '<OVR2ROSInputs>"
  (cl:format cl:nil "# Inputs~%bool button_upper~%bool button_lower~%float32 thumb_stick_horizontal~%float32 thumb_stick_vertical~%float32 press_index~%float32 press_middle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OVR2ROSInputs)))
  "Returns full string definition for message of type 'OVR2ROSInputs"
  (cl:format cl:nil "# Inputs~%bool button_upper~%bool button_lower~%float32 thumb_stick_horizontal~%float32 thumb_stick_vertical~%float32 press_index~%float32 press_middle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OVR2ROSInputs>))
  (cl:+ 0
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OVR2ROSInputs>))
  "Converts a ROS message object to a list"
  (cl:list 'OVR2ROSInputs
    (cl:cons ':button_upper (button_upper msg))
    (cl:cons ':button_lower (button_lower msg))
    (cl:cons ':thumb_stick_horizontal (thumb_stick_horizontal msg))
    (cl:cons ':thumb_stick_vertical (thumb_stick_vertical msg))
    (cl:cons ':press_index (press_index msg))
    (cl:cons ':press_middle (press_middle msg))
))
