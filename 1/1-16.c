#include <stdio.h>

// Basic implementation
int expt_iter(int b, int n) {
    int i, result = 1;
    for (i = 0; i < n; i++) {
        result = result * b;
    }
    return result;
}

// with squaring
int expt_fast(int in_b, int in_n) {
    int amount = 1, b = in_b, n = in_n;
    while (n > 0) {
        if (n % 2 == 0) {
            b = b * b;
            n = n / 2;
        }
        else {
            amount = amount * b;
            n--;
        }
    }
    return amount;
}

int main(void) {
    printf("%d", expt_fast(2, 9));
    return 0;
}
