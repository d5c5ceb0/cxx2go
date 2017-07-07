#!/bin/sh

rm -r clib
make -C ./csrc clean
make -C ./test clean

echo $1
# $1 : {dotso, dota}
#'dotso' for shared library
#'dota' for static librar
make -C ./csrc $1
cp ./csrc/libtest.* ./csrc/test.h test

make -C ./test

sed -i '/^package/{n;d}' test/test.go
sed -i '/^package/a\*/' test/test.go
sed -i '/^package/a\#cgo LDFLAGS: -L./test -L. -L../test -ltest' test/test.go
sed -i '/^package/a\#cgo CFLAGS: -I ./test -I . -I ../test' test/test.go
sed -i '/^package/a\/*' test/test.go
sed -i '/^package/a\\n' test/test.go

go build

export LD_LIBRARY_PATH=$GOPATH/src/github.com/d5c5ceb0/cxx2go/clib/test




