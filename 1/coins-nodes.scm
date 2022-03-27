;; cursed globals
(define bubblecounter 0)

;; Returns # of ways change can be made
;; "Helper" for (cc)
(define (count-change amount)
  (set! bubblecounter 0)
  (let ((ways (cc amount 5)))
    (newline)
    (display amount)(display ",")
    (display ways)(display ",")
    (display bubblecounter)))

;; Split recursive definition. Can you write an iterative version?
(define (cc amount kinds-of-coins)
  (set! bubblecounter (+ bubblecounter 1))
  (cond ((= amount 0) 1)
        ((or (< amount 0)
             (= kinds-of-coins 0))
         0)
        (else
         (+ (cc amount (- kinds-of-coins 1))
            (cc (- amount (first-denomination
                           kinds-of-coins))
                kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

;; ;; ITERATION TIME
;; ;;   ATTEMPT 1
;; (define (count-change-iter amount)
;;   (cc amount 5 0 1))

#|Start with 1 kind of coin and add until it matches or
overflows. Then add 1 of second kind and increment 1st kind. How do I do this
without some kind of index dependent on the coin set length?|#
;; (define (cci target-amount target-kinds ways kinds)
;;  ())
;; ;; Tests!
;; (newline)
;; (display "(count-change 100) (should be 292): ")
;; (write (count-change 100))
;; (display "(count-change-iter 100) (should be 292): ")
;; (write (count-change-iter 100))
;; (newline)
;; (display "(count-change 200) (should be 2435): ")
;; (write (count-change 200))
;; (display "(count-change-iter 200) (should be 2435): ")
;; (write (count-change-iter 200))
;; (newline)

(display "money,ways,nodes")
(newline)
(map count-change (cdr (iota 101)))
