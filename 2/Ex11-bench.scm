;; [[file:../Answers.org::mult-benchmark][mult-benchmark]]
(define iters 10000000)
(load "../mattbench.scm")
;; [[[[file:~/SICP-group/Answers.org::make-interval][make-interval]]][make-interval]]
;; [[[[file:~/SICP-group/Answers.org::interval-txt][interval-txt]]][interval-txt]]
(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))
(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))
(define (div-interval x y)
  (mul-interval
   x
   (make-interval (/ 1.0 (upper-bound y))
                  (/ 1.0 (lower-bound y)))))
;; interval-txt ends here

;; Makes more sense to me to test
;; order in the constructor than selector
(define (make-interval a b)
  (if (> a b)
      (cons a b)
      (cons b a)))

(define (upper-bound i)
  (car i))
(define (lower-bound i)
  (cdr i))
;; make-interval ends here
;; [[[[file:~/SICP-group/Answers.org::sub-interval][sub-interval]]][sub-interval]]
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))
;; sub-interval ends here
;; [[[[file:~/SICP-group/Answers.org::mul-interval-opt][mul-interval-opt]]][mul-interval-opt]]
(define (mul-interval-opt x y)
  (let ((xu (upper-bound x))
        (xl (lower-bound x))
        (yu (upper-bound y))
        (yl (lower-bound y)))
    (define p? positive?)
    (define n? negative?)
    (define (check-signs? a b x y) ;; pass functions
      (and (a xu)
           (b xl)
           (x yu)
           (y yl)))
    (define (same-signs?)
      (or (check-signs? p? p? p? p?)
          (check-signs? n? n? n? n?)))
    (define (alt-signs?)
      (or (check-signs? p? p? n? n?)
          (check-signs? n? n? p? p?)))
    (cond ((same-signs?)
           (make-interval (* xu yu)
                          (* xl yl)))
          ((alt-signs?)
           (make-interval (* xl yu)
                          (* xu yl)))
          ((check-signs? p? p? p? n?)
           (make-interval (* xu yu)
                          (* xu yl)))
          ((check-signs? p? n? p? p?)
           (make-interval (* xu yu)
                          (* xl yu)))
          ((check-signs? p? n? p? n?)
           (let ((p1 (* xu yu))
                 (p2 (* xu yl))
                 (p3 (* xl yu))
                 (p4 (* xl yl)))
             (make-interval (max p1 p2 p3 p4)
                            (min p1 p2 p3 p4))))
          ((check-signs? p? n? n? n?)
           (make-interval (* xl yl)
                          (* xu yl)))
          ((check-signs? n? n? p? n?)
           (make-interval (* xl yl)
                          (* xl yu))))))
;; mul-interval-opt ends here
(let* ((pp (make-interval 3 2))
       (pn (make-interval 3 -5))
       (pn2 (make-interval 1 -0.5))
       (nn (make-interval -5 -7))
       (listofpairs (list
                     (list pp pp)
                     (list pp pn)
                     (list pp nn)
                     (list pn pp)
                     (list pn pn)
                     (list pn pn2) ;;<- edge case to catch incomplete
                     (list pn nn)  ;;   multiplication functions
                     (list nn pp)
                     (list nn pn)
                     (list nn nn))))
  (format #t "Unoptimized mul-interval: ~a"
          (cdr (mattbench2 (λ()
                             (map (λ(l)
                                    (apply mul-interval l))
                                  listofpairs))
                           iters)))
  (format #t "Unoptimized mul-interval: ~a"
          (cdr (mattbench2 (λ()
                             (map (λ(l)
                                    (apply mul-interval-opt l))
                                  listofpairs))
                           iters)))
  )
;; mult-benchmark ends here
