(defpackage :vectors2d
  (:use :cl)
  (:export :vector2d
           :make-vector2d
           :add-vector2d
           :sub-vector2d
           :get-magnitude
           :test-vector2d))

(in-package :vectors2d)

(defclass vector2d ()
  ((x :accessor x :initarg :x :initform 0.0)
   (y :accessor y :initarg :y :initform 0.0)))

(defmethod print-object ((v vector2d) stream)
  (format stream "#<vector2 ~a ~a>" (x v) (y v)))

(defmethod get-magnitude ((v vector2d))
  (sqrt (+ (expt (x v) 2)
           (expt (y v) 2))))

(defun make-vector2d (x y)
  (make-instance 'vector2d :x x :y y))

(defun add-vector2d (v1 v2)
  (make-vector2d (+ (x v1) (x v2))
                 (+ (y v1) (y v2))))
(defun sub-vector2d (v1 v2)
  (make-vector2d (- (x v1) (x v2))
                 (- (y v1) (y v2))))

;;testing the class 
(defun test-vector2d ()
  (let* ((v1 (make-vector2d 3 4))
         (v2 (make-vector2d 1 2))
         (v3 (add-vector2d v1 v2))
         (v4 (sub-vector2d v1 v2)))
    (format t "Vector 1: ~a~%" v1)
    (format t "Vector 2: ~a~%" v2)
    (format t "Added Vector: ~a~%" v3)
    (format t "Subtracted Vector: ~a~%" v4)
    (format t "Magnitude of Vector 1: ~a~%" (get-magnitude v1))))
    