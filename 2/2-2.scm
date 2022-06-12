(load "defs.scm")
(use-srfis '(1))

;; Exercise 2.17: Define a procedure last-pair that returns the list that
;; contains only the last element of a given (nonempty) list.

(define (my-last-pair lst)
  (if (null? lst)
      '()
      (let ((lcut (cdr lst)))
        (if (null? lcut)
          lst
          (last-pair lcut)))))

(define (my-reverse1 lst)
  (if (null? lst)
      '()
      (cons (my-reverse (cdr lst)) (car lst))))
;; reversed but "improper"
;scheme@(guile-user) [10]> (my-reverse1 '(1 2 3 4))
;$22 = ((((() . 4) . 3) . 2) . 1)

(define (my-reverse2 lst)
  (define (rec ll)
      (let ((lcut (cdr ll)))
        (if (null? lcut)
          (car ll)
          (cons (rec lcut) (car ll)))))
  (if (null? lst)
      '()
      (cons (rec lst) '())))
;; Almost.
;scheme@(guile-user) [13]> (my-reverse '(1 2 3 4))
;$26 = ((((4 . 3) . 2) . 1))
(define (my-reverse lst)
  (define (rec ll)
      (let ((lcut (cdr ll)))
        (if (null? lcut)
          ll
          (append (rec lcut) (list (car ll))))))
  (if (null? lst)
      '()
      (rec lst)))

;; There we go.
;;
;; Now a quick benchmark
(define (cons-rev lst)
  (fold cons '() lst))

;scheme@(guile-user) [15]> (benchmark (λ () (my-reverse (iota 100))) 100000)
;$47 = 221337.45257
;scheme@(guile-user) [15]> (benchmark (λ () (cons-rev (iota 100))) 10000)
;$46 = 17138.0581
;scheme@(guile-user) [15]> (benchmark (λ () (reverse (iota 100))) 10000)
;$45 = 7019.8518
