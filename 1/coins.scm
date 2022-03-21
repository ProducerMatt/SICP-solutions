;; Returns # of ways change can be made
;; "Helper" for (cc)
(define (count-change amount)
  (cc amount 5))

;; Split recursive definition. Can you write an iterative version?
(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0)
             (= kinds-of-coins 0))
         0)
        (else
         (+ (cc amount (- kinds-of-coins 1))
            (cc (- amount (first-denomination
                           kinds-of-coins))
                kinds-of-coins)))))

;; MattsDiary: Not sure I have the tools to make an iterative version yet.

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

;; Tests!
(newline)
(display "(count-change 100) (should be 292): ")
(write (count-change 100))
(newline)
(display "(count-change 200) (should be 2435): ")
(write (count-change 200))
(newline)
