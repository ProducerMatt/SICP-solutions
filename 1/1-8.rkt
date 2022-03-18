#|
Exercise 1.8: Newton’s method for cube roots is based on the fact that if y is
an approximation to the cube root of x , then a better approximation is given
by the value ((x/y^2+2y)/3). Use this formula to implement a cube-root procedure
analogous to the square-root procedure. (In 1.3.4 we will see how to implement
Newton’s method in general as an abstraction of these square-root and cube-root
procedures.)
|#

#lang sicp
(#%require racket/trace)
(#%require srfi/78)

;; DEFINITIONS {{
(define (average x y)
  (/ (+ x y) 2))
(define (abs x)
  (if (< x 0)
      (- x)
      x))
(define (square x)
  (* x x))
(define (mean-square x y)
  (average (square x) (square y)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
  (= (improve guess x) guess)) 
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))
;; }}

;; Try 1 with limiter to stop infinite loops
;; here be hacks
#|
(define counter 0)
(define (cb-good-enough? guess x)
  (= (cb-improve guess x) guess)) 
(define (cb-improve guess x)
  (/
   (+
    (/ x (square guess))
    (* guess 2))
   3))
(define (cbrt-iter guess x)
  (if (or (cb-good-enough? guess x) (> counter 100))
      guess
      (begin
        (set! counter (+ counter 1))
        (cbrt-iter (cb-improve guess x) x))))
(define (cbrt x)
  (set! counter 0)
  (cbrt-iter 1.0 x))
|#

#| MattsDiary: Looking more at this, the operation gets stuck in an infinite
loop on (cbrt 100), I'm going to guess that the equation in cb-improve takes
more precision than is possible, so it begins to output inconsistent results. Of
course some floating point problems will never have a great solution, but does
this one?

Potential solutions:
- I could implement an arbitrary threshold like my 1st solution to 1-7, that
would prevent the issue, but then it would no longer be possible to reach
perfect precision.
- I could keep track of the guess before the last, and if it occurs again, we'll
know we've entered a loop.
- Something more big brained I haven't thought of.

MattsDiary: I guess the 2nd solution is best. I'll give that a shot though I'm
sure there's a better way to do it, which I'll find out when I look up the
solution. |#

(define (cb-good-enough? nextguess guess lastguess x)
  (or (= nextguess guess)
      (= nextguess lastguess)))
(define (cb-improve guess x)
  (/
   (+
    (/ x (square guess))
    (* guess 2))
   3))
(define (cbrt-iter guess lastguess x)
  (define nextguess (cb-improve guess x))
  (if (cb-good-enough? nextguess guess lastguess x)
      nextguess
      (cbrt-iter nextguess guess x)))
(define (cbrt x)
  (cbrt-iter 1.0 9999 x))
