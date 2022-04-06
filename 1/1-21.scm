;; Exercise 1.21: Use the smallest-divisor procedure to find the smallest
;; divisor of each of the following numbers: 199, 1999, 19999.
(define (square x)
  (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (else (find-divisor
               n
               (+ test-divisor 1)))))

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
  (search-for-primes-iter (+ minimum 1) '() goal))
(define (search-for-primes-iter n lst goal)
  (if (= goal 0)
      lst
      (let ((x (timed-prime-test n)))
        (if (equal? x #t)
            (search-for-primes-iter (+ n 1) (cons n lst) (- goal 1))
            (search-for-primes-iter (+ n 1) lst goal)))))
