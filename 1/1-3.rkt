;; Exercise 1.3: Define a procedure that takes three numbers as arguments and
;; returns the sum of the squares of the two larger numbers.
#lang sicp
(#%require srfi/78)

(define (square x)
  (* x x))

(check (square 5) => 25)
#|
;; Solution 1, without consulting guides
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
|#
#|
MattsDiary
I called "returnanswer" which was a nondescriptive name. Online solutions
 use "squareSum" which makes more sense, and is more in line with
 SICP's emphasis on modularity.
In S1 I thought very procedurally. Good solutions identify three cases:
 x & y, x & z, and y & z. Then select among those.

A solution I liked the most that chooses based on the smallest number:
 IF (x <= y) AND (x <= z) then x is smallest, therefore RETURN y z
 IF (y <= x) AND (y <= z) then y is smallest, RETURN x z
 ELSE z must be smallest, RETURN x y
|#

;; Solution 2, consulting the internet.
(define (squareSum a b)
  (+ (square a)(square b)))
(define (sum-square-larger x y z)
  (cond ((and (<= x y)(<= x z)) (squareSum y z))
        ((and (<= y x)(<= y z)) (squareSum x z))
        (else (squareSum x y))))

(check (sum-square-larger 5 6 7) => 85)
(check (sum-square-larger 7 6 5) => 85)
(check (sum-square-larger 2 0 4) => 20)
(check (sum-square-larger 5 7 6) => 85)


;;;; Abandoned. Trying to force my normal ways of solving problems when I should
;;;;   start by learning the tools the book has introduced. Not sure what I was
;;;;   thinking with the local variables.
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
