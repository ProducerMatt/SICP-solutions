;; NOTE: placeholder due to weird compiler/emacs behavior that breaks SRFI-78
;; (see check.scm) and friends

(define undefined ;; Only way to return nothing in GNU Guile
    (if #t #f))   ;; TODO: consult with spiritual advisor

(define (mattcheck:fail id expression expected)
  (newline)
  (display "FAIL at ")
  (display id)
  (newline)
  (display "expected: ")
  (display expected)
  (newline)
  (display "returned: ")
  (display expression)
  (newline))
(define mattcheck:succeed-verbose #t) ;;t/f
(define (mattcheck:succeed id expression)
  (define (blab)
    (newline)
    (display "SUCCEED at ")
    (display id)
    (newline))
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
