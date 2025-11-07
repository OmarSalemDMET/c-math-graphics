(defpackage #:cl-raylib
  (:use :cl :cffi))

(defpackage #:cl-raylib.vectors
  (:use :cl #:cl-raylib)
    (:export :vector2
      :make-vector2
      :add-vector2
      :sub-vector2
      :get-magnitude
      :test-vector2)) 