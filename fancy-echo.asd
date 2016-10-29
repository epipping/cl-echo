(asdf:defsystem #:fancy-echo
  :serial t
  :depends-on (:command-line-arguments)
  :build-operation program-op
  :build-pathname "fancy-echo"
  :components ((:file "fancy-echo"))
  :entry-point "fancy-echo:main")
