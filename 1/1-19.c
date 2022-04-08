#include <stdio.h>

#define CALC_A(a, b, p, q) ((b * q) + (a * q) + (a * p))
#define CALC_B(a, b, p, q) ((b * p) + (a * q))

unsigned long long int fib(unsigned int n){
    unsigned long long int a = 1;
    unsigned long long int b = 0;
    unsigned int p = 0;
    unsigned int q = 1;
    unsigned int i = n;
    unsigned long long int scratchx, scratchy;

    while (i > 1) {
        if (i % 2 == 0) {
            scratchx = CALC_B(q, p, p, q);
            scratchy = CALC_A(q, p, p, q);
            p = (unsigned int)scratchx;
            q = (unsigned int)scratchy;
            i = i / 2;
        }
        else {
            scratchx = CALC_A(a, b, p, q);
            scratchy = CALC_B(a, b, p, q);
            a = scratchx;
            b = scratchy;
            i--;
        }
    }
    return CALC_B(a, b, p, q);
}
int main(void) {
    printf("%llu", fib(50));
    return 0;
}
