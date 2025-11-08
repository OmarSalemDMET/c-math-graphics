(asdf:defsystem "cl-game"
  :description "A simple Common Lisp game using raylib."
  :serial t
  :license "MIT"
  :author "Omar El-Adly"
  :depends-on (:sdl2)
  :components ((:module "src"
               :serial t 
               :components 
                ((:file "vectors")
                 (:file "package" :depends-on ("vectors"))
                 (:file "main" :depends-on ("package"))
               ))))