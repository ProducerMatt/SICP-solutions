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

;; This one is one digit less accurate? Maybe this method is accumulating more
;; rounding errors from h.

;; Exercise 1.30: rewrite sum as an iterative process.
(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

;; I forgot to sum the result on each iteration at first.

;; Exercise 1.31: write a procedure called (product) that is (sum) but with
;; multiplication

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1)) ;; start at 1 so it's not always 0

;; "Define factorial in terms of product."
;;
;; I was briefly stumped because product only counts upward. Then I realized
;; that's just how it's presented and it can go either direction, since additon
;; and multiplication are commutative. I look forward to building up a more
;; intuitive sense of numbers.
(define (factorial n)
  (product-iter identity 1 inc n))

;; Also use product to compute approximations to π using the Wallace formula
#|
(define (pi-product n)
  (define (div x)
    (let ((x1 (+ x 1))
          (x2 (+ x 2)))
      (* (/ x x1) (/ x2 x1))))
  (product-iter div 2 (lambda (z) (+ z 2)) n))
|#
;scheme@(guile-user) [5]> (* 1.0 (pi-product 50))
;$13 = 0.7929860229356764
;; Well that's clearly wrong. What gives?
;; Trying by hand:
;scheme@(guile-user) [5]> (* 1.0 (/ 2 3) (/ 4 3) (/ 4 5) (/ 6 5))
;$16 = 0.8533333333333334
;; Someone online says the formula is slightly wrong. Starting with 2/1 instead:
;scheme@(guile-user) [5]> (* 1.0 (/ 2 1) (/ 2 3) (/ 4 3) (/ 4 5) (/ 6 5)(/ 6 7) (/ 8 7) (/ 8 9))
;$18 = 1.4860770975056687
;; Better but not exactly Pi-worthy. But wait...

(define (pi-product n)
  (define (div x)
    (let ((x1 (- x 1))
          (x2 (+ x 1)))
      (* (/ x x1) (/ x x2))))
  (* 2.0 (product-iter div 2 (lambda (z) (+ z 2)) n)))

;scheme@(guile-user) [5]> (* 1.0 (pi-product 1000))
;$25 = 3.1400238186005973
;; It was pi in a trenchcoat! (aka 1/2 pi)

;; Make a recursive version of product.
(define (product-rec term a next b)
  (if (> a b)
      1
      (* (term a)
         (product-rec term (next a) next b))))

;; Exercise 1.32: generalize to accumulate
(define (accumulate
         combiner null-value
         term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a null-value))

;; Make sum and product.
(define (sum-acc term a next b)
  (accumulate + 0 term a next b))
(define (product-acc term a next b)
  (accumulate * 1 term a next b))

;; Make a recursive version
(define (accumulate-rec
         combiner null-value
         term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
         (accumulate-rec combiner null-value
                         term (next a) next b))))

;; Exercise 1.33: filtered accumulate
(define (filtered-accumulate
         combiner null-value
         term a next b filter)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (if (filter a)
                  (combiner result (term a))
                  result))))
  (iter a null-value))

(load "1/1-21.scm")
(define (sumofprimes a b)
  (filtered-accumulate + 0
                       square a
                       inc b
                       prime?))
;; Test
#|
(use-srfis '(1))
(let* ((coollist (map (lambda (x) (+ x 100)) (iota 30)))
       (filt (filter prime? coollist))
       (squaredlist (map square filt))
       (finalsum (apply + squaredlist)))
  (display finalsum)
  (newline)
  (display (sumofprimes 100 129)))
|#

;; The product of all positive integers less than n that are relatively prime to n
(load "1/defs.scm")
(define (relativeprime x y)
  (= (gcd x y) 1))
(define (productofposint n)
  (filtered-accumulate * 1
                       identity 1
                       inc n
                       (lambda (z) (relativeprime z n))))

#|
;; Test
(use-srfis '(1))
(let* ((targetnum 30)
       (coollist (cdr (iota targetnum)))
       (filtered (filter (lambda (z) (relativeprime z targetnum)) coollist))
       (theproduct (apply * filtered)))
  (display theproduct)
  (newline)
  (display (productofposint targetnum)))
|#

;; MattsDiary: the issue with verifying my results is that it always involves
;; more advanced methods than the actual book. They probably expect me to do the
;; math manually on paper and then verify my solution against that? That might
;; have some advantages.

;; Exercise 1.34: explain this:
;(define (f g) (g 2))
;(f f) => Wrong type to apply: 2
;
;; This evaluates like this:
;;(f f)
;;(f 2)
;;(2 2)
;; Which isn't a valid expression.

(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        midpoint
        (let ((test-value (f midpoint)))
          (cond ((positive? test-value)
                 (search f neg-point midpoint))
                ((negative? test-value)
                 (search f midpoint pos-point))
                (else midpoint))))))

(define (close-enough? x y)
  (< (abs (- x y)) 0.001))

(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value))
           (search f a b))
          ((and (negative? b-value) (positive? a-value))
           (search f b a))
          (else
           (error "Values are not of opposite sign" a b)))))
(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (sqrt x)
  (fixed-point
   (lambda (y) (average y (/ x y)))
   1.0))

;; Exercise 1.35: show the golden ratio is a fixed point of the transformation
;; x => 1 + 1/x

(define golden
  (fixed-point
   (lambda (x) (+ 1 (/ 1 x)))
   1.6))

;scheme@(guile-user) [5]> golden
;$24 = 1.6180327868852458
;; Good enough for government work.
