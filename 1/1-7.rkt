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
(map sqrt '(0.1 0.01 0.001 0.0001 0.00001))

;; Weird behavior with larger numbers
(map sqrt '(10000000 100000000 1000000000 10000000000 10000000000))


(define (new-good-enough? guess x)
  (<
   (abs
    (- (square guess) x))
   0.001))

(trace good-enough?)
(trace new-good-enough?)
