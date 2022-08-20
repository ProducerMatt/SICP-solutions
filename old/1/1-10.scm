;; Exercise 1.10: The following procedure computes a mathematical function
;; called Ackermann’s function.

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;; What are the values of the following expressions?

;; MattsDiary: I think I'm supposed to evaluate these by hand. (Last words of
;; man found dead at keyboard)

#|
;; (A 1 10)
(A (- 1 1)
   (A 1 (- 10 1)))
(A 0
   (A 1 9))
(A 0
   (A 0
      (A 0
         (A 0
            (A 0
               (A 0
                  (A 0
                     (A 0 2))))))))
;; ^ The human made an off-by-one error! Foolish meatbag!
|#

#|
;; (A 2 4)
(A 1
   (A 2 3))
(A 1
   (A 1
      (A 1
         (A 1 1))))
|#

#| This time the worthless meatbag got caught up in substituting x-- and forgot
to put the real x back in. Last sexp should be (A 2 1). It didn't matter this
time because x is used as a condition to end evaluation but never is used in the
value returned! This is probably the sort of thing that algorithm wizards notice
without running headfirst into it. |#

#|
;; (A 3 3)
(A 2
   (A 2
      (A 2
         (A 2 1))))
;; Cool! This one hangs! Great. :)
|#

#|
;; It was another off-by-one, what I should have written was:
(A 2
   (A 2
      (A 2 1)))
;; We really invented computers for a reason huh?
|#


;; Consider the following procedures, where A is the procedure defined above:

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

;; Give concise mathematical definitions for the functions computed by the
;; procedures f, g, and h for positive integer values of n. For example, (k n)
;; computes 5n^2.

#|

(f n) => 2n
(g n) => 2^n
(h n) => oh god. okay lets back up.

(map h '(1 2 3 4))
  => (2 4 16 65536)

These are each powers of the last one. So maybe it's raise 2 to the power of 2
as many times as n. I'm not sure how this is phrased.

multiplication is to exponentiation
as
exponentiation is to ... what?

TETRATION. Thank you internet.

Traditional notation is to put the superscript to the left but since there is no
superscript... |#

(define (tetra b p)
  (define (tetra-iter x c)
    (if (= c p)
        x
        (tetra-iter (expt b x) (+ c 1))))
  (cond ((= b 0) 0)
        ((= p 1) b)
        (else
         (tetra-iter b 1))))
;; (h n) => (tetra 2 n)
