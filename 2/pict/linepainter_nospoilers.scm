(use-modules (pict))

;; Procedures that are required for use are left as "TODO"

(define (make-frame origin edge1 edge2)
  "TODO")
(define (origin-frame F)
  "TODO")
(define (edge1-frame F)
  "TODO")
(define (edge2-frame F)
  "TODO")

(define (make-vect x y)
  "TODO")
(define (xcor-vect v)
  "TODO")
(define (ycor-vect v)
  "TODO")
(define (add-vect v w)
  "TODO")
(define (sub-vect v w)
  "TODO")
(define (scale-vect v s)
  "TODO")

(define (make-segment start end)
  "TODO")
(define (start-segment seg)
  "TODO")
(define (end-segment seg)
  "TODO")

(define (frame-coord-map frame)
  ;; Returns a function for adjusting a frame by a vector
  (lambda (v)
    (add-vect
     (origin-frame frame)
     (make-vect (* (xcor-vect v) (edge1-frame frame))
                (* (ycor-vect v) (edge2-frame frame))))))
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
  (define picture-size 100) ; <- pixels
  (let ((Frame (make-frame (make-vect 0 0)
                           picture-size
                           picture-size)))
    (apply lt-superimpose
           (painter Frame))))

;; then save to disk like this:
(pict->file (paint-lines diamond)
            "2/pict/testline.svg")

(define outline
  "TODO")
(define frame-X
  "TODO")
(define diamond
  "TODO")
(define wave
  "TODO")

;; NOTE: A related Guile tip for this section. Have you encountered little bugs
;; from procedures mixing integers and floats? One solution for this problem is
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
