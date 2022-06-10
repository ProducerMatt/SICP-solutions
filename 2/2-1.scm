;; Definitions
(define pi 3.1415926535897932384626433832795028)
(define (average x y)
  (/ (+ x y) 2))
(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g)
          (/ d g))))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define one-half (make-rat 1 2))

(define one-third (make-rat 1 3))

;(print-rat one-half)
;(print-rat
; (add-rat one-half one-third))

;(print-rat
; (mul-rat one-half one-third))

;(print-rat
; (add-rat one-third one-third))

;; Exercise 2-1: Define a better version of make-rat that handles both positive
;; and negative arguments. Make-rat should normalize the sign so that if the
;; rational number is positive, both the numerator and denominator are positive,
;; and if the rational number is negative, only the numerator is negative.

(define (make-rat n d)
  (if (< d 0)
      (if (< n 0)
          (make-rat (abs n)(abs d))
          (make-rat (- n) (abs d)))
      (let ((g (gcd n d)))
        (cons (/ n g)
              (/ d g)))))

;; an alternate option which does the GCD reduction on access instead of on
;; construction
;(define (make-rat n d)
;  (if (< d 0)
;      (if (< n 0)
;          (make-rat (abs n)(abs d))
;          (make-rat (- n) (abs d)))
;  (cons n d)))

;(define (numer x)
;  (let ((g (gcd (car x) (cdr x))))
;    (/ (car x) g)))

;(define (denom x)
;  (let ((g (gcd (car x) (cdr x))))
;    (/ (cdr x) g)))

;; Exercise 2.2: Specify a constructor make-point and selectors x-point and
;; y-point.
(define (make-point x y)
  (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))
;; To try your procedures, you’ll need a way to print points.
(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
  (newline))
;; Define a constructor make-segment and selectors start-segment and end-segment
;; that define the representation of segments in terms of points.
(define (make-segment start end)
  (cons start end))
(define (start-segment line) (car line))
(define (end-segment line) (cdr line))

;; Using your selectors and constructors, define a procedure midpoint-segment
;; that takes a line segment as argument and returns its midpoint (the point
;; whose coordinates are the average of the coordinates of the endpoints).
(define (midpoint-segment line)
  (make-point
   (average (x-point (start-segment line))
            (x-point (end-segment line)))
   (average (y-point (start-segment line))
            (y-point (end-segment line)))))

;; Exercise 2.3: Implement a representation for rectangles in a plane. (Hint:
;; You may want to make use of Exercise 2.2.) In terms of your constructors and
;; selectors, create procedures that compute the perimeter and the area of a
;; given rectangle.

;; I also want this:
(define (length-segment line)
  (let* ((pa (start-segment line))
         (pb (end-segment line))
         (x-distance (- (x-point pa) (x-point pb)))
         (y-distance (- (y-point pa) (y-point pb))))
    (+ (abs x-distance) (abs y-distance))))

;; defining a rectangle as two opposite points which can then be used to
;; reconstruct the full thing. A is top-left, B is top-right, C is bottom-left,
;; D is bottom-right. But now I realize that makes a "Z" from ABCD. Should have
;; done it the normal math class way, see how perimeter-rectangle has to make
;; lines from B to D and C to A.
#|
(define (make-rectangle A D)
  (cons A D))
(define (A-rectangle r)
  (car r))
(define (D-rectangle r)
  (cdr r))
(define (B-rectangle r)
  (make-point (x-point (D-rectangle r))
              (y-point (A-rectangle r))))
(define (C-rectangle r)
  (make-point (x-point (A-rectangle r))
              (y-point (D-rectangle r))))

(define (perimeter-rectangle r)
  (let ((line1 (make-segment (A-rectangle r) (B-rectangle r)))
        (line2 (make-segment (B-rectangle r) (D-rectangle r)))
        (line3 (make-segment (D-rectangle r) (C-rectangle r)))
        (line4 (make-segment (C-rectangle r) (A-rectangle r))))
    ;; Now I "C" the error of my ways.
    (+ (length-segment line1) (length-segment line2)
       (length-segment line3) (length-segment line4))))
(define (area-rectangle r)
  (let ((line1 (make-segment (A-rectangle r) (B-rectangle r)))
        (line2 (make-segment (B-rectangle r) (D-rectangle r))))
    (* (length-segment line1) (length-segment line2))))

(define (print-rectangle r)
    (display "point A: ")
    (display (print-point (A-rectangle r)))
    (display "point B: ")
    (display (print-point (B-rectangle r)))
    (display "point C: ")
    (display (print-point (C-rectangle r)))
    (display "point D: ")
    (display (print-point (D-rectangle r)))
    (newline))
|#
(define (testit r)
  (print-rectangle r)
  (display "perimeter: ")
  (display (perimeter-rectangle r))
  (newline)
  (display "area: ")
  (display (area-rectangle r))
  (newline))
#|
(let ((r (make-rectangle (make-point 1 2) (make-point 3 4))))
  (testit)
|#

;; MattsDiary: Hmm. I implemented them so focused on the points that were I to
;; swap them out for anything else, they wouldn't really make sense. Also the
;; nesting of objects probably goes beyond what the author intended. Let me
;; check online.

;; Ok, my implementation isn't very strong. A better one would be noting the
;; origin, height, width, and angle. Second pass heavily inspired from
;; codology's solution.
(define (make-rectangle origin height width angle)
  ;; 1 point and 3 floats
  (cons (cons height width) (cons origin angle)))
(define (origin-rectangle r)
  (car (cdr r)))
(define (angle-rectangle r)
  (cdr (cdr r)))

;; "Public" interface
(define (height-rectangle r)
  (car (car r)))
(define (width-rectangle r)
  (cdr (car r)))
(define (area-rectangle r)
  (* (height-rectangle r) (width-rectangle r)))
(define (perimeter-rectangle r)
  (+ (* 2 (height-rectangle r)) (* 2 (width-rectangle r))))

(define (print-rectangle r)
  (display "Origin: ")
  (print-point (origin-rectangle r))
  (display "Height: ")
  (display (height-rectangle r))
  (newline)
  (display "Width: ")
  (display (width-rectangle r))
  (newline)
  (display "Angle: ")
  (display (angle-rectangle r))
  (newline))

;; (testit (make-rectangle (make-point 1 2) 2 3 0))

;; Now implement a different representation for rectangles. Can you design your
;; system with suitable abstraction barriers, so that the same perimeter and
;; area procedures will work using either representation?

;; MattsDiary: guess I'll try the 3-point model now. Point B connects to point A
;; and C.
#|
(define (make-rectangle a b c)
  (cons a (cons b c)))
(define (A-rectangle r)
  (car r))
(define (B-rectangle r)
  (cadr r))
(define (C-rectangle r)
  (cddr r))
(define (origin-rectangle r)
  (A-rectangle r))
(define (angle-rectangle r)
  (let ((x1 (x-point (B-rectangle r)))
        (x2 (x-point (A-rectangle r)))
        (y1 (y-point (B-rectangle r)))
        (y2 (y-point (A-rectangle r))))
    (* (atan (- y2 y1) (- x2 x1)) (/ 180 pi))))
;; outputs an angle in degrees. As to whether this is actually mathematically
;; useful I couldn't say, I'm flying half-blind until I catch up in my remedial
;; math. Also this would be better described as the "slope" of the line from B
;; to A.

(define (height-rectangle r)
  (length-segment (make-segment (A-rectangle r)
                                (B-rectangle r))))
(define (width-rectangle r)
  (length-segment (make-segment (B-rectangle r)
                                (C-rectangle r))))
|#

;; (testit (make-rectangle (make-point 1 2) (make-point 3 2) (make-point 3 4)))

;; Exercise 2.4: Here is an alternative procedural representation of pairs.......
;;
;; MattsDiary: it works by "storing" the numbers inside lambda objects handled
;; by the interpreter.

;; Exercise 2.5: Show that we can represent pairs of nonnegative integers using
;; only numbers and arithmetic operations if we represent the pair a and b as
;; the integer that is the product (2^a * 3^b). Give the corresponding
;; definitions of the procedures cons, car, and cdr.

;; Oh boy.
(define (cons-nnint a b)
  (* (expt 2 a) (expt 3 b)))
#|
(define (cons-nnint a b) ;; DEBUG
  (let* ((aa (expt 2 a))
         (bb (expt 3 b))
         (ab (* aa bb)))
    (display aa)
    (newline)
    (display bb)
    (newline)
    (display ab)
    (newline)
    ab))
|#
;; I have no idea what I'm doing. Here's a helper function to help me figure out
;; what I'm doing
(define (intlogb b x)
  (define (iter i n)
    (if (> n 1)
        (iter (+ 1 i) (/ n b))
        i))
  (iter 0 x))

;; ok. it looks like, because 2 and 3 are coprime, I can divide the unwanted one
;; until it's factored out and then do a log base the desired one to retrieve
;; the value.
(define (all-your-base ab unwanted wanted)
  (if (equal? (modulo ab unwanted) 0)
      (all-your-base (/ ab unwanted) unwanted wanted)
      (if (equal? (modulo ab wanted) 0)
          (intlogb wanted ab)
          "This number isn't a factor!")))
(define (car-nnint ab)
  (all-your-base ab 3 2))
(define (cdr-nnint ab)
  (all-your-base ab 2 3))

;; Exercise 2.6: lambda calculus? in MY lisp derivative? it's more likely than
;; you think.
(define zero (lambda (f) (lambda (y) y)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;; evaluating (add-1 zero)
(if #f '( ;; a silly trick for syntax highlighting
    (lambda (f) (lambda (x) (f ((zero f) x))))
    (lambda (f) (lambda (x) (f (((lambda (f) (lambda (y) y)) f) x))))
    (lambda (f) (lambda (x) (f ((lambda (y) y) x))))
    (lambda (f) (lambda (x) (f x)))
))

;; Thus:
(define one (lambda (f) (lambda (x)
                          (f x))))
(define two (lambda (f) (lambda (x)
                          (f (f x)))))
(define (add-l a b)
  (lambda (f) (lambda (x) ((b f) ((a f) x)))))

;; MattsDiary: I got the definition right the first time but spent some time
;; confused because I left in an extra pair of ()

;; Section 2.1.4 Definitions
(define (add-interval x y)
  (make-interval (+ (lower-bound x)
                    (lower-bound y))
                 (+ (upper-bound x)
                    (upper-bound y))))
(define (mul-interval x y)
  (let ((p1 (* (lower-bound x)
               (lower-bound y)))
        (p2 (* (lower-bound x)
               (upper-bound y)))
        (p3 (* (upper-bound x)
               (lower-bound y)))
        (p4 (* (upper-bound x)
               (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))
(define (div-interval x y)
  (mul-interval x
                (make-interval
                 (/ 1.0 (upper-bound y))
                 (/ 1.0 (lower-bound y)))))
;;(define (make-interval a b) (cons a b))

;; Exercise 2.7
(define (make-interval a b) ;; first, I feel like this is appropriate.
  (cons (max a b) (min a b)))
(define (upper-bound interval)
  (car interval))
(define (lower-bound interval)
  (cdr interval))

;; Exercise 2.8: define sub-interval and explain
;;
;; When subtracting two intervals A & B, the largest possible difference is between
;; upper bound A and lower bound B, and the smallest possible
;; difference is between lower bound A and upper bound B.
(define (sub-interval-explicit x y)
  (make-interval (- (upper-bound x)
                    (lower-bound y))
                 (- (lower-bound x)
                    (upper-bound y))))
;; Can also be defined:
(define (sub-interval x y)
  (add-interval x
                (make-interval (- (upper-bound y))
                               (- (lower-bound y)))))
;; I confess I had to check an online answer before composing my own, I was
;; paranoid that this interval case meant there would be some nonobvious aspect
;; to it, like whether the output would be absolute. It wasn't very reasonable
;; considering the book hasn't pulled any stunts like that before.

;; Exercise 2.9: width of intervals
(define (width-interval x)
  (/ (- (upper-bound x)
        (lower-bound x))
     2))
;; if you add or subtract two intervals together, the result's width will be the added width of
;; the two component intervals. This isn't true for multiplication or division:
(define (matt-test-width-intervals)
  (let ((i (make-interval 5.1 4.9))
        (j (make-interval 3.2 2.8)))
    (list
     (width-interval (add-interval i j))
     (width-interval (sub-interval i j))
     (width-interval (mul-interval i j))
     (width-interval (div-interval i j)))))

;; Exercise 2.10: modify div-interval to give an error when dividing by an
;; interval that spans 0
(define (div-interval x y)
  (if (and (< 0 (upper-bound y))
           (> 0 (lower-bound y)))
      "div-interval error: division by interval that spans zero"
      (mul-interval x
                    (make-interval
                     (/ 1.0 (upper-bound y))
                     (/ 1.0 (lower-bound y))))))

(define (matt-test-div-intervals)
  (div-interval (make-interval 1 2)
                (make-interval 3 -4)))

;; Exercise 2.11: modify mul-interval so it only uses 2 multiplications for 8
;; out of 9 possible cases.
(define (matt-examine-mult)
  (let ((pp (make-interval 3 2))
        (pn (make-interval 2 -3))
        (nn (make-interval -2 -3)))
    (list (mul-interval pp pp)
          (mul-interval pp pn)
          (mul-interval pp nn)
          (mul-interval pn pp)
          (mul-interval pn pn)
          (mul-interval pn nn)
          (mul-interval nn pp)
          (mul-interval nn pn)
          (mul-interval nn nn))))
;; ((9 . 4) (6 . -9) (-4 . -9) (6 . -9) (9 . -6) (9 . -6) (-4 . -9) (9 . -6) (9 . 4))
;;    PPPP    PPPN      PPNN     PNPP     PNPN     PNNN      NNPP     NNPN     NNNN
;;   UU LL   UU  UL   LU   UL   UU  LU   LL  LU   LL  UL   UL   LU   LL  LU   LL  UU
;;   CASE A  CASE B   CASE C    CASE D   CASE E   CASE F   CASE G    CASE H   CASE A
;;    PPPP    PPPN      PNPN     PPNP     PPNN     PNNN      NPNP     NPNN     NNNN
;; - Case A: PPPP/NNNN. UULL
;; - Case B: PPPN UUUL
(define (mul-interval-orig x y) ;; reference
  (let ((p1 (* (lower-bound x)
               (lower-bound y)))
        (p2 (* (lower-bound x)
               (upper-bound y)))
        (p3 (* (upper-bound x)
               (lower-bound y)))
        (p4 (* (upper-bound x)
               (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

;; Incomplete, realized some abstraction was needed but I had to start typing it
;; out manually to see it
(define (mul-interval-fragment x y)
  (let ((xu (upper-bound x))
        (xl (lower-bound x))
        (yu (upper-bound y))
        (yl (lower-bound y)))
    (define (same-sign?)
      (or (and (positive? xu)
               (positive? xl)
               (positive? yu)
               (positive? yl))
          (and (negative? xu)
               (negative? xl)
               (negative? yu)
               (negative? yl))))
    (define (pnpp)
      (and (positive? xu)
           (negative? xl)
           (positive? yu)
           (positive? yl)))
    (define (pppn)
      (and (positive? xu)
           (positive? xl)
           (positive? yu)
           (negative? yl)))
    (cond ((same-sign?)
           (make-interval (* xu yu)
                          (* xl yl)))
          ((pnpp)
           (make-interval (* xu yu)
                          (* xl yu)))
          ((pppn)
           (make-interval (* xu yu)
                          (* xu yl)))
          (else "Fallout"))))
;; Incomplete

;; Attempt #2
(define (mul-interval x y)
  (let ((xu (upper-bound x))
        (xl (lower-bound x))
        (yu (upper-bound y))
        (yl (lower-bound y)))
    (define p? positive?)
    (define n? negative?)
    (define (check-signs? a b x y) ;; pass functions
      (and (a xu)
           (b xl)
           (x yu)
           (y yl)))
    (define (same-signs?)
      (or (check-signs? p? p? p? p?)
          (check-signs? n? n? n? n?)))
    (cond ((same-signs?)
           (make-interval (* xu yu)
                          (* xl yl)))
          ((check-signs? p? p? p? n?)
           (make-interval (* xu yu)
                          (* xu yl)))
          ((check-signs? p? p? n? n?)
           (make-interval (* xl yu)
                          (* xu yl)))
          ((check-signs? p? n? p? p?)
           (make-interval (* xu yu)
                          (* xl yu)))
          ((check-signs? p? n? p? n?)
           (make-interval (* xl yl)
                          (* xl yu)))
          ((check-signs? p? n? n? n?)
           (make-interval (* xl yl)
                          (* xu yl)))
          ((check-signs? n? n? p? p?)
           (make-interval (* xl yu)
                          (* xu yl)))
          ((check-signs? n? n? p? n?)
           (make-interval (* xl yl)
                          (* xl yu)))
          ((check-signs? n? n? n? n?)
           (make-interval (* xu yu)
                          (* xl yl)))
          (else "Fallout!"))))
;; MattsDiary: What do you mean, more than two multiplications? Wait.

(define (matt-examine-mult2 f)
  (let ((pp (make-interval 3 2))
        (pn (make-interval 3 -5))
        (pn2 (make-interval 1 -0.5))
        (nn (make-interval -5 -7)))
    (list (f pp pp)
          (f pp pn)
          (f pp nn)
          (f pn pp)
          (f pn pn2) ;; Ah.
          (f pn nn)
          (f nn pp)
          (f nn pn)
          (f nn nn))))
;; The sign isn't enough to discern absolute values if there's both signs in
;; both intervals.

;; Attempt #3. This one should be correct, though it feels very suboptimal to
;; me.
(define (mul-interval x y)
  (let ((xu (upper-bound x))
        (xl (lower-bound x))
        (yu (upper-bound y))
        (yl (lower-bound y)))
    (define p? positive?)
    (define n? negative?)
    (define (check-signs? a b x y) ;; pass functions
      (and (a xu)
           (b xl)
           (x yu)
           (y yl)))
    (define (same-signs?)
      (or (check-signs? p? p? p? p?)
          (check-signs? n? n? n? n?)))
    (cond ((same-signs?)
           (make-interval (* xu yu)
                          (* xl yl)))
          ((check-signs? p? p? p? n?)
           (make-interval (* xu yu)
                          (* xu yl)))
          ((check-signs? p? p? n? n?)
           (make-interval (* xl yu)
                          (* xu yl)))
          ((check-signs? p? n? p? p?)
           (make-interval (* xu yu)
                          (* xl yu)))
          ((check-signs? p? n? p? n?)
           (let ((p1 (* xu yu))
                 (p2 (* xu yl))
                 (p3 (* xl yu))
                 (p4 (* xl yl)))
             (make-interval (max p1 p2 p3 p4)
                            (min p1 p2 p3 p4))))
          ((check-signs? p? n? n? n?)
           (make-interval (* xl yl)
                          (* xu yl)))
          ((check-signs? n? n? p? p?)
           (make-interval (* xl yu)
                          (* xu yl)))
          ((check-signs? n? n? p? n?)
           (make-interval (* xl yl)
                          (* xl yu)))
          ((check-signs? n? n? n? n?)
           (make-interval (* xu yu)
                          (* xl yl))))))
;; Will I make a more optimal version? Find out in the next episode of
;; Dragonball SICP.

;; MattsDiary: checked online and was surprised to discover that many solutions
;; are just as complicated. While my solution may be ugly, at least it's ugly on
;; par.
(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i)
        (upper-bound i))
     2))

(define (width i)
  (/ (- (upper-bound i)
        (lower-bound i))
     2))

;; Exercise 2.12: Define a constructor make-center-percent that takes a center
;; and a percentage tolerance and produces the desired interval. You must also
;; define a selector percent that produces the percentage tolerance for a given
;; interval. The center selector is the same as the one shown above.
(define (of-percent x p)
  (* x (+ 1 (* p 0.01))))
(define (make-center-percent c t)
  (make-interval (of-percent c t)
                 (of-percent c (- t))))
(define (percent x)
  (let* ((xu (upper-bound x))
         (c (center x)))
    (* 100 (- (/ xu c) 1))))

;;text
(define (par1 r1 r2)
  (div-interval
   (mul-interval r1 r2)
   (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval
     one
     (add-interval
      (div-interval one r1)
      (div-interval one r2)))))

;; Exercise 2.14: Demonstrate that Lem is right. Investigate the behavior of the
;; system on a variety of arithmetic expressions. Make some intervals A and B,
;; and use them in computing the expressions A/A and A/B. You will get the most
;; insight by using intervals whose width is a small percentage of the center
;; value. Examine the results of the computation in center-percent form (see
;; Exercise 2.12).
