compile:
	# hello.oを生成
	cd lib && gcc -c hello.c
	# libhello.aを生成
	ar rusv libhello.a lib/hello.o

build-c:
	# mainを生成
	gcc -o main main.c -L./lib -lhello

run-c:
	gcc -o main main.c -L. -lhello && ./main

run-cgo:
	go run main.go

clean:
	rm ./lib/hello.o libhello.a main
