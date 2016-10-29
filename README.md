This code was originally meant to illustrate how ASDF-3 for Common Lisp makes it easy to
- access command line arguments and
- create a standalone executable.

It has now been made to show also how the `command-line-arguments`
library makes it easy to parse options contained in the command line
arguments.

To get going, first make sure that `command-line-arguments` (the sole
dependency of this project) is installed in such a way that your
compiler will be able to find it. If you're using quicklisp, this
could mean setting the environment variable

```shell
$ export CL_SOURCE_REGISTRY=$HOME/quicklisp/dists/quicklisp/software/command-line-arguments-20151218-git/
```

You can then run, e.g.

```shell
ccl --no-init --batch < build.lisp
cmucl -noinit -nositeinit -batch < build.lisp
ecl --norc --shell build.lisp
lispworks-console -build build.lisp
sbcl --no-sysinit --no-userinit --script build.lisp
```

to build an executable named fancy-echo in the current directory. It can be run e.g. as follows:
```shell
% ./fancy-echo -bw --check foo bar buz
Before parsing: (-bw --check foo bar buz)
After parsing...
 regular-arguments: (bar buz)
 b: T,
 check: foo,
 warn: T
%
```
