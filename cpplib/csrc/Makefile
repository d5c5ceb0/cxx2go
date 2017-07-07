.PHONY: dotso dota test clean

dotso:
	g++ -Wall -g -std=c++0x -Wpedantic shared_lib.cpp -shared -fPIC -o libtest.so

dota:
	g++ -c shared_lib.cpp
	ar rc libtest.a shared_lib.o
	rm shared_lib.o

test:
	g++ -Wall -g -std=c++0x -Wpedantic main.cpp -L. -ltest -o main

clean:
	rm -rf libtest.* main
