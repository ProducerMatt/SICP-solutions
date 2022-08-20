;; Exercise 1.20: The process that a procedure generates is of course dependent
;; on the rules used by the interpreter. As an example, consider the iterative
;; gcd procedure given above. Suppose we were to interpret this procedure using
;; normal-order evaluation, as discussed in 1.1.5. (The normal-order-evaluation
;; rule for if is described in Exercise 1.5.) Using the substitution method (for
;; normal order), illustrate the process generated in evaluating (gcd 206 40)
;; and indicate the remainder operations that are actually performed. How many
;; remainder operations are actually performed in the normal-order evaluation of
;; (gcd 206 40)? In the applicative-order evaluation?

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

#|

;; Applicative order {
call (gcd 206 40)
(if)
(gcd 40 (remainder 206 40))
eval remainder before call
call (gcd 40 6)
(if)
(gcd 6 (remainder 40 6))
eval remainder before call
call (gcd 6 4)
(if)
(gcd 2 (remainder 4 2))
eval remainder before call
call (gcd 2 0)
(if)
=> 2
;; }

;; Normal order (INCORRECT) {
(gcd 206 40)
(if)
call (gcd 40 (remainder 206 40))
encounter (if)
forced to eval remainder
(gcd 40 6)
(if)
call (gcd 6 (remainder 40 6))
encounter (if)
forced to eval remainder
(gcd 6 4)
(if)
call (gcd 2 (remainder 4 2))
encounter (if)
forced to eval remainder
(gcd 2 0)
(if)
=> 2
;; }

|#
;; So it appears to me that remainder is evaluated the same number of times, but
;; for different reasons.

;; ... I was incorrect. Normal order will nest operations over and over, because
;; it's called to evaluate the "if" but not the consequent.

#|
call (gcd 206 40)

(if (= 40 0)

expand gcd
(gcd 40 (remainder 206 40)))

(if (= (remainder 206 40) 0))

forced to eval conditional (1 remainder)
(if (= 6 0))

expand gcd
(gcd (remainder 206 40) (remainder 40 (remainder 206 40))))

(if (= (remainder 40 (remainder 206 40)) 0)

forced to eval conditional (2 remainder)
(if (= 4 0))

expand gcd
(gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40)(remainder 40 (remainder 206 40)))))

(if (= (remainder (remainder 206 40)(remainder 40 (remainder 206 40))) 0)

forced to eval conditional (4 remainder)
(if (= 2 0))

expand gcd
(gcd (remainder (remainder 206 40)(remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40)(remainder 40 (remainder 206 40))))))

(if (= (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40)(remainder 40 (remainder 206 40)))) 0))

forced to eval conditional (7 remainder)
(if (= 0 0))

eval consequent (4 remainders)
(remainder (remainder 206 40)(remainder 40 (remainder 206 40)))
|#

;; In normal-order eval, remainder is called 18 times, while in applicative order it's called 5 times.
