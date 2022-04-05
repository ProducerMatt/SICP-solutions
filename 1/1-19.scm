;; Exercise 1.19: There is a clever algorithm for computing the Fibonacci
;; numbers in a logarithmic number of steps...
;;
;; [See source, I ain't fixing the Latex this time]
;;
;; The assignment asks to make a fib replacement but I wanted to make procedures
;; for general T transformation.

;; (T) returns a transformation function based on the two numbers in the
;; attached list. so (T '(0 1)) returns a fib function.
(define (T l)
  (let ((p (car l))
        (q (cadr l)))
    (lambda (ll)
      (let ((a (car ll))
            (b (cadr ll)))
        (list (+ (* b q) (* a q) (* a p))
              (+ (* b p) (* a q)))))))
;; Note to self: "cdr" always returns a list, even when there's only one item.
;; You can unwrap it with "cadr".

(define (Tr f n)
  (Tr-iter f n '(1 0)))
(define (Tr-iter f n l)
  (if (= n 0)
      (car l)
      (Tr-iter f (- n 1) (f l))))

;; Ok, here's the actual exercise...

(define (fib n)
  (fib-iter 1 0 0 1 n))

;; (define (fib-iter a b p q count)
;;   (cond ((= count 0)
;;          b)
;;         ((even? count)
;;          (fib-iter a
;;                    b
;;                    (+ (* p p)
;;                       (* q q))
;;                    (+ (* p q)
;;                       (* q q)
;;                       (* q p))
;;                    (/ count 2)))
;;         (else
;;          (fib-iter (+ (* b q)
;;                       (* a q)
;;                       (* a p))
;;                    (+ (* b p)
;;                       (* a q))
;;                    p
;;                    q
;;                    (- count 1)))))

;; MattsDiary: Ok, this one felt really satisfying to solve. Although I was hung
;; up for a little bit because I assumed I had to recurse *in the even call*
;; which is leads to infinite loops.

;; Overall I'd rather refactor this code so it doesn't repeat itself, and also doesn't waste an extra cycle computing a fib it'll throw away.

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

#|
;; MattsDiary: one more note... I didn't have to look up any solution this time!
;; Checking, I see the codology solution may save a few calculations. My
;; solution:
(define p-prime
  (+ (* p p)
     (* q q)))
(define q-prime
    (+ (* p q)
       (* q q)
       (* q p)))
;; codology solution:
(define p-prime
  (+ (* p p)
     (* q q))) ;; this is identical to mine
(define q-prime
  (+ (* 2 q p)
     (* q q))) ;; technically identical, but consolidates (* p q) and (* q p) into
               ;; (* 2 q p). If I keep a better lookout, maybe I'll spot stuff
               ;; like this more often.

|#
;; I found mine by applying the fibonacci functions to p & q, where he found his
;; by reducing to an equation and solving it. I wonder if he could have missed
;; the fibonacci aspect of p & q by doing this.
