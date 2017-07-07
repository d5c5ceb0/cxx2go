# cxx2go
use SWIG to call c/c++ code by go.

just for linux

*clib* is the C codes. *cpplib* is the Cpp codes.
to build the just use:

* c shared library
```
$ cd clib/
$ . build dotso
$ ./clib
```

* c static library
```
$ cd clib/
$ . build dota
$ ./clib
```

* cpp shared library
```
$ cd cpplib/
$ . build dotso
$ ./cpplib
```

* cpp static library
```
$ cd cpplib/
$ . build dota
$ ./cpplib
```
