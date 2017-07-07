.PHONY : dotso dota test


dotso: 
	gcc test.c -fPIC -shared -o libtest.so
dota:
	gcc -c test.c
	ar rc libtest.a test.o
	rm test.o
test:
	gcc main.c -I. -L. -ltest -o main
clean:
	rm -rf libtest.* main	

