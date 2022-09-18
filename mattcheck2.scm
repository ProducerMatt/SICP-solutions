;; /*─────────────────────────────────────────────────────────────────╗
;; │ To the extent possible under law, Matthew Pherigo has waived     │
;; │ all copyright and related or neighboring rights to this file,    │
;; │ as it is written in the following disclaimers:                   │
;; │   • http://unlicense.org/                                        │
;; ╚─────────────────────────────────────────────────────────────────*/

;; Made this to dodge weird compiler/emacs behavior that breaks SRFI-78
;; (see check.scm) and friends.

(define undefined ;; Only way to return nothing in GNU Guile
    (if #t #f))   ;; TODO: consult with spiritual advisor

(use-modules (ice-9 format))
(define (mattcheck:fail id expression expected)
  (format #t "~&FAIL at ~a~%" id) ; "~@y" is printing limited to a single line
  (format #t "~&expected: ~@y~%" expected)
  (format #t "~&returned: ~@y~%" expression))
(define mattcheck:succeed-verbose #t) ;;t/f
(define (mattcheck:succeed id expression)
  (if mattcheck:succeed-verbose
    (format #t "~&SUCCEED at ~a~%" id)
    undefined))

;; Takes as many expressions as you like
(define (mattcheck-bool id . args)
  (define (iter ll)
    (if (= 0 (length ll))
        (mattcheck:succeed id "boolean true")
        (let ((a (car ll))
              (d (cdr ll)))
          (cond ((eq? a #t) (iter d))
                ((eq? a #f) (mattcheck:fail id
                                 "boolean false" "boolean true"))
                (else
                 (mattcheck:fail id a
                                 "mattcheck: not true or false"))))))
  (iter args))

(define (mattcheck id . args)
  (define (iter ll)
    (if (= 1 (length ll))
        (mattcheck:succeed id (car ll))
        (let ((a (car ll))
              (d (cdr ll))
              (ad (cadr ll)))
          (if (equal? a ad)
              (iter d)
              (mattcheck:fail id a ad)))))
  (if (= 1 (length args))
      (mattcheck-bool id (car args))
      (iter args)))
