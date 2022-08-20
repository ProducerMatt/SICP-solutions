; Don't actually run this one. I mean, in Racket it works fine but don't run
; it. lol

#lang sicp

(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

; (test 0 (p))

#|
MattsDiary: Turns out I didn't understand the difference between Applicative and
Normal order.

Applicative gets caught in an infinite loop, while normal order evaluates the
*if* to 0 and never evaluates p. Applicative order evaluates the arguments
before substituting the procedure, while normal order expands the first
reference it sees and manages to miss the chance for error.
|#
#|
MattsDiary: update. Awoke in a cold sweat to see a ghost at the foot of my
Victorian bed. It raised its trembling finger and wailed "you forgot to put
the function call in parenthesis and that's why it didn't crash!" The cursed
spirit was indeed correct.

My old example:
(test 0 p) <= this doesn't crash
(test 0 (p)) <= this does
|#
