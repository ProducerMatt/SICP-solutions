;; Exercise 1.3: Define a procedure that takes three numbers as arguments and
;; returns the sum of the squares of the two larger numbers.
#lang sicp
(#%require srfi/78)

(define (square x)
  (* x x))

(check (square 5) => 25)

;; Inelegant solution trying to stick by what's been covered so far
;; Definitely could be better
(define (sum-square-larger x y z)
  (define (returnanswer a b)
    (+ (square a)(square b)))
  (cond
    ((and (>= x y) (>= y z))
     (returnanswer x y))
    ((and (>= x y) (<= y z))
     (returnanswer x z))
    ((and (<= x y) (<= y z))
     (returnanswer y z))
    ((and (<= x y) (>= y z))
     (if (> x z)
         (returnanswer x y)
         (returnanswer y z)))))

(check (sum-square-larger 5 6 7) => 85)
(check (sum-square-larger 7 6 5) => 85)
(check (sum-square-larger 2 0 4) => 20)
(check (sum-square-larger 5 7 6) => 85)


;;;; Abandoned. Trying to force my normal ways of solving problems when I should start by learning the tools the book has introduced.
;; (define (sum-square-larger x y z)
;;   ((define a 0)(define b 0)
;;    (if (> x y)
;;        ((set a x)(set b y))
;;        ((set a y)(set b x)))
;;    (if (>= b z)
;;        ()
;;        (if (> a z)
;;            (set b z)
;;            ((set b a)
;;             (set a z))))
;;    (+ (square a) (square b))))
