(asdf:defsystem "cl-game"
  :description "A simple Common Lisp game using raylib."
  :serial t
  :license "MIT"
  :author "Omar El-Adly"
  :depends-on (:cl-raylib :cl-json)
  :components ((:module "src"
               :serial t 
               :components 
                ((:file "vectors2d")
                 (:file "package" :depends-on ("vectors2d"))
                 (:file "main" :depends-on ("package"))
               ))))