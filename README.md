# cxx2go
use SWIG to call c/c++ code by go.

just for linux

*clib* is the C codes. *cpplib* is the Cpp codes.
to build the just use:

* c shared library
```
$ cd clib/
$ . build.sh dotso
$ ./clib
```

* c static library
```
$ cd clib/
$ . build.sh dota
$ ./clib
```

* cpp shared library
```
$ cd cpplib/
$ . build.sh dotso
$ ./cpplib
```

* cpp static library
```
$ cd cpplib/
$ . build.sh dota
$ ./cpplib
```
