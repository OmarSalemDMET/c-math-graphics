(in-package :cl-raylib)

(defun print-lisp-version ()
  (let ((version (lisp-implementation-version)))
  (format t "Lisp Implementation Version: ~a~%" version)))

(defun print-test ()
  (format t "This is a test from CL-Raylib.~%"))

(defun main ()
  (format t "\n \n Hello, CL-Raylib!~%")
  (print-lisp-version)
  (vectors:test-vector2))
(sb-ext:save-lisp-and-die "cl-raylib" :executable t :toplevel #'main)