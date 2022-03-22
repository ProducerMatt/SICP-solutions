;; Exercise 1.13: Prove that Fib(n) is the closest integer to (Phi^n)/sqrt(5)
;; where Phi is ((1 + sqrt(5)) / 2). Hint: let Upsilon = ((1 - sqrt(5)) /2). Use
;; induction and the definition of the Fibonacci numbers to prove that
;;
;;  Fib(n) = (Phi^n - Upsilon^n) / sqrt(5)
;;
;; I don't know how to write a proof yet, but I can make functions to
;; demonstrate it!

(load "defs.scm")

(define phi
  (/ (+ 1 (sqrt 5)) 2))
(define upsilon
  (/ (- 1 (sqrt 5)) 2))

(define (closeto n)
  (/ (expt phi n)
     (sqrt 5)))
(define (equalto n)
  (/ (- (expt phi n)
        (expt upsilon n))
     (sqrt 5)))

(define (testit n)
  (newline)
  (display "Fib(")
  (write n)
  (display "): ")
  (write (fib n))
  (newline)
  (display "Phi^(")
  (write n)
  (display ")/sqrt(5): ")
  (write (closeto n))
  (newline)
  (display "Phi^(")
  (write n)
  (display ") - Upsilon^(")
  (write n)
  (display ")/sqrt(5): ")
  (write (equalto n)))

(testit 3)
(testit 5)
(testit 9)

;; Fib(3): 2
;; Phi^(3)/sqrt(5): 1.8944271909999157
;; Phi^(3) - Upsilon^(3)/sqrt(5): 2.0
;; Fib(5): 5
;; Phi^(5)/sqrt(5): 4.959674775249769
;; Phi^(5) - Upsilon^(5)/sqrt(5): 5.0
;; Fib(9): 34
;; Phi^(9)/sqrt(5): 33.9941166289984
;; Phi^(9) - Upsilon^(9)/sqrt(5): 34.0
