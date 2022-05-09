;; 1.3 source snippets

(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (inc n) (+ n 1))

(define (sum-cubes a b)
  (sum cube a inc b))

(define (identity x) x)

(define (sum-integers a b)
  (sum identity a inc b))

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

;; My work
;;
;; Exercise 1.29
;;
;; Define a function that takes function f, ints a b and n, and returns the
;; value of the integral.

(define (int-simp f a b n)
  (define h
    (/ (- b a)
     n))
  (define (gety k)
    (f (+ a (* k h))))
  (define (series-y sum k) ;; start with sum = y_0
    (cond ((= k n) (+ sum (gety k)));; and k = 1
          ((even? k) (series-y
                      (+ sum (* 2 (gety k)))
                      (+ 1 k)))
          (else (series-y
                 (+ sum (* 4 (gety k)))
                 (+ 1 k)))))
  (define sum-of-series (series-y (gety a) 1)) ;; (f a) = y_0
  (* (/ h 3) sum-of-series))

;; scheme@(guile-user) [4]> (int-simp cube 0.0 1.0 1000.0)
;; $24 = 0.25000000000000006

;; This appears to be working correctly on the first try. I am suspicious.

;; Here's another version that integrates the (sum) procedure. I had to look
;; online to figure out this was possible but it makes clear sense, things are
;; the sum of their parts.

(define (plustwo x) (+ 2 x))

(define (int-simp-sum f a b n)
  (define h
    (/ (- b a)
       n))
  (define (gety k)
    (f (+ a (* k h))))
  (* (/ h 3) (+ (gety 0) (gety n)
                (* 4 (sum gety 1 plustwo (- n 1)))
                (* 2 (sum gety 2 plustwo (- n 1))))))

;; scheme@(guile-user)> (int-simp-sum cube 0.0 1.0 1000)
;; $10 = 0.2500000000000002
;; scheme@(guile-user)> (int-simp cube 0.0 1.0 1000)
;; $11 = 0.25000000000000006

;; This one is one digit less accurate?
