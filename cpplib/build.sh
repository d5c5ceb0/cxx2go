#!/bin/sh

rm -rf cpplib
make -C ./csrc clean
make -C ./shared_lib clean

make -C ./csrc $1
cp ./csrc/libtest.* ./csrc/shared_lib.hpp shared_lib
make -C ./shared_lib

sed -i '/^package/{n;d}' shared_lib/shared_lib.go
sed -i '/^package/a\*/' shared_lib/shared_lib.go
sed -i '/^package/a\#cgo LDFLAGS: -L. -L./shared_lib -ltest' shared_lib/shared_lib.go
sed -i '/^package/a\#cgo CFLAGS: -I.' shared_lib/shared_lib.go
sed -i '/^package/a\/*' shared_lib/shared_lib.go
sed -i '/^package/a\\n' shared_lib/shared_lib.go

go build

export LD_LIBRARY_PATH=$GOPATH/src/github.com/d5c5ceb0/cxx2go/cpplib/shared_lib
