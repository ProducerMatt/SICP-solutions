;; Exercise 1.21: Use the smallest-divisor procedure to find the smallest
;; divisor of each of the following numbers: 199, 1999, 19999.
(define (square x)
  (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

#|
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (else (find-divisor
               n
               (+ test-divisor 1)))))
|#

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

;(list 199 (smallest-divisor 199) 1999 (smallest-divisor 1999) 19999 (smallest-divisor 19999))

;; 199 is prime, 1999 is prime, 19999 is divisible by 7.

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (get-internal-real-time)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (begin (report-prime (- (get-internal-real-time)
                              start-time))
             #t)
      #f))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

;; Exercise 1.22: write a procedure search-for-primes that checks the primality
;; of consecutive odd integers in a specified range. Use your procedure to find
;; the three smallest primes larger than 1000; larger than 10,000; larger than
;; 100,000; larger than 1,000,000.

(define (search-for-primes minimum goal)
  (define m (if (even? minimum)
                (+ minimum 1)
                (minimum)))
  (search-for-primes-iter m '() goal))
(define (search-for-primes-iter n lst goal)
  (if (= goal 0)
      lst
      (let ((x (timed-prime-test n)))
        (if (equal? x #t)
            (search-for-primes-iter (+ n 2) (cons n lst) (- goal 1))
            (search-for-primes-iter (+ n 2) lst goal)))))

;; Modified version that averages multiple runs!
(define timestoavg 100000)

(define (avg-timed-prime-test n)
  (newline)
  (display n)
  (avg-start-prime-test n (get-internal-real-time) 0 timestoavg))

(define (avg-start-prime-test n start-time total-time iter)
  (if (prime? n)
      (let* ((this-time (- (get-internal-real-time)
                          start-time))
            (new-total-time (+ total-time this-time)))
        (if (> iter 0)
          (avg-start-prime-test n (get-internal-real-time) new-total-time (- iter 1))
          (avg-report-prime (* 1.0 (/ new-total-time timestoavg)))))
      #f))
(define (avg-report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  #t)

(define (avg-search-for-primes minimum goal)
  (define m (if (even? minimum)
                (+ minimum 1)
                (minimum)))
  (avg-search-for-primes-iter m '() goal)
  (newline))
(define (avg-search-for-primes-iter n lst goal)
  (if (= goal 0)
      lst
      (let ((x (avg-timed-prime-test n)))
        (if (equal? x #t)
            (avg-search-for-primes-iter (+ n 2) (cons n lst) (- goal 1))
            (avg-search-for-primes-iter (+ n 2) lst goal)))))


;; If the algorithm is Theta(sqrt(n)), it should take sqrt(10) times as long to
;; calculate primes for a number 10 times as large.
;;
;; 1009 *** 8238.19982
;; 1013 *** 8247.06107
;; 1019 *** 8239.99878
;;
;; 10007 *** 26539.81261
;; 10009 *** 26531.77527
;; 10037 *** 26604.96796
;;
;; 100003 *** 84200.21197
;; 100019 *** 83718.00731
;; 100043 *** 83701.49424
;;
;; 1000003 *** 264809.12921
;; 1000033 *** 265250.9991
;; 1000037 *** 264823.96387
;;
;; It holds to n * sqrt(10).

;; Exercise 1.23: define a procedure next that returns 3 if its input is equal
;; to 2 and otherwise returns its input plus 2. Modify the smallest-divisor
;; procedure to use (next test-divisor) instead of (+ test-divisor 1).

(define (next n)
  (if (= n 2)
      3
      (+ n 2)))

(define (advancemethod x)
  (next x)) ; 1-23 and forward
  ;(+ x 1)) ; prior to 1-23

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (#t (find-divisor
               n
               (advancemethod test-divisor)))))

;; With timed-prime-test incorporating this modified version of
;; smallest-divisor, run the test for each of the 12 primes found in Exercise
;; 1.22. Since this modification halves the number of test steps, you should
;; expect it to run about twice as fast. Is this expectation confirmed? If not,
;; what is the observed ratio of the speeds of the two algorithms, and how do
;; you explain the fact that it is different from 2?

;; 1009 *** 5206.31876
;; 1013 *** 5212.12457
;; 1019 *** 5215.91678
;;
;; 10007 *** 16296.76325
;; 10009 *** 15853.95092
;; 10037 *** 15852.74157
;;
;; 100003 *** 50452.2787
;; 100019 *** 50120.22159
;; 100043 *** 49963.01372
;;
;; 1000003 *** 158481.49095
;; 1000033 *** 157821.47828
;; 1000037 *** 157977.71975

;; This also runs at n * sqrt(10), but takes about 3/5th the time. The (next)
;; function should allow for skipping about half the iterations necessary, which
;; is why I'm surprised it doesn't run in 1/2 the time. I wonder if the repeated
;; conditionals involved slow it down enough to be noticeable. Doesn't seem
;; likely. I'm going to look at what others say about this.
;;
;; Apparently it was the conditonal. I'll try combining the code.
