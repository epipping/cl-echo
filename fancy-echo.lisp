(defpackage #:fancy-echo
  (:export #:main)
  (:use #:cl))

(in-package #:fancy-echo)

(defparameter +command-line-spec+
  '(((#\b)
     :type boolean
     :optional t
     :documentation "what optional -b flag does")
    (("warn" "warning" #\w)
     :type boolean
     :optional t
     :documentation "multiple long/short options can be combined")
    (("check")
     :type string
     :optional t
     :documentation "an option can take a string argument")))

(defun process-arguments (regular-arguments &key b check warn)
  (format t "After parsing...
 regular-arguments: ~a
 b: ~a,
 check: ~a,
 warn: ~a~%"
          regular-arguments b check warn))

(defun foo (&rest r)
  (format t "all the rest: ~a~%" r))

(defun main ()
  (let ((unprocessed-arguments (uiop:command-line-arguments)))
    (format t "Before parsing: ~a~%" unprocessed-arguments)
    (command-line-arguments:handle-command-line
     +command-line-spec+
     'process-arguments
     :command-line unprocessed-arguments
     :name "my-program"
     :positional-arity 0
     :rest-arity t)))
