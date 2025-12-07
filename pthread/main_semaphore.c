#include <stdio.h>	
#include <pthread.h>
#include <stdlib.h>
#include <semaphore.h>


sem_t Sem;

int N = 0;


void* thread_func(void* args){
	int n =*(int*) args; 

	for(int i =0; i < n; i++){
		sem_wait(&Sem);
		N++;
		sem_post(&Sem);
	}
	return  NULL;
}

int main(){
	pthread_t t1,t2;
	int x = 100000;
	
	if(sem_init(&Sem,0, 1) == -1){
		printf("SEMAPHOR ERR");
		return 0;

	};

	pthread_create(&t1, NULL, &thread_func, &x);
	pthread_create(&t2, NULL, &thread_func, &x);
	pthread_join(t1, NULL);
	pthread_join(t2, NULL);

	sem_destroy(&Sem);

	printf("FINAL N: %d\n", N);
	return 0;
}
