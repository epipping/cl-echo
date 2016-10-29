(require :asdf)
(push (uiop:ensure-absolute-pathname (uiop:getcwd)) asdf:*central-registry*)
(asdf:operate 'asdf:program-op :fancy-echo)
