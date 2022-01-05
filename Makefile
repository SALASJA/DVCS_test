all: main main.dSYM
	./main
	
main.dSYM: main
	dsymutil -o main.dSYM main
	
main: main.o
	gcc -g -o main main.o

main.o: main.c
	gcc -g -c -o main.o main.c

clean:
	@if [ -e main ]; then\
		rm main;\
	fi;\

	@if ls *.o ; then\
		rm *.o;\
	fi;\

	@if ls *.dSYM; then\
		rm -rf *.dSYM;\
	fi;\