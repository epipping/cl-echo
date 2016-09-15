(asdf:defsystem #:echo
  :serial t
  :build-operation program-op
  :build-pathname "echo"
  :components ((:file "echo"))
  :entry-point "echo:main")
