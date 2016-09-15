(push (uiop:ensure-absolute-pathname (uiop:getcwd)) asdf:*central-registry*)
(asdf:disable-output-translations)
(asdf:operate 'asdf:program-op :echo)
