#include <stdio.h>
#include <stdlib.h>

unsigned int sum_of_digits(long int num) {
    int sum = 0;
    while (num > 9) {
	      sum += num % 10;
      	num = num / 10;
    }
	  return sum + num;
}

long int n;
unsigned int k; 

int main () {  
	scanf("%li", &n);
	
  while (n > 0) {
    n = n - sum_of_digits(n);
    k++;
    printf("n: %li, sum_of_digits: %u, k: %u\n", n, sum_of_digits(n), k); 
  }
  
	printf("%u", k);	
}