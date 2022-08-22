;; BENCHMARK THE STUFF
(define (mattbench f n)
  ;; Executes lambda "f" n number of times, and returns how long it took


  ;; How you measure time is implementation dependent. For GNU Guile, you get
  ;; number of milliseconds at the start and the end and subtract the former
  ;; from the latter. NOTE: changed to run-time from real-time
  (define (time-getter) (get-internal-run-time))
  (define start-time (time-getter))
  (define (how-long) (- (time-getter) start-time))

  (define (iter i)
    (f)
    (if (<= i 0)
        #t
        (iter (- i 1))))

  (iter n)
  (/ (how-long) (* n 1.0)));; Divide by iterations so changed n has no effect :)

;; TODO: Let f be a list of lambdas and benchmark each. Let user print multiple
;; benchmarks if n is a pair where the first number is the number of iterations
;; per benchmark and the second number is how many benchmarks to do.
