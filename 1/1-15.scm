#| Exercise 1.15: The sine of an angle (specified in radians) can be computed by
making use of the approximation sin x ≈ x if x is sufficiently small, and the
trigonometric identity sin x = (3*sin)*(x/3) − (4*sin^3)*(x/3) to reduce the size of
the argument of sin. (For purposes of this exercise an angle is considered
“sufficiently small” if its magnitude is not greater than 0.1 radians.) These
ideas are incorporated in the following procedures: |#

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;;  How many times is the procedure p applied when (sine 12.15) is evaluated?

;; p is applied 5 times.

;;  What is the order of growth in space and number of steps (as a function of
;;  a) used by the process generated by the sine procedure when (sine a) is
;;  evaluated?

;; Oh god not this again. Ok.
;;
;; I think it's something about logarithms and the dividing by 3.

(define (mock angle)
  (if (not (> (abs angle) 0.1))
      1
      (+ 1 (mock (/ angle 3.0)))))

;; This function gives the number of times sine will be called.
;; Graphing the function makes it clear this is logarithmic:
;; - 0.1 to 0.2 are divided once
;; - 0.3 to 0.8 are divided twice
;; - 0.9 to 2.6 are divided three times
;; - 2.7 to 8 are divided four times
;; - 8.5 to 23.8 are divided five times
;;
;; I'm able to make a matching curve with this formula:
;; (3.1 + log3(x))
;;
;; From this I think it's reasonable to say the time used is
;; Theta(log3(n))
;;
;; Wait, make that Theta(log(n)). A regular log can also be fit, it doesn't have
;; to be log3 specifically.
;;
;; Codology provides more insight then I could: iteration stops when
;; (angle/0.1 < 3^n) where n is the number of iterations. That can be rearranged
;; to ((log(a) - log(0.1))/(log(3)) < n)
