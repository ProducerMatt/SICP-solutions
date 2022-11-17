(use-modules (pict))

;; ;; Procedures that are required for use

;; ;; Exercise 2.46
;; (define (make-vect x y)
;; (define (xcor-vect v)
;; (define (ycor-vect v)
;; (define (add-vect v w)
;; (define (sub-vect v w)
;; (define (scale-vect s v)
;;
;; ;; Exercise 2.47
;; (define (make-frame origin edge1 edge2)
;; (define (origin-frame F)
;; (define (edge1-frame F)
;; (define (edge2-frame F)
;;
;; ;; Exercise 2.48
;; (define (make-segment start end)
;; (define (start-segment seg)
;; (define (end-segment seg)

(define (frame-coord-map frame)
  ;; Returns a function for adjusting a frame by a vector
  (lambda (v)
    (add-vect
     (origin-frame frame)
     (add-vect
      (scale-vect (xcor-vect v)
                  (edge1-frame frame))
      (scale-vect (ycor-vect v)
                  (edge2-frame frame))))))
(define (draw-line start end)
  ;; take two vectors, returns a line SVG object for pict
  (line (xcor-vect start)
        (ycor-vect start)
        (xcor-vect end)
        (ycor-vect end)))
(define (segments->painter segment-list)
  ;; takes a list of segments, returns a "painter" lambda, which applies a frame
  ;; to those segments and then maps over the result with draw-line to make a
  ;; list of SVG line objects which pict can combine.
  (lambda (frame)
    (map
     (lambda (segment)
       (draw-line
        ((frame-coord-map frame)
         (start-segment segment))
        ((frame-coord-map frame)
         (end-segment segment))))
     segment-list)))
;; NOTE: in the text, draw-line is a function which triggers an action in some
;; graphics driver, and returns nothing. Because of this, (map) was originally
;; (for-each). Thus the final result would have been thrown away.

(define (paint-lines painter)
  ;; use pict to compile an SVG with the elements described by painter
  (define picture-size 500) ; <- pixels
  (let ((Frame (make-frame (make-vect 0 0)
                           (make-vect picture-size 0)
                           (make-vect 0 picture-size)))
    (apply lt-superimpose
           (painter Frame))))

;; ;; Define some shapes
;; ;; Exercise 2.49
;; (define outline
;; (define frame-X
;; (define diamond
;; (define wave

;; then save to disk like this:
(pict->file (paint-lines diamond)
            "2/pict/testline.svg")

;; If you have multiple line objects that need to be merged together like in
;; (beside), just use (append):
(define (beside painter1 painter2)
  (let ((split-point (make-vect 0.5 0.0)))
    (let ((paint-left  (transform-painter
                        painter1
                        (make-vect 0.0 0.0)
                        split-point
                        (make-vect 0.0 1.0)))
          (paint-right (transform-painter
                        painter2
                        split-point
                        (make-vect 1.0 0.0)
                        (make-vect 0.5 1.0))))
      (lambda (frame)
        (append ;; <- the key change
         (paint-left frame)
         (paint-right frame))))))

;; --- End of Exercise ---


;; Side node:
;; A related Guile tip for this section. Have you encountered little bugs from
;; procedures mixing integers and floats? One solution for this problem is
;; making your constructors force a type when they're created. You can force
;; integers to floating point with this:
(define (float x)
  (if (inexact? x)
      x
      (exact->inexact x)))
;; And you can force floats to rational numbers with this:
(define (rat x)
  (define dx 1/100000)
  (if (exact? x)
      x
      (rationalize
       (inexact->exact x)
       dx)))
