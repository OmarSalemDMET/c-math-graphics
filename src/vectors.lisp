(defpackage #:vectors
  (:use :cl)
    (:export :vector2
      :make-vector2
      :add-vector2
      :sub-vector2
      :get-magnitude
      :test-vector2)) 

(in-package #:vectors)

(defclass vector2 ()
  ((x :accessor x :initarg :x :initform 0.0)
   (y :accessor y :initarg :y :initform 0.0)))

(defmethod print-object ((v vector2) stream)
  (format stream "#<vector2 ~a ~a>" (x v) (y v)))

(defmethod get-magnitude ((v vector2))
  (sqrt (+ (expt (x v) 2)
           (expt (y v) 2))))

(defun make-vector2 (x y)
  (make-instance 'vector2 :x x :y y))

(defun add-vector2 (v1 v2)
  (make-vector2 (+ (x v1) (x v2))
                 (+ (y v1) (y v2))))
(defun sub-vector2 (v1 v2)
  (make-vector2 (- (x v1) (x v2))
                 (- (y v1) (y v2))))

;;testing the class 
(defun test-vector2 ()
  (let* ((v1 (make-vector2 3 4))
         (v2 (make-vector2 1 2))
         (v3 (add-vector2 v1 v2))
         (v4 (sub-vector2 v1 v2)))
    (format t "Vector 1: ~a~%" v1)
    (format t "Vector 2: ~a~%" v2)
    (format t "Added Vector: ~a~%" v3)
    (format t "Subtracted Vector: ~a~%" v4)
    (format t "Magnitude of Vector 1: ~a~%" (get-magnitude v1))))
    