compile:
	# hello.oを生成
	gcc -c hello.c
	# libhello.aを生成
	ar rusv libhello.a hello.o
	# mainを生成
	gcc -o main main.c -L. -lhello
