;; [[file:../Answers.org::cc-list-benchmark][cc-list-benchmark]]
(define iters 50000)
(load "../mattbench.scm")
;; [[[[file:~/SICP-group/Answers.org::Ex-2-19][Ex-2-19]]][Ex-2-19]]
;; [[[[file:~/SICP-group/Answers.org::cc-lists][cc-lists]]][cc-lists]]
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination
                 coin-values))
            (cc (- amount
                   (first-denomination
                    coin-values))
                coin-values)))))
;; cc-lists ends here

(define us-coins 
  (list 50 25 10 5 1))
(define uk-coins 
  (list 100 50 20 10 5 2 1 0.5))

(define first-denomination car)
(define except-first-denomination cdr)
(define no-more? null?)
;; Ex-2-19 ends here
(let ((rev-us-coins (reverse us-coins)))
  (format #t "decreasing values: ~a~%"
          (cdr (mattbench2 (λ()
                             (cc 100 us-coins))
                           iters)))
  (format #t "increasing values: ~a~%"
          (cdr (mattbench2 (λ()
                             (cc 100 rev-us-coins))
                           iters))))
;; cc-list-benchmark ends here
