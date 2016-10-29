(defpackage #:echo
  (:export #:main)
  (:use #:cl))

(in-package #:echo)

(defun main ()
  (format t "Arguments: ~a~%" (uiop:command-line-arguments))
  (format t "Raw arguments: ~a~%" (uiop:raw-command-line-arguments))
  (uiop:quit 0))
