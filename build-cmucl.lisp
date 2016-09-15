(push (uiop:ensure-absolute-pathname (uiop:getcwd)) asdf:*central-registry*)
(asdf:disable-output-translations)
(asdf:operate 'asdf:load-op :echo)

(setf uiop:*image-dumped-p* :executable)
(setf uiop:*image-entry-point* #'echo:main)
(save-lisp "echo" :executable t
           :init-function #'uiop:restore-image
           :print-herald nil)
