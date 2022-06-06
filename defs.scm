;; Various reusable code bits

;; MISC MATH {
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
(define (cube x) (* x x x))
;; }

;; SQRT
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
  (= (improve guess x) guess))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))

;; CBRT {
(define (cb-good-enough? nextguess guess lastguess x)
  (or (= nextguess guess)
      (= nextguess lastguess)))
(define (cb-improve guess x)
  (/
   (+
    (/ x (square guess))
    (* guess 2))
   3))
(define (cbrt-iter guess lastguess x)
  (define nextguess (cb-improve guess x))
  (if (cb-good-enough? nextguess guess lastguess x)
      nextguess
      (cbrt-iter nextguess guess x)))
(define (cbrt x)
  (cbrt-iter 1.1 9999 x))
;; }

;; Ackermann {
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
;; Tetration
(define (tetra b p)
  (define (tetra-iter x c)
    (if (= c p)
        x
        (tetra-iter (expt b x) (+ c 1))))
  (cond ((= b 0) 0)
        ((= p 1) b)
        (else
         (tetra-iter b 1))))
;; }

;; Sine atuff {
(define (sine angle)
  (define (p x) (- (* 3 x) (* 4 (cube x))))
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))
;; }
;; FIB {
(define (T p q n)
  (fib-iter 1 0 p q n))
(define (fib n)
  (T 0 1 n))
(define (fib-iter a b p q count)
  (define (calc-a a b)
    (+ (* b q)
       (* a q)
       (* a p)))
  (define (calc-b a b)
    (+ (* b p)
       (* a q)))
  (cond ((= count 1)
         (calc-b a b))
        ((even? count)
         (fib-iter a
                   b
                   (calc-b q p)
                   (calc-a q p)
                   (/ count 2)))
        (else
         (fib-iter (calc-a a b)
                   (calc-b a b)
                   p
                   q
                   (- count 1)))))
;; }

;; Euclid's Algorithm {
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
;; }

;; BENCHMARK THE STUFF
(define (benchmark f n)
  ;; Executes lambda "f" n number of times, and returns how long it took


  ;; How you measure time is implementation dependent. For GNU Guile, you get
  ;; number of milliseconds at the start and the end and subtract the former
  ;; from the latter.
  (define (time-getter) (get-internal-real-time))
  (define start-time (time-getter))
  (define (how-long) (- (time-getter) start-time))

  (define (iter i)
    (f)
    (if (<= i 0)
        #t
        (iter (- i 1))))

  (iter n)
  (/ (how-long) (* n 1.0)));; Divide by iterations so changed n has no effect :)

;; TODO: Let f be a list of lambdas and benchmark each. Let user print multiple
;; benchmarks if n is a pair where the first number is the number of iterations
;; per benchmark and the second number is how many benchmarks to do.

(define (fixed-point f first-guess)
  (define tolerance 0.00001)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (average-damp f)
  (lambda (x)
    (average x (f x))))
(define (repeated f n)
  (lambda (x)
    (define (iter i val)
      (if (< i 1)
          val
          (iter (- i 1) (f val))))
    (iter n x)))

(define (smooth f)
  (define dx 0.00001)
  (lambda (x)
    (/ (+ (f x)
          (f (+ x dx))
          (f (- x dx)))
       3)))
(define (smooth-n f n)
  ((repeated smooth n) f))

(define (nth-root x n)
  (fixed-point
   ((repeated average-damp (ceiling (sqrt n)))
    (lambda (y)
      (/ x (expt y (- n 1)))))
   1.0))
