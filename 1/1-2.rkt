;; Exercise 1.2: Translate the following expression into prefix form:
;; 5+4+(2−(3−(6+(4/5))) / 3(6−2)(2−7)

#lang sicp

(define problem
  (/ (+ 5 4
        (- 2
           (- 3
              (+ 6
                 (/ 4 5)))))
     (* 3
        (- 6 2)
        (- 2 7))))

(equal? problem -37/150)
