#if 0
if [ "$1" != opt ]; then
  echo "Debug build"
  /home/matt/.local/cosmo/o/third_party/gcc/bin/x86_64-linux-musl-gcc -g -Og -Wall -fsanitize=address -fsanitize=undefined -static -fno-pie -no-pie -mno-red-zone -nostdlib -nostdinc -fno-omit-frame-pointer -pg -mnop-mcount -o 1-39.com.dbg 1-39.c -Wl,--gc-sections -fuse-ld=bfd -Wl,--script=/home/matt/.local/cosmo/o/dbg/ape/ape.lds  -include /home/matt/.local/cosmo/o/cosmopolitan.h /home/matt/.local/cosmo/o/dbg/libc/crt/crt.o /home/matt/.local/cosmo/o/dbg/ape/ape.o /home/matt/.local/cosmo/o/dbg/cosmopolitan.a -fdebug-prefix-map=/home/matt/.local/cosmo=
  exec objcopy -S -O binary 1-39.com.dbg 1-39.com
else
  echo "Optimized build"
  /home/matt/.local/cosmo/o/third_party/gcc/bin/x86_64-linux-musl-gcc -O3 -Wall -fsanitize=address -fsanitize=undefined -static -fno-pie -no-pie -mno-red-zone -nostdlib -nostdinc -o 1-39_opt.com.dbg 1-39.c -Wl,--gc-sections -fuse-ld=bfd -Wl,--script=/home/matt/.local/cosmo/o/dbg/ape/ape.lds  -include /home/matt/.local/cosmo/o/cosmopolitan.h /home/matt/.local/cosmo/o/dbg/libc/crt/crt.o /home/matt/.local/cosmo/o/dbg/ape/ape.o /home/matt/.local/cosmo/o/dbg/cosmopolitan.a &&
  objcopy -S -O binary 1-39_opt.com.dbg 1-39_opt.com
  exec rm 1-39_opt.com.dbg
fi
#endif

//#include "/home/matt/.local/cosmo/o/cosmopolitan.h"
#ifndef __COSMOPOLITAN__
    #include <stdio.h>
    #include <stdlib.h>
#endif

double n(int i, double x) {
  if (i == 1) {
    return x;
  } else {
    return x * x;
  }
}
double d(int i) {
  return (double)i * 2 - 1;
}

int main(int argc, char *argv[]) {
  //    ShowCrashReports(); // cosmo debugger
  if (argc != 3) {
    printf("Nope!");
    exit(1);
  }

  double x = atof(argv[1]);
  int k = atoi(argv[2]);
  //printf("x %d k %d\n", x, k); //DEBUG

  //printf("n %f d %f\n", n(k, x), d(k)); //DEBUG

  double val = n(k, x) / d(k);
  //printf("n(%d) / d(%d)\n    %.20g\n", k, k, val); //DEBUG
  int i;
  for (i = k-1; i > 0; i--) {
    //double oldval = val; //DEBUG
    val = n(i, x) / (d(i) - val);
    //printf("n(%d) / (d(%d) - %.20g)\n    %.20g\n", i, i, oldval, val); //DEBUG
  }
  printf("tan(%g) approximated %d times:\n    %.20g\n", x, k, val);

  return 0;
}
