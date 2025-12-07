#include <stdio.h>	
#include <pthread.h>
#include <stdlib.h>


struct ARR{
	int* start_addr;
	int* end_addr;
};


// 1 2 3 4 5 6

void* thread_func(void* args){
	struct ARR* arg = (struct ARR*) args;
	int result = 0;
	int* result_mem = (int*) malloc(sizeof(int));
	while(arg->start_addr < arg->end_addr){
		result += *arg->start_addr;
		arg->start_addr++;
	}
	*result_mem = result;
	return result_mem;


}

int main(){
	pthread_t t1,t2;
	int n = 10;
	int arr[10] = {1,2,3,4,5,6,7,8,9,10};
	struct ARR arg1, arg2 ;

	arg1.start_addr = arr;
	arg1.end_addr = arr + (n /2);
	pthread_create(&t1, NULL, &thread_func, &arg1);

	arg2.start_addr= arr + (n /2);
	arg2.end_addr = arr + n;
	pthread_create(&t2, NULL, &thread_func, &arg2);

	int* res1;
	int* res2; 

	pthread_join(t1,  (void**)&res1);
	pthread_join(t2,  (void**)&res2);

	int result = *res1 + *res2;
	printf("SUM: %d\n", result);



	

	return 0;

}
