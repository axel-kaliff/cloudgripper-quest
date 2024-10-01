
(cl:in-package :asdf)

(defsystem "quest2ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "OVR2ROSHapticFeedback" :depends-on ("_package_OVR2ROSHapticFeedback"))
    (:file "_package_OVR2ROSHapticFeedback" :depends-on ("_package"))
    (:file "OVR2ROSInputs" :depends-on ("_package_OVR2ROSInputs"))
    (:file "_package_OVR2ROSInputs" :depends-on ("_package"))
  ))