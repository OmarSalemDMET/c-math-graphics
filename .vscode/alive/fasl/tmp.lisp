(asdf:defsystem "cl-raylib"
  :description "a raylib framework for Common Lisp"
  :serial t
  :license "MIT"
  :author "Omar El-Adly"
  :depends-on (:cffi)
  :components ((:module "src"
               :serial t 
               :components 
                ((:file "package")
                  (:file "vectors" :depends-on ("package"))
                  (:file "main" :depends-on ("package"))
               ))))