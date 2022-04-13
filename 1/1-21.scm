;; constants
(define timestoavg 100000)

(define fermat-times 25)

;; switches
(define (smallest-divisor n)
  ;(find-divisor n 2)) ; stock method
  (find-divisor-integrated n 2)) ; hopefully faster
(define (prime-method x)
;;  (prime? x))
  (fast-prime? x fermat-times))
(define (advancemethod x)
  (next x)) ; 1-23 and forward
  ;(+ x 1)) ; prior to 1-23

;; Exercise 1.21: Use the smallest-divisor procedure to find the smallest
;; divisor of each of the following numbers: 199, 1999, 19999.
(define (square x)
  (* x x))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (#t (find-divisor
               n
               (advancemethod test-divisor)))))

;(list 199 (smallest-divisor 199) 1999 (smallest-divisor 1999) 19999 (smallest-divisor 19999))

;; 199 is prime, 1999 is prime, 19999 is divisible by 7.

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (get-internal-real-time)))
(define (start-prime-test n start-time)
  (if (prime-method n)
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
(define (avg-timed-prime-test n)
  (newline)
  (display n)
  (avg-start-prime-test n (get-internal-real-time) 0 timestoavg))

(define (avg-start-prime-test n start-time total-time iter)
  (if (prime-method n)
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
;; I was wrong, it *was* the conditional. I'll try combining the code.

(define (find-divisor-integrated n test-divisor)
  ; when first run, runs logic for test-divisor = 2, then proceeds to odd looping
  (define (fdi-iter test-divisor)
    (cond ((> (square test-divisor) n)
           n)
          ((divides? test-divisor n)
           test-divisor)
          (#t (fdi-iter
               (+ test-divisor 2)))))
  (if (divides? test-divisor n) ;; Assuming test-divisor is 2
      test-divisor
      (fdi-iter (+ test-divisor 1))))

;; Times with integrated logic:
;; 1009 *** 2968.30273
;; 1013 *** 2539.86559
;; 1019 *** 2609.69303
;;
;; 10007 *** 7966.91024
;; 10009 *** 7672.78922
;; 10037 *** 7427.04931
;;
;; 100003 *** 23687.75075
;; 100019 *** 23191.939
;; 100043 *** 23148.50673
;;
;; 1000003 *** 72418.78033
;; 1000033 *** 72429.03604
;; 1000037 *** 72425.89424

;; Wait, what? That can't be right, that's 3.48 times faster than the original
;; algorithm. I either accidentally made a great optimization, or a great
;; mistake.
;;
;; Observations: I skip the square check for 2, which breaks testing primes less
;; than 5 but we aren't doing that anyway. I also keep n and don't need to pass
;; it on each iteration, which I thought Scheme would be optimizing somehow for
;; that stuff. So I don't imagine that's it, but maybe it is.
;;
;; LATER. Just realized, the inlined code is 1/2 the time of the previous
;; iteration, which is 3/5 the time of the original, which is why the inlined is
;; 3/10ths the original. I guess that conditional took up half the time.

;; Exercise 1.24: Modify the timed-prime-test procedure of Exercise 1.22 to use
;; fast-prime? (the Fermat method), and test each of the 12 primes you found in
;; that exercise. Since the Fermat test has Θ(log n) growth, how would you expect
;; the time to test primes near 1,000,000 to compare with the time needed to
;; test primes near 1000? Do your data bear this out? Can you explain any
;; discrepancy you find?

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))
(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((fermat-test n)
         (fast-prime? n (- times 1)))
        (else #f)))


;; 1009 *** 16463.97096
;; 1013 *** 17222.66219
;; 1019 *** 17960.93245
;; * 1.151
;; 10007 *** 21173.67232
;; 10009 *** 19983.38119
;; 10037 *** 20672.05039
;; * 1.160
;; 100003 *** 23448.58842
;; 100019 *** 23982.70097
;; 100043 *** 24412.16589
;; * 1.138
;; 1000003 *** 27308.10268
;; 1000033 *** 26877.27847
;; 1000037 *** 27711.29949
;;
;; Growth of time is certainly much slower here. I notice that increasing by
;; 1000 takes about 1.3x-2.0x time.
;;
;; 1000000007 *** 42455.87824
;; 1000000009 *** 42236.69831
;; 1000000021 *** 42025.3306
;;
;; 1000000000039 *** 91734.66884
;; 1000000000061 *** 92712.81946
;; 1000000000063 *** 94876.69355
;;
;; Though this algorithm is slower at small numbers, it's obvious that its rate
;; of growth means it's much faster with large numbers than prior algorithms.
;;
;; Looking online, apparently the algorithm should roughly double in time when
;; doubling the number of digits involved, and increase by a constant with every
;; single digit added.
