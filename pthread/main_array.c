#include <stdio.h>	
#include <pthread.h>
#include <stdlib.h>


void* thread_func(void* args){
	int* arr = (int*) args;
	int* result = (int*) malloc(2 * sizeof(int));
	*result = 2 * (*arr);
	arr++;
	result++;
	*result = 2 * (*arr);
	result--;
	return result;
}

int main(){
	pthread_t t1,t2;
	int a[] = {1,2};
	int b[] = {5,6};
	pthread_create(&t1, NULL, &thread_func, a);
	pthread_create(&t2, NULL, &thread_func, b);

	int* a2;
	int* b2;
	
	pthread_join(t1, (void**)&a2);
	pthread_join(t2, (void**)&b2);

	printf("RETURNS %d\n", *a2);
	printf("RETURNS %d\n", *b2);

	a2++;b2++;
	printf("RETURNS %d\n", *a2);
	printf("RETURNS %d\n", *b2);
	return 0;

}
