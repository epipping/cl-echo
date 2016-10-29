This code illustrates how ASDF-3 for Common Lisp makes it easy to
- access command line arguments and
- create a standalone executable.

To get going, run e.g.

```shell
ccl --no-init --batch < build.lisp
cmucl -noinit -nositeinit -batch < build.lisp
ecl --norc --shell build.lisp
lispworks-console -build build.lisp
sbcl --no-sysinit --no-userinit --script build.lisp
```

This should leave you with a standalone executable named `echo` in
the current directory, which you can then run like this:
```shell
% ./echo arg1 arg2 arg3
Arguments: (arg1 arg2 arg3)
Raw arguments: (./echo arg1 arg2 arg3)
%
```