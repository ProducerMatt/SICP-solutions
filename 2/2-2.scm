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

;; text 2.2.2
(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
                 (count-leaves (cdr x))))))

;; Exercise 2.24: evaluate the expression (list 1 (list 2 (list 3 4))). Give the
;; result printed by the interpreter, the corresponding box-and-pointer
;; structure, and the interpretation of this as a tree.

; the interpreter returns (1 (2 (3 4))).
;; I'm going to skip drawing box and pointers because I've had to learn this
;; through previous debuggings and also drawing in a text doc sounds like a bad
;; time.

;; Exercise 2.25: Give combinations of cars and cdrs that will pick 7 from each
;; of the following lists:
(define (2-25-test)
  (let ((l1 '(1 3 (5 7) 9))
        (l2 '((7)))
        (l3 '(1 (2 (3 (4 (5 (6 7))))))))
    (list
     (car (cdaddr l1))
     (car (car l2))
     (cadadr (cadadr (cadadr l3))))))

;; Exercise 2.26: Suppose we define x and y to be two lists:
(define (2-26-test)
  (let ((x (list 1 2 3))
        (y (list 4 5 6)))
    ;; What result is printed by the interpreter in response to evaluating each
    ;; of the following expressions:
    (list
     (append x y)
     (cons x y)
     (list x y))))
;((1 2 3 4 5 6) ;; list with 6 cells
;((1 2 3) 4 5 6) ;; list with 4 cells with one 3-cell list
;((1 2 3) (4 5 6))) ;; list with two 3-cell lists

;; Exercise 2.27: Modify your reverse procedure of Exercise 2.18 to produce a
;; deep-reverse procedure that takes a list as argument and returns as its value
;; the list with its elements reversed and with all sublists deep-reversed as
;; well.
(define (deep-reverse-fail1 lst)
  (define (rec ll)
    (if (null? ll)
        '()
        (let ((la (car ll))
              (ld (cdr ll)))
          (cond ((and (null? la)
                      (pair? ld)) (append (rec ld) '()))
                ((and (null? ld)
                      (not (pair? la))) ll)
                ((and (not (null? ld))
                      (not (pair? la))) (append (rec ld) (list la)))
                ((and (pair? ld)
                      (pair? la)) (append (rec ld) (rec la)))))))
  (rec lst))

(define (my-reverse lst)
  (define (rec ll)
      (let ((lcut (cdr ll)))
        (if (null? lcut)
          ll
          (append (rec lcut) (list (car ll))))))
  (if (null? lst)
      '()
      (rec lst)))

(define (deep-reverse-fail2 lst)
  (cond ((null? lst) '())
        ((not (pair? lst)) (list lst))
        (else (append (deep-reverse (cdr lst))
                    (deep-reverse (car lst))))))

(define (deep-reverse-fail3 lst)
  (define (rec ll)
     (if (not (pair? ll))
         ll
         (let ((la (car ll))
               (ld (cdr ll)))
           (cond ((null? ld) (rec la))
                 ((and (null? la) (not (pair? ld))) (rec ld))
                 (else (append (list (rec ld)) (list (rec la))))))))
  (if (null? lst)
      '()
      (rec lst)))
;; I'm fumbling around a lot here. I'm getting my pencil and paper and regoing
;; through how cons cells work.

(define (deep-reverse-fail4 lst)
  (define (rec ll)
    (let ((la (car ll))
          (ld (cdr ll)))
      (cond ((and (null? ld) (pair? la))
             (list (rec la)))
            ((and (null? ld) (not (pair? la)))
             ll
            ((and (null? la) (not (null? ld)))
             (rec ld))
            ((and (not (pair? la)) (not (null? ld)))
             (append (rec ld) (list la))))
            ((and (pair? la) (not (null? ld)))
             (append (rec ld) (list (rec la)))))))
  (cond ((null? lst) '())
        ((not (pair? lst)) lst)
        (else (rec lst))))

;; ok two issues with what I'm doing:
;; 1. I'm trying to solve for irregularly formed (dotted) lists which is
;;    probably not in the description
;; 2. knowing this book they probably want me to just modify the procedure I had
;;    already for (my-reverse)
(define (deep-reverse lst)
  (define (rec-if-pair l)
    (if (pair? l)
        (list (rec l))
        (list l)))
  (define (rec ll)
    (let ((ld (cdr ll))
          (la (car ll)))
      (if (null? ld)
          (rec-if-pair la)
          (append (rec ld) (rec-if-pair la)))))
  (if (null? lst)
      '()
      (rec lst)))
;; it works! EDIT: actually, when committed it didn't, but now it does. Not sure
;; how I had it working, broke it before committing it, discovered it was broken
;; after committing, and couldn't figure out what was wrong.

;; Also on second thought, an irregularly formed list isn't really a list
;; anyway. If I wanted to reverse irregularly formed pairs I'd also need to not
;; move the nulls, so reversing a good list would become a bad one.

;; Here's a different solution from the SICP wiki
(define (wiki-deep-reverse l)
  (define (rev l res)
    (cond ((null? l) res)
          ((not (pair? l)) l)
          (else (rev (cdr l)
                     (cons (rev (car l)
                                '())
                           res)))))
  (rev l '()))
(define (make-nightmare-list levels)
  (define (iter i l)
    (if (<= i 0)
        l
        (iter (- i 1) (map (λ (x) (iota levels)) l))))
  (iter levels (iota levels)))

(define (bench-deep-reverse f n levels)
  (let ((ll (make-nightmare-list levels)))
    (benchmark (λ () f ll) n)))

;scheme@(guile-user) [5]> (bench-deep-reverse deep-reverse 1000000 1000)
;$32 = 13.28837
;scheme@(guile-user) [5]> (bench-deep-reverse wiki-deep-reverse 1000000 1000)
;$33 = 13.283717
;; Hmm. and changing the size of the list doesn't seem to make any difference
;; until the list is really large. I wonder if the overhead on running the
;; function is worse than the actual function itself.

;; Exercise 2.28: Write a procedure fringe that takes as argument a tree
;; (represented as a list) and returns a list whose elements are all the leaves
;; of the tree arranged in left-to-right order. For example,

(define (2-28-test f)
  (let ((l (list (list (list 1 2) (list 3 4))
                 (list (list 1 2) (list 3 4)))))
    (f l)))

(define (fringe l)
  (define (rec-if-pair l)
    (if (pair? l)
        (rec l)
        (list l)))
  (define (rec ll)
    (let ((ld (cdr ll))
          (la (car ll)))
      (if (null? ld)
          (rec-if-pair la)
          (append (rec-if-pair la) (rec ld)))))
  (if (null? l)
      '()
      (rec l)))

;; Exercise 2.29: make representations of a binary mobile
(define (make-mobile left right)
  (list left right))
(define (make-branch length structure)
  (list length structure))

(define (left-branch m)
  (car m))
(define (right-branch m)
  (cadr m))
(define (branch-length b)
  (car b))
(define (branch-structure b)
  (cadr b))
(define (has-no-mobile? m)
  (and (equal? (length m) 1) (not (pair? (car m)))))
(define (total-weight m)
  (define (rec m)
    (cond ((not (pair? m)) m)
          ((has-no-mobile? m) (car m))
          (else (+ (rec (branch-structure (left-branch m)))
                   (rec (branch-structure (right-branch m)))))))
  (rec m))
;; returns total torque if balanced, and 0 if not balanced
(define (is-balanced? m)
  (define (rec b)
    (cond ((or (not (pair? (branch-structure b)))
               (has-no-mobile? (branch-structure b)))
           (* (branch-length b) (branch-structure b)))
          (else
           (* (branch-length b) (is-balanced? (branch-structure b))))))
  (let ((lb (rec (left-branch m)))
        (rb (rec (right-branch m))))
    (if (and (equal? lb rb)
             (not (equal? lb 0))
             (not (equal? rb 0)))
        (+ lb rb) ;; all balanced!
        0)))

(define (2-29-test)
  (let ((m-balanced
         (make-mobile (make-branch 4 4)
                      (make-branch 2
                                   (make-mobile (make-branch 2 2)
                                                (make-branch 2 2)))))
        (m-unbal
         (make-mobile (make-branch 4 4)
                      (make-branch 1
                                   (make-mobile (make-branch 2 2)
                                                (make-branch 2 2))))))
    (list (list (total-weight m-balanced)
                (is-balanced? m-balanced))
          (list (total-weight m-unbal)
                (is-balanced? m-unbal)))))

;; What changes if you change the constructor to use cons?
