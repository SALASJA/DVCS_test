#include "tools.h"

void printArray(int * A, int size){
	for(int i = 0; i < size; i++){
		printf("%d ", A[i]);
	}
	printf("\n");
}


void bubbleSort(int * A, int size){
	bool sorted = false;
	while(!sorted){
		sorted = true;
		for(int i = 0; i < size; i++){
			if(A[i] > A[i + 1]){
				int temp = A[i];
				A[i] = A[i + 1];
				A[i + 1] = temp;
				sorted = false;
			}
		}
	}
}