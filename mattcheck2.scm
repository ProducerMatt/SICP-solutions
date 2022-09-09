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
  (define (blab)
    (format #t "~&SUCCEED at ~a~%" id))
  (if mattcheck:succeed-verbose
      (blab)
      undefined))
(define (mattcheck id expression)
  (cond ((not (boolean? expression))
         (mattcheck:fail id expression "mattcheck: not true or false"))
        (else
           (if expression
               (mattcheck:succeed id "boolean true")
               (mattcheck:fail id "boolean false" "boolean true")))))

(define (mattcheck-equal id expression expected)
  (if (equal? expression expected)
               (mattcheck:succeed id expression)
               (mattcheck:fail id expression expected)))
