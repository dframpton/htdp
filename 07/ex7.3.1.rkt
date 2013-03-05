;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.3.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.3.1.rkt

;; Modify perimeter so that it also process rectangles. For our purposes, the
;; description of a rectangle includes its upper-left corner, its width, and
;; its height.

;; Data Definitions:

(define-struct circle (center radius))
;; A circle is a structure:
;;          (make-circle p s)
;;    where p is a posn, s a number;

(define-struct square (nw length))
;; A square is a structure:
;;          (make-square p s)
;;    where p is a posn, s a number.

(define-struct rectangle (nw width height))
;; A rectangle is a structure:
;;          (make-rectangle p s t)
;;    where p is a posn, and s and t are numbers.

;; A shape is either a circle, a square, or a rectangle.

;; Final Definitions:

;; perimeter : shape -> number
;; to compute the perimeter of a-shape
(define (perimeter a-shape)
  (cond
    [(circle? a-shape)
     (perimeter-circle a-shape)]
    [(square? a-shape)
     (perimeter-square a-shape)]
    [(rectangle? a-shape)
     (perimeter-rectangle a-shape)]))

;; perimeter-circle : circle -> number
;; to compute the perimeter of a-circle
(define (perimeter-circle a-circle)
  (* (* 2 (circle-radius a-circle)) pi))

;; perimeter-square : square -> number
;; to compute the perimeter of a-square
(define (perimeter-square a-square)
  (* (square-length a-square) 4))

;; perimeter-rectangle : rectangle -> number
;; to compute the perimeter of a-rectangle
(define (perimeter-rectangle a-rectangle)
  (+ (* (rectangle-width a-rectangle) 2)
     (* (rectangle-height a-rectangle) 2)))
