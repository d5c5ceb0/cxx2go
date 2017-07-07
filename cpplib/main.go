package main

import "github.com/d5c5ceb0/cxx2go/cpplib/shared_lib"

func main() {
	t := shared_lib.NewTestClass()
	t.Test()
	shared_lib.DeleteTestClass(t)
}
