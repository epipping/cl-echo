This code serves two purposes:

 - To illustrate how a standalone executable can be built with ASDF3
 - To showcase a bug in the interaction of ASDF and CMUCL

For the latter, please see also

  https://bugs.launchpad.net/asdf/+bug/1607988
  https://gitlab.common-lisp.net/cmucl/cmucl/issues/29
  https://gitlab.common-lisp.net/xcvb/cl-launch/issues/2

To get going, run e.g.

```shell
sbcl --eval '(require :asdf)' --load build.lisp --quit
```

or
```shell
cmucl -eval '(require :asdf)' -load build-cmucl.lisp -eval '(quit)'
```
