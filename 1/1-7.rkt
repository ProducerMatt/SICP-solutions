;; Exercise 1.7: The good-enough? test used in computing square roots will not be
;; very effective for finding the square roots of very small numbers. Also, in real
;; computers, arithmetic operations are almost always performed with limited
;; precision. This makes our test inadequate for very large numbers. Explain these
;; statements, with examples showing how the test fails for small and large
;; numbers. An alternative strategy for implementing good-enough? is to watch how
;; guess changes from one iteration to the next and to stop when the change is a
;; very small fraction of the guess. Design a square-root procedure that uses this
;; kind of end test. Does this work better for small and large numbers?

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
  (< (abs (- (square guess) x)) 0.001))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))
;; }}

;; Demonstrating decreasing accuracy with smaller numbers.
;(map sqrt '(0.1 0.01 0.001 0.0001 0.00001))

;; 12 zeros can pass, but 13 loops forever because the threshold can't be
;; reached. I didn't try enough zeroes at first.
;(sqrt '(1000000000000 10000000000000))

;; Okay. New good enough should stop when the last guess and the new guess are
;; less than 1.0000000000001 times different. This will return appropriately
;; when there's floating point nonsense going on
(define (new-good-enough? guess lastguess)
  (<=
   (abs (-
         (/ lastguess guess)
         1))
   0.0000000000001))

;; (trace good-enough?)
;; (trace new-good-enough?)

;; (check (new-good-enough? 1000000.0000000054 1000000) => #t)

(define (new-sqrt-iter guess x lastguess)
  (if (new-good-enough? guess lastguess)
      guess
      (new-sqrt-iter (improve guess x) x guess)))
(define (new-sqrt x)
  (new-sqrt-iter 1.0 x 0))

;; No infinite loop!
(check (new-sqrt 10000000000000) => 3162277.6601683795)
