;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.1.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.1.3.rkt

;; Develop the function area, which consumes either a circle or a square and
;; computes the area.

(define-struct square (corner length))
;; where corner is a posn and length is a number
;; (make-square (make-posn 2 20) 3)

(define-struct circle (center radius))
;; where center is a posn and radius is a number
;; (make-circle (make-posn 10 99) 1)

;; area : shape -> number
;; Compute the area of a-shape
(define (area a-shape)
  (cond
    [(square? a-shape) (sqr (square-length a-shape))]
    [(circle? a-shape) (* pi (sqr (circle-radius a-shape)))]))

;; Tests

(area (make-square (make-posn 2 20) 3))
;; ]=> 9
(area (make-circle (make-posn 10 99) 3))
;; ]=> 28.27431
