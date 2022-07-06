(use-srfis '(1))
;(load "../check.scm") ;; "bad use of '=>' syntactic keyword"?
(load "../defs.scm")
(load "../mattcheck.scm")

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
  (iter items '()))

(define (square-list-broken2 items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square
                     (car things))))))
  (iter items '()))

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
;; cons redefinition
(define (make-mobile left right)
  (cons left right))
(define (make-branch length structure)
  (cons length structure))
(define (right-branch m)
  (cdr m))
(define (branch-structure b)
  (cdr b))

(define (has-no-mobile? m)
  (and (pair? m) (not (pair? (car m)))))
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

;; All I had to change was replacing a call to "length" with "pair"! Not bad all
;; things considered.
;;
;; An observation: I implemented this as summing the torque for each side, where
;; others online only implemented the torque in the context of that tree and
;; then passed up the total-weight instead. It feels intuitively to me that
;; passing the torque would hold true for an actual binary mobile.

;; Text
(define (scale-tree-cons tree factor)
  (cond ((null? tree) '())
        ((not (pair? tree))
         (* tree factor))
        (else
         (cons (scale-tree-cons (car tree)
                                factor)
               (scale-tree-cons (cdr tree)
                                factor)))))
(define (scale-tree-map tree factor)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (scale-tree-map sub-tree factor)
             (* sub-tree factor)))
       tree))
(define (scale-tree tree factor)
  (scale-tree-map tree factor))

;; Exercise 2.30: Define a procedure square-tree analogous to the square-list
;; procedure of Exercise 2.21, both by map and recursion.
(define (square-tree-cons tree)
  (cond ((null? tree) '())
        ((not (pair? tree))
         (square tree))
        (else
         (cons (square-tree-cons (car tree))
               (square-tree-cons (cdr tree))))))
(define (square-tree-map tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree-map sub-tree)
             (square sub-tree)))
       tree))
(define (square-tree tree)
  (square-tree-map tree))
;; Too easy. There's a twist coming, I just know it.

;; Exercise 2.31: Abstract your answer to Exercise 2.30 to produce a procedure
;; tree-map. (There's the twist)
(define (tree-map f tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map f sub-tree)
             (f sub-tree)))
       tree))

;; Exercise 2.32: We can represent a set as a list of distinct elements, and we
;; can represent the set of all subsets of the set as a list of lists. For
;; example, if the set is (1 2 3), then the set of all subsets is
;; (() (3) (2) (2 3) (1) (1 3) (1 2) (1 2 3)). Complete the following definition
;; of a procedure that generates the set of subsets of a set and give a clear
;; explanation of why it works:
(define (subsets s)
  (if (null? s)
      (list '())
      (let ((rest (subsets (cdr s))))
        (append rest (map
                      (λ (x) (cons (car s) x))
                      rest)))))
;; I confess I had to look this one up. Trying to work through it. First of all
;; a breakdown of the process when given (1 2 3)
;; - First we recurse through cdrs until hitting null. Then s is null, so we
;;   return null in a list (())
;; - s is (3 null), rest is null. map iterates once to cons 3 with null
;; - s is (2 3 null), rest is (3 null). map iterates to cons 2 with null,
;;   then 2 with 3
;; - s is (1 2 3 null), rest is (2 3 null). map iterates to cons 1 with null,
;;   then 1 with 3, then 1 with 2, then 1 with (2 3).

;; Text 2.2.3
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op
                      initial
                      (cdr sequence)))))

;; Exercise 2.33: Fill in the missing expressions to complete the following
;; definitions of some basic list-manipulation operations as accumulations:

(define (map-acc p sequence)
  (accumulate (lambda (x y) (cons (p x) y))
              '() sequence))
(define (append-acc seq1 seq2)
  (accumulate cons seq2 seq1)) ;; this one feels like witchcraft.

(define (length-acc sequence)
  (accumulate (λ (x y) (+ y 1)) 0 sequence))

(mattcheck "map-acc and map consistency"
           (equal? (map-acc square (iota 5))
                   (map square (iota 5))))

;; NOTE: decided not to use this for now but may come back to it later once the
;; duct-tape-and-spit approach wears thin
;(use-modules (srfi srfi-64))
;(test-runner-current (test-runner-simple))
;(test-equal '(0 1 4 9 16) (map-acc square (iota 5)))

;; Exercise 2.34: Evaluating a polynomial in x at a given value of x
(define (horner-eval x coefficient-sequence)
  (accumulate
   (lambda (this-coeff higher-terms)
;    (+ higher-terms (* this-coeff x))) ;; incorrect, though many online
                                        ;; solutions also got this wrong.
     (+ this-coeff (* higher-terms x)))
   0
   coefficient-sequence))

(mattcheck "horner-eval" (equal? 79 (horner-eval 2 (list 1 3 0 5 0 1))))

;; Exercise 2.35: Redefine count-leaves from 2.2.2 as an accumulation
(define (count-leaves-acc t)
  (accumulate + 0
              (map (λ (x) (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (count-leaves x)))) t)))

(let ((l (make-nightmare-list 4)))
  (mattcheck "count-leaves and count-leaves-acc equivalence" (equal? (count-leaves l) (count-leaves-acc l))))

;; Exercise 2.36: The procedure accumulate-n is similar to accumulate except
;; that it takes as its third argument a sequence of sequences, which are all
;; assumed to have the same number of elements. It applies the designated
;; accumulation procedure to combine all the first elements of the sequences,
;; all the second elements of the sequences, and so on, and returns a sequence
;; of the results. For instance, if s is a sequence containing four sequences,
;; ((1 2 3) (4 5 6) (7 8 9) (10 11 12)), then the value of (accumulate-n + 0 s)
;; should be the sequence (22 26 30). Fill in the missing expressions in the
;; following definition of accumulate-n:
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))
;; Neat!
(mattcheck "accumulate-n"
           (equal? '(22 26 30)
                   (accumulate-n + 0 '((1 2 3) (4 5 6) (7 8 9) (10 11 12)))))

;; MattsDiary: Hi, Matt from the future here. It turns out that #nil does not
;; equal the empty list. All my checks are finally working.

;; Exercise 2.37: programs for matrix operations. I'm gonna have to crack open a
;; textbook for this one.
(define (dot-product v w) ;; textbook defined
  (accumulate + 0 (map * v w)))
(define (transpose mat)
  (accumulate-n cons '() mat))
(mattcheck "transpose"
           (equal? '((1 2 3)
                     (4 5 6)
                     (7 8 9))
                   (transpose '((1 4 7)
                                (2 5 8)
                                (3 6 9)))))

(define (matrix-*-vector m v)
  (map (λ (x) (dot-product x v)) m))
(let ((m '((1 -1 2) (0 -3 1)))
      (v '(2 1 0)))
  (mattcheck "matrix-*-vector"
             (equal? '(1 -3)
                     (matrix-*-vector m v))))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (λ (r)
           (map (λ (c)
                  (dot-product r c))
                cols))
         m)))
(let ((m      '((0 3 5)
                (5 5 2)))
      (n      '((3 4)
                (3 -2)
                (4 -2)))
      (answer '((29 -16)
                (38 6))))
  (mattcheck "matrix-*-matrix"
             (equal? answer
                     (matrix-*-matrix m n))))

;; Exercise 2.38: The accumulate procedure is also known as fold-right, because
;; it combines the first element of the sequence with the result of combining
;; all the elements to the right. There is also a fold-left, which is similar to
;; fold-right, except that it combines elements working in the opposite
;; direction
(define fold-left accumulate)
(define (fold-right op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

;; What are the values of:
; (fold-right / 1 (list 1 2 3)) ;; 3/2
; (fold-left  / 1 (list 1 2 3)) ;; 1/6
; (fold-right list '() (list 1 2 3)) ;; (1 (2 (3 ())))
; (fold-left  list '() (list 1 2 3)) ;; (((() 1) 2) 3)

;; Give a property that op should satisfy to guarantee that fold-right and
;; fold-left will produce the same values for any sequence.
; Op should be commutative. For example, addition (+) is the same in either
; direction.

;; Exercise 2.39: Complete the following definitions of reverse (Exercise 2.18)
;; in terms of fold-right and fold-left from Exercise 2.38:
(define (reverse-fr sequence)
  (fold-right
   (lambda (x y) (cons y x)) '() sequence))

;; used for debugging
(define (print-two-points x y)
  (display x)
  (display ", ")
  (display y)
  (newline))

(define (reverse-fl sequence)
  (fold-left
   (lambda (x y) (append y (list x))) '() sequence))

(let* ((l (iota 9))
      (correct (reverse l)))
  (mattcheck "reverse-fr"
             (equal? correct
                     (reverse-fr l)))
  (mattcheck "reverse-fl"
             (equal? correct
                     (reverse-fl l))))

;; "Nested mappings"
(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low
            (enumerate-interval
             (+ low 1)
             high))))
(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))
(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))
(define (make-pair-sum pair)
  (list (car pair)
        (cadr pair)
        (+ (car pair) (cadr pair))))
(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter
        prime-sum?
        (flatmap
         (lambda (i)
           (map (lambda (j)
                  (list i j))
                (enumerate-interval
                 1
                 (- i 1))))
         (enumerate-interval 1 n)))))
(define (remove item sequence)
  (filter (lambda (x) (not (= x item)))
          sequence))
(define (permutations s)
  (if (null? s)   ; empty set?
      (list '())  ; sequence containing empty set
      (flatmap (lambda (x)
                 (map (lambda (p)
                        (cons x p))
                      (permutations
                       (remove x s))))
               s)))

(let ((correct '((2 1 3) (3 2 5) (4 1 5) (4 3 7))))
  (mattcheck "prime-sum-pairs"
             (equal? correct
                     (prime-sum-pairs 4))))
;; Exercise 2.40: Define a procedure unique-pairs that, given an integer n,
;; generates the sequence of pairs (i,j) with 1≤j<i≤n. Use unique-pairs to
;; simplify the definition of prime-sum-pairs given above.
(define (unique-pairs n)
  (flatmap
   (lambda (i)
     (map (lambda (j)
            (list i j))
          (enumerate-interval
           1
           (- i 1))))
   (enumerate-interval 1 n)))
(let ((correct '((2 1) (3 1) (3 2) (4 1) (4 2) (4 3))))
  (mattcheck "unique-pairs"
             (equal? correct
                     (unique-pairs 4))))

(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter
        prime-sum?
        (unique-pairs n))))


(mattcheck-equal "prime-sum-pairs w/ unique-pairs"
                 (prime-sum-pairs 4)
                 '((2 1 3) (3 2 5) (4 1 5) (4 3 7)))

;; Exercise 2.41: Write a procedure to find all ordered triples of distinct
;; positive integers i, j, and k less than or equal to a given integer n that
;; sum to a given integer s.

(define (unique-triplets n)
  (flatmap
   (lambda (i)
     (flatmap
      (lambda (k)
        (map (lambda (j)
               (list i k j))
             (enumerate-interval
              1
              (- k 1))))
      (enumerate-interval 1 (- i 1))))
   (enumerate-interval 1 n)))
(mattcheck-equal "unique-triplets"
                 (unique-triplets 7)
                 '((3 2 1) (4 2 1) (4 3 1) (4 3 2) (5 2 1) (5 3 1)
                   (5 3 2) (5 4 1) (5 4 2) (5 4 3) (6 2 1) (6 3 1)
                   (6 3 2) (6 4 1) (6 4 2) (6 4 3) (6 5 1) (6 5 2)
                   (6 5 3) (6 5 4) (7 2 1) (7 3 1) (7 3 2) (7 4 1)
                   (7 4 2) (7 4 3) (7 5 1) (7 5 2) (7 5 3) (7 5 4)
                   (7 6 1) (7 6 2) (7 6 3) (7 6 4) (7 6 5)))

(define (find-sum-triples n s)
  (filter
   (λ (t)
     (equal? s (fold + 0 t)))
   (unique-triplets n)))

(mattcheck-equal "find-sum-triples"
                 (find-sum-triples 12 9)
                 '((4 3 2) (5 3 1) (6 2 1)))

;; Exercise 2.42: The “eight-queens puzzle” asks how to place eight queens on a
;; chessboard so that no queen is in check from any other (i.e., no two queens
;; are in the same row, column, or diagonal).

; textbook:
(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions)
           (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position
                    new-row
                    k
                    rest-of-queens))
                 (enumerate-interval
                  1
                  board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

; mine:
(define empty-board '())
;; positions will be a list of (row column) pairs. Pairs will be appended in
;; reverse so (car) gets the most recent
(define (adjoin-position new-row k rest-of-queens)
  (cons (list new-row k) rest-of-queens))
;;  (append (list (list new-row k)) rest-of-queens))
(mattcheck-equal "adjoin-position"
                 (adjoin-position 3 4 '((1 3)(4 2)(2 1)))
                 '((3 4)(1 3)(4 2)(2 1)))
(mattcheck-equal "adjoin-position new"
                 (adjoin-position 2 1 '())
                 '((2 1)))
(mattcheck-equal "adjoin-position one"
                 (adjoin-position 4 2 '((2 1)))
                 '((4 2)(2 1)))

;; ;; MattsDiary: I suspect this isn't how the book wants me to solve it?
;; ;; edit: it turns out it wasn't.
;; (define (potential-diagonals k p)
;;   ;; produces an unsorted list of pairs that are diagonal to the given pair
;;   ;; while still being on the board
;;   (define (rec-inc l)    ;; NOTE: these two could be refactored into 1 with
;;     (let ((row (caar l)) ;; higher-order functions.
;;           (col (cadar l)))
;;       (if (or (= row k) (= col 1))
;;           l
;;           (rec-inc (adjoin-position
;;                     (+ row 1)
;;                     (- col 1)
;;                     l)))))
;;   (define (rec-dec l)
;;     (let ((row (caar l))
;;           (col (cadar l)))
;;       (if (or (= row 1) (= col 1))
;;           l
;;           (rec-dec (adjoin-position
;;                     (- row 1)
;;                     (- col 1)
;;                     l)))))
;;   (append (rec-inc (list p)) (rec-dec (list p))))
;; (let ((start '(3 7))
;;       (sizeofboard 8)
;;       (answer '((8 2) (7 3) (6 4) (5 5) (4 6)
;;                 (3 7) (1 5) (2 6) (3 7))))
;;     (mattcheck-equal "potential-diagonals"
;;                      (potential-diagonals sizeofboard
;;                                           start)
;;                      answer))
;; the matching code extracted from (safe?)
;  (define (diagonals-safe?)
;    (if (find (λ (x)
;            (member x rest))
;          (potential-diagonals k newqueen))
;        #f
;        #t))

(define (safe1? k positions)
  (let* ((newqueen (car positions))
         (myrow (car newqueen))
         (mycol (cadr newqueen))
         (rest (cdr positions)))
    ;; check row
    (define (row-safe? b)
      (let ((aa (caar b))
            (d (cdr b)))
        (cond ((= myrow aa) #f)
              ((not (null? d))
               (row-safe? d))
              (else #t))))
    ;; check diagonal
    (define (diagonals-safe? b)
      (let ((a (car b))
            (d (cdr b)))
        (cond ((= (abs (- (car a) myrow))
                  (abs (- (cadr a) mycol))) #f)
              ((not (null? d))
               (diagonals-safe? d))
              (else #t))))
    (if (nil? rest)
        #t
        (and (row-safe? rest)
             (diagonals-safe? rest)))))
;; not super proud of this but it works. Could be refactored in a number of ways.

(define safe? safe1?) ;; choose implementation

(let ((safe4board '((3 4)(1 3)(4 2)(2 1)))
      (badrow4board '((3 4)(3 3)(3 2)(3 1)))
      (baddiagonal4 '((3 4)(2 3)(4 2)(1 1)))
      (q4 '(((3 4) (1 3) (4 2) (2 1))
            ((2 4) (4 3) (1 2) (3 1))))
      (q11l 2680))
  (mattcheck "safe?"
             (safe? 4 safe4board))
  (mattcheck "safe? bad row"
             (not (safe? 4 badrow4board)))
  (mattcheck "safe? bad diagonals"
             (not (safe? 4 baddiagonal4)))
  (mattcheck-equal "queens"
             (list (queens 4)
                   (length (queens 11)))
             (list q4 q11l)))

;; But now I have a new problem, the (queens) procedure is double-nesting the
;; list somehow. What should be ((4 1) (5 1)) is (((4 1)) ((5 1)))

;; Later: Turns out the double-wrapping was fine. They represent different
;; sequences that are only one position long. The issue was I didn't give safe?
;; a case for when there was only one item.

;; Now I want to tentatively attempt some refactoring. First let me benchmark
;; what I have so far.
;scheme@(guile-user) [1]> (benchmark (λ () (length (queens 11))) 10)
;$6 = 1313655987.3
;scheme@(guile-user) [1]> (benchmark (λ () (length (queens 11))) 20)
;$7 = 1264162735.8

;; Ok, this one is mostly inspired by x3v's solution at
;; http://community.schemewiki.org/?sicp-ex-2.42

(define (check newqueen p)
  (let ((ar (car newqueen))
        (ac (cadr newqueen))
        (br (car p))
        (bc (cadr p)))
    (and (not (= ar br))
         (not (= (abs (- ar br))
                 (abs (- ac bc)))))))
(define (safe2? k positions)
  (let* ((newqueen (car positions))
         (rest (cdr positions)))
    (if (nil? rest)
        #t
        (= 0
           (fold + 0 (map (λ (p) (if (check newqueen p)
                                     0
                                     1))
                          rest))))))

(define safe? safe2?)
(let ((safe4board '((3 4)(1 3)(4 2)(2 1)))
      (badrow4board '((3 4)(3 3)(3 2)(3 1)))
      (baddiagonal4 '((3 4)(2 3)(4 2)(1 1)))
      (q4 '(((3 4) (1 3) (4 2) (2 1))
            ((2 4) (4 3) (1 2) (3 1))))
      (q11l 2680))
  (mattcheck "safe2?"
             (safe2? 4 safe4board))
  (mattcheck "safe2? bad row"
             (not (safe2? 4 badrow4board)))
  (mattcheck "safe2? bad diagonals"
             (not (safe2? 4 baddiagonal4)))
  (mattcheck-equal "queens with safe2?"
             (list (queens 4)
                   (length (queens 11)))
             (list q4 q11l)))

;scheme@(guile-user) [5]> (benchmark (λ () (length (queens 11))) 20)
;$11 = 5185596245.75
;scheme@(guile-user) [5]> (benchmark (λ () (length (queens 11))) 20)
;$12 = 5179305935.45
;; Wow, way less efficient. 5.182 Meg vs 1.288 Meg.

;; Ok, extra credit: so how could I make this better? Doing it all iteratively
;; would make more sense I guess. Also if we're always going in one direction
;; with the columns then they don't need to be recorded at all. So it will just
;; be a list of row numbers, in descending column order, and those lists will be
;; listed together to make the set of solutions.
;(define (myqueens board-size)
;  (define newset (map (λ(x)(list x))
;                      (enumerate-interval 1 board-size)))
;  (define (iter column result)
;    (if (= column board-size)
;        result
;        (let ((nextset
;               (flatmap (λ(s)
;                          (map (λ(t) (append t s))
;                               result))
;                        newset)))
;          (iter (+ 1 column)
;                (filter-incorrect nextset board-size)))))
;
;  (if (< board-size 4)
;      '()
;      (iter 1 newset)))
;
;;; assumes it is being passed a list of board configurations, at least two
;;; positions per config. Assumes car is the latest config and the previous
;;; configs have been checked.
;(define (listcrawler s board-size)
;  (let ((newest (car s)))
;    (define (iter is updiag downdiag)
;      (if (nil? is)
;          #t ;; no issues found
;          (let ((checking (car is)))
;            (newline)
;            (display checking)
;            (if (or (= newest checking)
;                    (and (<= updiag board-size)
;                         (= updiag checking))
;                    (and (>= downdiag 1)
;                         (= downdiag checking)))
;                #f
;                (iter (cdr is) (+ 1 updiag) (- 1 downdiag))))))
;    (iter (cdr s) (+ 1 newest) (- 1 newest))))
;(define (filter-incorrect set board-size)
;  (filter
;   (λ(x) (listcrawler x board-size))
;   set))

;; Actually I'd rather make progress for now. Though I already think this
;; version has problems as well. I don't have as clear of an idea of what I'm
;; doing as I ought to have.

;; Exercise 2.43: explain why Louis' program runs more slowly than the
;; textbook's Queen procedure, and how much more slowly.
;;
;; In Louis' version, the recursive procedure call is nested inside the map
;; procedure. This has the result of recursing to the power of the board-size in
;; comparison to the original. So if the original runs in T time, Louis' runs in
;; T^board-size.
(define (louis-queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions)
           (safe? k positions))
         (flatmap
          (lambda (new-row)
            (map (lambda (rest-of-queens)
                   (adjoin-position
                    new-row k rest-of-queens))
                 (queen-cols (- k 1))))
          (enumerate-interval 1 board-size)))))
  (queen-cols board-size))

;scheme@(guile-user) [1]> (benchmark (λ () (length (queens 7))) 1000)
;$11 = 3705119.435
;scheme@(guile-user) [1]> (benchmark (λ () (length (louis-queens 7))) 10)
;$6 = 1768678658.1
;
;; 1.76G vs 3.70M. So 475 times slower in this case.
;;
;; MattsDiary: after checking online with posts like the following:
;; https://wernerdegroot.wordpress.com/2015/08/01/sicp-exercise-2-43/ It looks
;; like the big O notation could be considered O((N^N)*T) at its simplest. I
;; don't have a good grasp on how to reason out the time complexity of a
;; non-trivial algorithm. I aim to eventually do "How to Solve It" and "How to
;; Prove It" and possibly that will fill in the missing gaps.
