(asdf:defsystem "cl-game"
  :description "A simple Common Lisp game using raylib."
  :serial t
  :license "MIT"
  :author "Omar El-Adly"
  :depends-on (:cl-raylib :cl-json :3d-vectors)
  :components ((:module "src"
               :serial t 
               :components 
                ((:file "vectors2d")
                 (:file "opponent-class")
                 (:file "package" :depends-on ("vectors2d"))
                 (:file "main" :depends-on ("package"))
               ))))