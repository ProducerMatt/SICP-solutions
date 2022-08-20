#| Exercise 1.12: The following pattern of numbers is called Pascal’s triangle.

1 1 1 1 1
1 2 3 4
1 3 6
1 4    . . .
1      (rotate 45 degrees)

The numbers at the edge of the triangle are all 1, and each number inside the
triangle is the sum of the two numbers above it. Write a procedure that computes
elements of Pascal’s triangle by means of a recursive process. |#

;; Solution 1, treating it as a square. Numbered from 1.
(define (psq x y)
  (cond ((or (<= x 1) (<= y 1)) 1)
        (else (+ (psq (- x 1) y)
                 (psq x (- y 1))))))

;; Solution 2, triangle with correct coordinates
(define (ptr row column)
  (cond ((or (<= column 1) (<= row column)) 1)
        (else (+ (ptr (- row 1) column)
                 (ptr (- row 1) (- column 1))))))

;; (psq 5 3) => 15
;; (ptr 5 3) => 6
