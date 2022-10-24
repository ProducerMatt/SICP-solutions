;; [[file:../Answers.org::same-parity-benchmark][same-parity-benchmark]]
(define iters 500000)
(load "../mattbench.scm")
;; [[[[file:~/SICP-group/Answers.org::same-parity][same-parity]]][same-parity]]
(define (same-parity . rest)
  (define same?
    (if (even? (car rest))
        even?
        odd?))
  (define (iter l results)
    (if (null? l)
         results
        (let ((a (car l)))
          (iter (cdr l)
                (if (same? a)
                    (cons a results)
                    results)))))
  (iter (reverse rest) '()))

;; Attempting to remove the reversing
(define (same-parity2 . args)
  (define first (car args))
  (define same?
    (if (even? first)
        even?
        odd?))
  (define (iter l results)
    (if (null? l)
        results
        (let ((a (car l))
              (d (cdr l)))
          (if (same? a)
              (iter d (append results
                              (cons a #nil)))
              (iter d results)))))
  (iter (cdr args) (cons first #nil)))
;; same-parity ends here
(let ((l (cddr (iota 100))))
  (format #t "same-parity: ~a~%"
          (cdr (mattbench2 (λ()
                             (apply same-parity l))
                           iters)))
  (format #t "same-parity2: ~a~%"
          (cdr (mattbench2 (λ()
                             (apply same-parity2 l))
                           iters))))
;; same-parity-benchmark ends here
