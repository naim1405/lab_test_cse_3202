#include <stdio.h>	
#include <pthread.h>
#include <stdlib.h>


void* thread_func(void* args){
	int* n = (int *) args;
	printf("HELLO FROM THREAD - passed: %d\n", *n);
	int* allocated_mem = (int*) malloc(sizeof(int));
	*allocated_mem = 2 * (*n);
	return allocated_mem;


}

int main(){
	pthread_t t1,t2;
	int a = 100;
	int b = 200;
	pthread_create(&t1, NULL, &thread_func, &a);
	pthread_create(&t2, NULL, &thread_func, &b);

	int* a2;
	int* b2;
	
	pthread_join(t1, (void**)&a2);
	pthread_join(t2, (void**)&b2);

	printf("RETURNS %d\n", *a2);
	printf("RETURNS %d\n", *b2);
	return 0;

}
