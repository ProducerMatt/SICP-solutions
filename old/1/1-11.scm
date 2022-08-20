;; Exercise 1.11. A function f is defined by the rule that f(n) = n if n<3 and
;; f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n>=3. Write a procedure that
;; computes f by means of a recursive process. Write a procedure that computes f
;; by means of an iterative process.

(define (fr n)
  (cond ((< n 3) n)
        (else (+      (fr (- n 1))
                 (* 2 (fr (- n 2)))
                 (* 3 (fr (- n 3)))))))

(define (fi n)
  (define (fi-iter count x y z)
    (define result
      (+ x
         (* 2 y)
         (* 3 z)))
    (cond ((= count n) result)
          (else (fi-iter (+ count 1)
                         result
                         x
                         y))))
  (cond ((< n 3) n)
        (else (fi-iter 3 2 1 0))))
