package main

import "temp/cpplib/shared_lib"

func main() {
	t := shared_lib.NewTestClass()
	t.Test()
	shared_lib.DeleteTestClass(t)
}
