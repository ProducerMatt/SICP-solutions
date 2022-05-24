;; Includes
(define (inc x) (+ x 1))
(define (square x) (* x x))
(define (cube x) (* x x x))

(define dx 0.00001)
(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x)
            ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g)
               guess))

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

;; Exercise 1-40: Define a procedure cubic that can be used together with the
;; newtons-method procedure to approximate zeroes of the cubic:
;;
;; x^3 + ax^2 + bx + c

(define (cubic a b c)
  (lambda (x)
    (+ (cube x)
       (* a (square x))
       (* b x) c)))

;; Exercise 1-41: Define a prcedure double that takes a procedure f which takes
;; one argument, and returns a procedure that applies f twice.

(define (double f)
  (lambda (x)
    (f (f x))))

;; What is the result of
;(((double (double double)) inc) 5)
;
;; = 21. Double squares the number of function calls, and there are 3 doubles here. So two function calls
;; become four, which become sixteen. Lambda calculus baby!

;; Exercise 1-42: define a function (compose f g) which returns the function
;; composition (f (g x))

(define (compose f g)
  (lambda (x)
    (f (g x))))

;; What is the result of
;((compose square inc) 6)
;
;; = 49, or (square (+ 1 6))

;; Exercise 1.43: make a function that returns a lambda that applies f to x n
;; times.
(define (repeated f n)
  (lambda (x)
    (define (iter i val)
      (if (< i 1)
          val
          (iter (- i 1) (f val))))
    (iter n x)))

(define (repeated-rec f n)
  (lambda (x)
    (define (rec i)
      (if (< i 1)
          x
          (f (rec (- i 1)))))
    (rec n)))

(define (repeated-comp f n)
  (lambda (x)
    (cond ((> n 1) ((compose f (repeated-comp f (- n 1))) x))
          ((= n 1) (f x))
          ((< n 1) x))))

;; 3 variants and all felt a little off. Checking codology.net I found his was
;; much more elegant, though repeated-iter might be more computationally
;; efficient?

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- n 1)))))
