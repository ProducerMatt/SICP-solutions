#lang sicp

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

#|
new-if will be evaluated as all standard functions are, by its arguments
getting evaluated before processing the actual function. Trying to use new-if
for deciding recursion results in the recursive function being evaluated before
the "if" is decided, thus looping forever.
|#
