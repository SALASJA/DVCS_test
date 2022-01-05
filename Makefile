all: main main.dSYM
	./main
	
main.dSYM: main
	dsymutil -o main.dSYM main
	
main: main.o tools.o
	gcc -g -o main main.o tools.o

main.o: main.c
	gcc -g -c -o main.o main.c

tools.o: tools/tools.c
	gcc -g -c -o tools.o tools/tools.c

test_printArray_function: test_printArray test_printArray.dSYM
	./test_printArray

test_bubbleSort_function: test_bubbleSort test_bubbleSort.dSYM
	./test_bubbleSort

test_printArray.dSYM: test_printArray
	dsymutil -o test_printArray.dSYM test_printArray

test_bubbleSort.dSYM: test_bubbleSort
	dsymutil -o test_bubbleSort.dSYM test_bubbleSort

test_printArray: test_printArray.o tools.o
	gcc -g -o test_printArray test_printArray.o tools.o

test_bubbleSort: test_bubbleSort.o tools.o
	gcc -g -o test_bubbleSort test_bubbleSort.o tools.o

test_printArray.o: test/test_printArray.c
	gcc -g -c -o test_printArray.o test/test_printArray.c

test_bubbleSort.o: test/test_bubbleSort.c
	gcc -g -c -o test_bubbleSort.o test/test_bubbleSort.c
	
clean:
	@if [ -e main ]; then\
		rm main;\
	fi;\
	
	@if [ -e test_printArray ]; then\
		rm test_printArray;\
	fi;\
	
	@if [ -e test_bubbleSort ]; then\
		rm test_bubbleSort;\
	fi;\

	@if ls *.o ; then\
		rm *.o;\
	fi;\

	@if ls *.dSYM; then\
		rm -rf *.dSYM;\
	fi;\