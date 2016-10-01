This code illustrates how a standalone executable can be built with
ASDF3.

To get going, run e.g.

```shell
ccl --no-init --batch < build.lisp
cmucl -noinit -nositeinit -batch < build.lisp
ecl --norc --shell build.lisp
lispworks-console -build build.lisp
sbcl --no-sysinit --no-userinit --script build.lisp
```
