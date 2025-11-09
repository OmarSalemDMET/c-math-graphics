(in-package :cl-game)
(require :cl-raylib)
(defun print-lisp-version ()
  (let ((version (lisp-implementation-version)))
  (format t "Lisp Implementation Version: ~a~%" version)))

(defun print-test ()
  (format t "This is a test from CL-Raylib.~%"))

(defun game-window ()
  (let ((screen-width 1024)
        (screen-height 560))
        (with-window (screen-width screen-height "Main Game Window")
          (set-target-fps 60)
          (loop 
            until (window-should-close)
            do (with-drawing
                 (clear-background :raywhite)
                 (draw-fps 20 20)
                 (draw-text "Main Menue!" (- (/ screen-width 2) 40) (/ screen-height 2)  20 :lightgray)
                 (end-drawing))))))

(defun main ()
  (format t "\n \n Hello, CL-Raylib!~%")
  (print-lisp-version)
  (vectors2d:test-vector2d) ; Removed due to undefined function error
  (game-window))
(sb-ext:save-lisp-and-die "cl-game" :executable t :toplevel #'main)