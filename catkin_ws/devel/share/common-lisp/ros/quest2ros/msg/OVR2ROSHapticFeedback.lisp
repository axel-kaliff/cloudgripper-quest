; Auto-generated. Do not edit!


(cl:in-package quest2ros-msg)


;//! \htmlinclude OVR2ROSHapticFeedback.msg.html

(cl:defclass <OVR2ROSHapticFeedback> (roslisp-msg-protocol:ros-message)
  ((frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (amplitude
    :reader amplitude
    :initarg :amplitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass OVR2ROSHapticFeedback (<OVR2ROSHapticFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OVR2ROSHapticFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OVR2ROSHapticFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quest2ros-msg:<OVR2ROSHapticFeedback> is deprecated: use quest2ros-msg:OVR2ROSHapticFeedback instead.")))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <OVR2ROSHapticFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quest2ros-msg:frequency-val is deprecated.  Use quest2ros-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <OVR2ROSHapticFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quest2ros-msg:amplitude-val is deprecated.  Use quest2ros-msg:amplitude instead.")
  (amplitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OVR2ROSHapticFeedback>) ostream)
  "Serializes a message object of type '<OVR2ROSHapticFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OVR2ROSHapticFeedback>) istream)
  "Deserializes a message object of type '<OVR2ROSHapticFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'amplitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OVR2ROSHapticFeedback>)))
  "Returns string type for a message object of type '<OVR2ROSHapticFeedback>"
  "quest2ros/OVR2ROSHapticFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OVR2ROSHapticFeedback)))
  "Returns string type for a message object of type 'OVR2ROSHapticFeedback"
  "quest2ros/OVR2ROSHapticFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OVR2ROSHapticFeedback>)))
  "Returns md5sum for a message object of type '<OVR2ROSHapticFeedback>"
  "70169d48245fcf63af46b9faf76bdbdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OVR2ROSHapticFeedback)))
  "Returns md5sum for a message object of type 'OVR2ROSHapticFeedback"
  "70169d48245fcf63af46b9faf76bdbdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OVR2ROSHapticFeedback>)))
  "Returns full string definition for message of type '<OVR2ROSHapticFeedback>"
  (cl:format cl:nil "float32 frequency~%float32 amplitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OVR2ROSHapticFeedback)))
  "Returns full string definition for message of type 'OVR2ROSHapticFeedback"
  (cl:format cl:nil "float32 frequency~%float32 amplitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OVR2ROSHapticFeedback>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OVR2ROSHapticFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'OVR2ROSHapticFeedback
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':amplitude (amplitude msg))
))
