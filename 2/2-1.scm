;; Definitions
(define (average x y)
  (/ (+ x y) 2))
(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g)
          (/ d g))))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define one-half (make-rat 1 2))

(define one-third (make-rat 1 3))

;(print-rat one-half)
;(print-rat
; (add-rat one-half one-third))

;(print-rat
; (mul-rat one-half one-third))

;(print-rat
; (add-rat one-third one-third))

;; Exercise 2-1: Define a better version of make-rat that handles both positive
;; and negative arguments. Make-rat should normalize the sign so that if the
;; rational number is positive, both the numerator and denominator are positive,
;; and if the rational number is negative, only the numerator is negative.

(define (make-rat n d)
  (if (< d 0)
      (if (< n 0)
          (make-rat (abs n)(abs d))
          (make-rat (- n) (abs d)))
      (let ((g (gcd n d)))
        (cons (/ n g)
              (/ d g)))))

;; an alternate option which does the GCD reduction on access instead of on
;; construction
;(define (make-rat n d)
;  (if (< d 0)
;      (if (< n 0)
;          (make-rat (abs n)(abs d))
;          (make-rat (- n) (abs d)))
;  (cons n d)))

;(define (numer x)
;  (let ((g (gcd (car x) (cdr x))))
;    (/ (car x) g)))

;(define (denom x)
;  (let ((g (gcd (car x) (cdr x))))
;    (/ (cdr x) g)))

;; Exercise 2.2: Specify a constructor make-point and selectors x-point and
;; y-point.
(define (make-point x y)
  (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))
;; To try your procedures, you’ll need a way to print points.
(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
  (newline))
;; Define a constructor make-segment and selectors start-segment and end-segment
;; that define the representation of segments in terms of points.
(define (make-segment start end)
  (cons start end))
(define (start-segment line) (car line))
(define (end-segment line) (cdr line))

;; Using your selectors and constructors, define a procedure midpoint-segment
;; that takes a line segment as argument and returns its midpoint (the point
;; whose coordinates are the average of the coordinates of the endpoints).
(define (midpoint-segment line)
  (make-point
   (average (x-point (start-segment line))
            (x-point (end-segment line)))
   (average (y-point (start-segment line))
            (y-point (end-segment line)))))
