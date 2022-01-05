#include <stdio.h>
#include "../tools/tools.h"

int main(){
	int A[] = {5,4,3,2,1};
	printf("before: ");
	for(int i = 0; i < 5; i++){
		printf("%d ", A[i]);
	}
	printf("\n");
	
	bubbleSort(A,5);
	
	printf("after: ");
	for(int i = 0; i < 5; i++){
		printf("%d ", A[i]);
	}
	printf("\n");

	return 0;
}