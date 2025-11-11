(defpackage :opponent-class
  (:use :cl :cl-raylib :3d-vectors))

(in-package :opponent-class)

(defclass opponent ()
  ((name :accessor name :initarg :name :initform "Unnamed Opponent")
   (stamina :accessor stamina :initarg :stamnina :initform 100)
   (pos :accessor pos :initarg :pos :initform (vec2 0.0 0.0))))

(defmethod print-object ((o opponent) stream)
  (format stream "#<Opponent ~a, Stamina: ~a, Position: ~a>" 
          (name o) 
          (stamina o) 
          (pos o)))

(defmethod get-location ((o opponent))
  (pos o))

(defun make-opponent (name stamina pos)
  (make-instance 'opponent :name name :stamina stamina :pos pos))