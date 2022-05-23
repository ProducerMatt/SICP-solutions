#if 0
if [ "$1" != opt ]; then
  echo "Debug build"
  /home/matt/.local/cosmo/o/third_party/gcc/bin/x86_64-linux-musl-gcc -g -Og -Wall -fsanitize=address -fsanitize=undefined -static -fno-pie -no-pie -mno-red-zone -nostdlib -nostdinc -fno-omit-frame-pointer -pg -mnop-mcount -o 1-19.com.dbg 1-19.c -Wl,--gc-sections -fuse-ld=bfd -Wl,--script=/home/matt/.local/cosmo/o/dbg/ape/ape.lds  -include /home/matt/.local/cosmo/o/cosmopolitan.h /home/matt/.local/cosmo/o/dbg/libc/crt/crt.o /home/matt/.local/cosmo/o/dbg/ape/ape.o /home/matt/.local/cosmo/o/dbg/cosmopolitan.a -fdebug-prefix-map=/home/matt/.local/cosmo= &&
  exec objcopy -S -O binary 1-19.com.dbg 1-19.com
else
  echo "Optimized build"
  /home/matt/.local/cosmo/o/third_party/gcc/bin/x86_64-linux-musl-gcc -O3 -Wall -fsanitize=address -fsanitize=undefined -static -fno-pie -no-pie -mno-red-zone -nostdlib -nostdinc -o 1-19_opt.com.dbg 1-19.c -Wl,--gc-sections -fuse-ld=bfd -Wl,--script=/home/matt/.local/cosmo/o/dbg/ape/ape.lds  -include /home/matt/.local/cosmo/o/cosmopolitan.h /home/matt/.local/cosmo/o/dbg/libc/crt/crt.o /home/matt/.local/cosmo/o/dbg/ape/ape.o /home/matt/.local/cosmo/o/dbg/cosmopolitan.a &&
  objcopy -S -O binary 1-19_opt.com.dbg 1-19_opt.com &&
  exec rm 1-19_opt.com.dbg
fi
#endif

#ifndef __COSMOPOLITAN__
    #include <stdio.h>
#endif

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
