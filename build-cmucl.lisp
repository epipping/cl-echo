(push (uiop:ensure-absolute-pathname (uiop:getcwd)) asdf:*central-registry*)
(asdf:disable-output-translations)
(asdf:operate 'asdf:load-op :echo)

;; FIXME: Otherwise (command-line-arguments) will not behave correctly
(setf uiop:*image-dumped-p* :executable)

(save-lisp "echo" :executable t :init-function #'echo:main)
