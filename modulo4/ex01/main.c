#include <stdio.h>
#include "asm.h"

int main(){
	int x = 5;
	int total;
    
  total = cube(x);

	printf("%d^3 = %d, ", x,total);

  return 0;
}