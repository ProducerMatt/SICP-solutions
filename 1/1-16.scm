#|Exercise 1.16: Design a procedure that evolves an iterative exponentiation
process that uses successive squaring and uses a logarithmic number of steps, as
does fast-expt. (Hint: Using the observation that (b^{n/2})^{2}=(b^{2})^{n/2},
keep, along with the exponent n and the base b, an additional state variable a,
and define the state transformation in such a way that the product a*b^{n} is
unchanged from state to state. At the beginning of the process a is taken to be
1, and the answer is given by the value of a at the end of the process. In
general, the technique of defining an invariant quantity that remains unchanged
from state to state is a powerful way to think about the design of iterative
algorithms.)|#

(define (square x)
  (* x x))

(define (expt n b)
  (expt-fast-iter n b 1))

;; Attempt 1. A monument to hubris.
;;
;; scheme@(guile-user)> (expt 2 2)
;; $6 = 4
;; scheme@(guile-user)> (expt 2 3)
;; $7 = 8
;; scheme@(guile-user)> (expt 2 4)
;; $8 = 32
;; scheme@(guile-user)> (expt 2 5)
;; $9 = 32
;; scheme@(guile-user)> (expt 2 6)
;; $10 = 512
;; scheme@(guile-user)> (expt 2 7)
;; $11 = 128
;; scheme@(guile-user)> (expt 2 8)
;; $12 = 2048
#|
(define (expt-fast-iter b n a)
  (cond ((= n 0) a)
        ;; ((= a 1) and don't get me started on this.
        ;;  (expt-fast-iter b (- n 1) (* b b)))
        ((and (even? n) (> a 1))
         (expt-fast-iter b (/ n 2) (square a)))
        (else
         (expt-fast-iter b (- n 1) (* b a)))))
|#

;; Attempt 2
(define (expt-fast-iter b n a)
  (cond ((= n 0) a)
        ((even? n)
         (expt-fast-iter (square b) (/ n 2) a))
        (else
         (expt-fast-iter b (- n 1) (* b a)))))

;; Success! Most time was spent grokking the $ab^n$ relationship. Once that was
;; isolated it was clear that $$ab^n = a(b^2)^{n/2}$$ which can be repeatedly
;; evolved to get Theta(log n)
