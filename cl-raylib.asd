(asdf:defsystem "cl-raylib"
  :description "a raylib framework for Common Lisp"
  :serial t
  :license "MIT"
  :author "Omar El-Adly"
  :depends-on (:cffi)
  :components ((:module "src"
               :serial t 
               :components 
                ((:file "vectors")
                 (:file "package" :depends-on ("vectors"))
                 (:file "main" :depends-on ("package"))
               ))))