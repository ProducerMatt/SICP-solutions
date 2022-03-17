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
