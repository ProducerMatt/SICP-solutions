;; NOTE: placeholder due to weird compiler/emacs behavior that breaks SRFI-78
;; (see check.scm) and friends

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
(define (mattcheck id expression)
  (cond ((not (boolean? expression))
         (mattcheck:fail id expression "mattcheck: not true or false"))
        (else
           (if expression
               (if #f #t) ;; hack to return nothing
               (mattcheck:fail id expression "boolean true")))))
