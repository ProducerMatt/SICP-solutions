;; [[file:../Answers.org::*Answer][Answer:3]]
(use-modules (ice-9 format))
;; [[[[file:~/SICP-group/Answers.org::make-rat][make-rat]]][make-rat]]
;; [[[[file:~/SICP-group/Answers.org::abs][abs]]][abs]]
(define (abs x)
  (if (< x 0)
      (- x)
      x))
;; abs ends here
(define (make-rat n d)
  (cond ((not (or (< n 0)
              (< d 0)))
         (cons n d))
        ((and (< n 0)
              (< d 0))
         (cons (- n) (- d)))
        (else
         (cons (- (abs n)) (abs d)))))
(define (numer x) (car x))
(define (denom x) (cdr x))

;; Bonus: an attempt to optimize
(define (make-rat-opt n d)
  (let ((nn (< n 0))
        (dn (< d 0)))
    (cond ((not (or nn dn))
           (cons n d))
          ((and nn dn)
           (cons (- n) (- d)))
          (else
           (cons (- (abs n)) (abs d))))))
;; make-rat ends here
;; [[[[file:~/SICP-group/Answers.org::print-rat-txt][print-rat-txt]]][print-rat-txt]]
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))
;; print-rat-txt ends here
;; [[[[file:~/SICP-group/Answers.org::rat-ops-txt][rat-ops-txt]]][rat-ops-txt]]
(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))
;; rat-ops-txt ends here
(load "../mattbench.scm")

(let ((tryit (λ(f)
               (f 1 2)
               (f -1 2)
               (f 1 -2)
               (f -1 -2))))

  (format #t "~&unoptimized make-rat: ~a~%"(mattbench2 (λ()(tryit make-rat)) 500000000))
  (format #t "~&optimized make-rat: ~a~%"(mattbench2 (λ()(tryit make-rat-opt)) 500000000)))
;; Answer:3 ends here
