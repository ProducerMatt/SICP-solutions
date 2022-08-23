;; BENCHMARK THE STUFF
;; /*─────────────────────────────────────────────────────────────────╗
;; │ To the extent possible under law, Matthew Pherigo has waived     │
;; │ all copyright and related or neighboring rights to this file,    │
;; │ as it is written in the following disclaimers:                   │
;; │   • http://unlicense.org/                                        │
;; ╚─────────────────────────────────────────────────────────────────*/

(define (mattbench f n)
  ;; Executes "f" for n times, and returns how long it took.
  ;; f is a lambda that takes no arguments, a.k.a. a "thunk"


  ;; How you measure time is implementation dependent. For GNU Guile, you get
  ;; number of milliseconds at the start and the end and subtract the former
  ;; from the latter.
  (define (time-getter) (get-internal-run-time))
  (define start-time (time-getter))
  (define (how-long) (- (time-getter) start-time))

  (define (iter i)
    (f)
    (if (<= i 0)
        #t
        (iter (- i 1))))

  (iter n)
  (/ (how-long) (* n 1.0)));; Divide by iterations so changed n has no effect

;; TODO: Let f be a list of lambdas and benchmark each. Let user print multiple
;; benchmarks if n is a pair where the first number is the number of iterations
;; per benchmark and the second number is how many benchmarks to do.
