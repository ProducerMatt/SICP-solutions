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
