(defpackage #:echo
  (:export #:main)
  (:use #:cl))

(in-package #:echo)

(defun main ()
  (format t "Got arguments: ~a~%" (uiop:command-line-arguments))
  (format t "Got raw arguments: ~a~%" (uiop:raw-command-line-arguments))
  (uiop:quit 0))
