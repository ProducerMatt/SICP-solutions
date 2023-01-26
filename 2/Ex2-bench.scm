;; [[file:../Answers.org::*Answer][Answer:3]]
(use-modules (ice-9 format))
;; [[[[file:~/SICP-group/Answers.org::make-point][make-point]]][make-point]]
;; [[[[file:~/SICP-group/Answers.org::average][average]]][average]]
(define (average x y)
  (/ (+ x y) 2))
;; average ends here
(define (make-point x y)
  (cons x y))
(define (x-point p)
  (car p))
(define (y-point p)
  (cdr p))
(define (make-segment start end)
  (cons start end))
(define (start-segment seg)
  (car seg))
(define (end-segment seg)
  (cdr seg))
(define (midpoint-segment seg)
  (make-point (average (x-point (start-segment seg))
                       (x-point (end-segment seg)))
              (average (y-point (start-segment seg))
                       (y-point (end-segment seg)))))
(define (midpoint-segment-opt seg)
  (let ((ax (x-point (start-segment seg)))
        (bx (x-point (end-segment seg)))
        (ay (y-point (start-segment seg)))
        (by (y-point (end-segment seg))))
  (make-point (average ax
                       bx)
              (average ay
                       by))))
;; make-point ends here
(load "../mattbench.scm")

(let* ((p1 (make-point 1.0 2.0))
       (p2 (make-point -1.0 -2.0))
       (s (make-segment p1 p2))
       (tryit (lambda(f)
               (f s))))

  (format #t "~&unoptimized midpoint-segment: ~a~%" (mattbench2 (lambda()(tryit midpoint-segment)) 50000000))
  (format #t "~&optimized midpoint-segment: ~a~%" (mattbench2 (lambda()(tryit midpoint-segment-opt)) 50000000)))
;; Answer:3 ends here
