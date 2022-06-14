(load "../defs.scm")
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

;; Exercise 2-19: the change counting strikes back!
(define (cc amount coin-values)
  (cond ((= amount 0)
         1)
        ((or (< amount 0)
             (no-more? coin-values))
         0)
        (else
         (+ (cc
             amount
             (except-first-denomination
              coin-values))
            (cc
             (- amount
                (first-denomination
                 coin-values))
             coin-values)))))
(define us-coins
  (list 50 25 10 5 1))
(define uk-coins
  (list 100 50 20 10 5 2 1 0.5))

;; my code
(define (first-denomination lst)
  (car lst))
(define (except-first-denomination lst)
  (cdr lst))
(define (no-more? lst)
  (null? lst))

;; Changing the order of coin types doesn't change the results, as it still
;; explores all possible combinations of its components.

;; Exercise 2-20: write a procedure same-parity that takes one or more integers
;; and returns a list of all the arguments that have the same even-odd parity as
;; the first argument.
(define (same-parity . lst)
  (let ((parity (even? (car lst))))
    (define (rec ll)
      (if (null? ll)
          '()
          (let* ((lcar (car ll))
                 (lcdr (cdr ll))
                 (ifeq? (equal? (even? lcar) parity)))
            (cond (ifeq? (cons lcar (rec lcdr)))
                  ((not ifeq?)
                   (rec lcdr))))))
    (rec lst)))

;; Exercise 2.21:
(define (square-list-cons items)
  (if (null? items)
      '()
      (cons (square (car items)) (square-list-cons (cdr items)))))

(define (square-list items)
  (map square items))

;; Exercise 2.22: why are these broken?
(define (square-list-broken1 items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items #nil))

(define (square-list-broken2 items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square
                     (car things))))))
  (iter items #nil))

;scheme@(guile-user) [17]> (square-list-broken1 (iota 9))
;$20 = (64 49 36 25 16 9 4 1 0)
;scheme@(guile-user) [17]> (square-list-broken2 (iota 9))
;$21 = (((((((((#nil . 0) . 1) . 4) . 9) . 16) . 25) . 36) . 49) . 64)

;; these are broken because they reverse the pairs themselves.

;; Exercise 2.23: give an implementation of for-each.
(define (for-each-mine f lst)
  (map f lst)
  (values))

(define (matt-test-foreach f)
  (f
   (lambda (x) (display x) (newline))
   (list 57 321 88)))
