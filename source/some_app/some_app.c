#include "some_lib.h"
#include <stdio.h>

int main(void) {
	int result = simple_square(7);
	printf("7^2=%d\n", result);
	
	int result2 = 0;
	result = simple_add(9, 7, &result2);
	printf("res=%d, res2=%d\n", result, result2);
	
	return 0;
}
