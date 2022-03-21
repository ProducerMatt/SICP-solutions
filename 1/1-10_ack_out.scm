scheme@(guile-user)> ,tp A
Trap 0: Tracepoint at #<procedure A (x y)>.
scheme@(guile-user)> (A 2 1)
Trap 0: (A 2 1)
Trap 0: 2
$4 = 2
scheme@(guile-user)> (A 2 2)
Trap 0: (A 2 2)
Trap 0: |  (A 2 1)
Trap 0: |  2
Trap 0: |  (A 1 2)
Trap 0: |  |  (A 1 1)
Trap 0: |  |  2
Trap 0: |  |  (A 0 2)
Trap 0: |  |  4
Trap 0: |  4
Trap 0: 4
$5 = 4
scheme@(guile-user)> (A 2 3)
Trap 0: (A 2 3)
Trap 0: |  (A 2 2)
Trap 0: |  |  (A 2 1)
Trap 0: |  |  2
Trap 0: |  |  (A 1 2)
Trap 0: |  |  |  (A 1 1)
Trap 0: |  |  |  2
Trap 0: |  |  |  (A 0 2)
Trap 0: |  |  |  4
Trap 0: |  |  4
Trap 0: |  4
Trap 0: |  (A 1 4)
Trap 0: |  |  (A 1 3)
Trap 0: |  |  |  (A 1 2)
Trap 0: |  |  |  |  (A 1 1)
Trap 0: |  |  |  |  2
Trap 0: |  |  |  |  (A 0 2)
Trap 0: |  |  |  |  4
Trap 0: |  |  |  4
Trap 0: |  |  |  (A 0 4)
Trap 0: |  |  |  8
Trap 0: |  |  8
Trap 0: |  |  (A 0 8)
Trap 0: |  |  16
Trap 0: |  16
Trap 0: 16
$6 = 16
scheme@(guile-user)> (A 2 4)
Trap 0: (A 2 4)
Trap 0: |  (A 2 3)
Trap 0: |  |  (A 2 2)
Trap 0: |  |  |  (A 2 1)
Trap 0: |  |  |  2
Trap 0: |  |  |  (A 1 2)
Trap 0: |  |  |  |  (A 1 1)
Trap 0: |  |  |  |  2
Trap 0: |  |  |  |  (A 0 2)
Trap 0: |  |  |  |  4
Trap 0: |  |  |  4
Trap 0: |  |  4
Trap 0: |  |  (A 1 4)
Trap 0: |  |  |  (A 1 3)
Trap 0: |  |  |  |  (A 1 2)
Trap 0: |  |  |  |  |  (A 1 1)
Trap 0: |  |  |  |  |  2
Trap 0: |  |  |  |  |  (A 0 2)
Trap 0: |  |  |  |  |  4
Trap 0: |  |  |  |  4
Trap 0: |  |  |  |  (A 0 4)
Trap 0: |  |  |  |  8
Trap 0: |  |  |  8
Trap 0: |  |  |  (A 0 8)
Trap 0: |  |  |  16
Trap 0: |  |  16
Trap 0: |  16
Trap 0: |  (A 1 16)
Trap 0: |  |  (A 1 15)
Trap 0: |  |  |  (A 1 14)
Trap 0: |  |  |  |  (A 1 13)
Trap 0: |  |  |  |  |  (A 1 12)
Trap 0: |  |  |  |  |  |  (A 1 11)
Trap 0: |  |  |  |  |  |  |  (A 1 10)
Trap 0: |  |  |  |  |  |  |  |  (A 1 9)
Trap 0: |  |  |  |  |  |  |  |  |  (A 1 8)
Trap 0: |  |  |  |  |  |  |  |  |  |  (A 1 7)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  (A 1 6)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  (A 1 5)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  (A 1 4)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  14> (A 1 3)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  15> (A 1 2)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  16> (A 1 1)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  16< 2
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  16> (A 0 2)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  16< 4
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  15< 4
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  15> (A 0 4)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  15< 8
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  14< 8
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  14> (A 0 8)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  14< 16
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  16
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  (A 0 16)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  |  32
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  32
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  (A 0 32)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  |  64
Trap 0: |  |  |  |  |  |  |  |  |  |  |  64
Trap 0: |  |  |  |  |  |  |  |  |  |  |  (A 0 64)
Trap 0: |  |  |  |  |  |  |  |  |  |  |  128
Trap 0: |  |  |  |  |  |  |  |  |  |  128
Trap 0: |  |  |  |  |  |  |  |  |  |  (A 0 128)
Trap 0: |  |  |  |  |  |  |  |  |  |  256
Trap 0: |  |  |  |  |  |  |  |  |  256
Trap 0: |  |  |  |  |  |  |  |  |  (A 0 256)
Trap 0: |  |  |  |  |  |  |  |  |  512
Trap 0: |  |  |  |  |  |  |  |  512
Trap 0: |  |  |  |  |  |  |  |  (A 0 512)
Trap 0: |  |  |  |  |  |  |  |  1024
Trap 0: |  |  |  |  |  |  |  1024
Trap 0: |  |  |  |  |  |  |  (A 0 1024)
Trap 0: |  |  |  |  |  |  |  2048
Trap 0: |  |  |  |  |  |  2048
Trap 0: |  |  |  |  |  |  (A 0 2048)
Trap 0: |  |  |  |  |  |  4096
Trap 0: |  |  |  |  |  4096
Trap 0: |  |  |  |  |  (A 0 4096)
Trap 0: |  |  |  |  |  8192
Trap 0: |  |  |  |  8192
Trap 0: |  |  |  |  (A 0 8192)
Trap 0: |  |  |  |  16384
Trap 0: |  |  |  16384
Trap 0: |  |  |  (A 0 16384)
Trap 0: |  |  |  32768
Trap 0: |  |  32768
Trap 0: |  |  (A 0 32768)
Trap 0: |  |  65536
Trap 0: |  65536
Trap 0: 65536
$3 = 65536
