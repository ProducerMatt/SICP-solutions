#if 0
if [ "$1" != opt ]; then
  echo "Debug build"
  /home/matt/.local/cosmo/o/third_party/gcc/bin/x86_64-linux-musl-gcc -g -Og -Wall -fsanitize=address -fsanitize=undefined -static -fno-pie -no-pie -mno-red-zone -nostdlib -nostdinc -fno-omit-frame-pointer -pg -mnop-mcount -o 1-16.com.dbg 1-16.c -Wl,--gc-sections -fuse-ld=bfd -Wl,--script=/home/matt/.local/cosmo/o/dbg/ape/ape.lds  -include /home/matt/.local/cosmo/o/cosmopolitan.h /home/matt/.local/cosmo/o/dbg/libc/crt/crt.o /home/matt/.local/cosmo/o/dbg/ape/ape.o /home/matt/.local/cosmo/o/dbg/cosmopolitan.a -fdebug-prefix-map=/home/matt/.local/cosmo=
  exec objcopy -S -O binary 1-16.com.dbg 1-16.com
else
  echo "Optimized build"
  /home/matt/.local/cosmo/o/third_party/gcc/bin/x86_64-linux-musl-gcc -O3 -Wall -fsanitize=address -fsanitize=undefined -static -fno-pie -no-pie -mno-red-zone -nostdlib -nostdinc -o 1-16_opt.com.dbg 1-16.c -Wl,--gc-sections -fuse-ld=bfd -Wl,--script=/home/matt/.local/cosmo/o/dbg/ape/ape.lds  -include /home/matt/.local/cosmo/o/cosmopolitan.h /home/matt/.local/cosmo/o/dbg/libc/crt/crt.o /home/matt/.local/cosmo/o/dbg/ape/ape.o /home/matt/.local/cosmo/o/dbg/cosmopolitan.a &&
  objcopy -S -O binary 1-16_opt.com.dbg 1-16_opt.com
  exec rm 1-16_opt.com.dbg
fi
#endif

//#include "/home/matt/.local/cosmo/o/cosmopolitan.h"
#ifndef __COSMOPOLITAN__
    #include <stdio.h>
#endif

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
