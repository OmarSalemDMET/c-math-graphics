(in-package :cl-raylib)

(let ((version (lisp-implementation-version)))
  (format t "Lisp Implementation Version: ~a~%\n" version))

(test-vector2)

(defun print-test ()
  (format t "This is a test from CL-Raylib.~%"))

(defun main ()
  (format t "\n \n Hello, CL-Raylib!~%"))
(sb-ext:save-lisp-and-die "cl-raylib" :executable t :toplevel #'main)