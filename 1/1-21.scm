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

(list 199 (smallest-divisor 199) 1999 (smallest-divisor 1999) 19999 (smallest-divisor 19999))

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

;; If the algorithm is Theta(sqrt(n)), it should take sqrt(10) times as long to
;; calculate primes for a number 10 times as large.
;;
;; 1009 took 15747 units of time.
;; 1013 took 15251 units of time.
;; 1019 took 15251 units of time.
;;
;; 10007 took 51890 units of time.
;; 10009 took 50306 units of time.
;; 10037 took 68328 units of time.
;;
;; 100003 took 156876 units of time.
;; 100019 took 155967 units of time.
;; 100043 took 142376 units of time.
;;
;; 1000001 took 373460 units of time.
;; 1000033 took 309147 units of time.
;; 1000037 took 299842 units of time.
;;
;; It seems to hold to sqrt(n) up to 1mil, at which point it's more like 2n?
;; I'm blaming this on varying CPU load.

;; Exercise 1.23: define a procedure next that returns 3 if its input is equal
;; to 2 and otherwise returns its input plus 2. Modify the smallest-divisor
;; procedure to use (next test-divisor) instead of (+ test-divisor 1).

(define (next n)
  (if (= n 2)
      3
      (+ n 2)))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (else (find-divisor
               n
               (next test-divisor)))))

;; With timed-prime-test incorporating this modified version of
;; smallest-divisor, run the test for each of the 12 primes found in Exercise
;; 1.22. Since this modification halves the number of test steps, you should
;; expect it to run about twice as fast. Is this expectation confirmed? If not,
;; what is the observed ratio of the speeds of the two algorithms, and how do
;; you explain the fact that it is different from 2?

;; 1009 *** 10944
;; 1013 *** 15495
;; 1019 *** 16161
;;
;; 10007 *** 33013
;; 10009 *** 42135
;; 10037 *** 35997
;;
;; 100003 *** 115152
;; 100019 *** 140885
;; 100043 *** 156091
;;
;; 1000003 *** 449592
;; 1000033 *** 457499
;; 1000037 *** 491222

;; I don't get it, this looks about the same, though the 1mils are actually
;; *more* in line with the square root. I think I'd have to average it out.
