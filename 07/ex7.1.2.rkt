;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.1.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.1.2.rkt

;; Test perimeter with the examples.

(define-struct square (corner length))
;; where corner is a posn and length is a number
;; (make-square (make-posn 2 20) 3)

(define-struct circle (center radius))
;; where center is a posn and radius is a number
;; (make-circle (make-posn 10 99) 1)

;; perimeter : shape -> number
;; Compute the perimeter of a-shape
(define (perimeter a-shape)
  (cond
    [(square? a-shape) (* (square-length a-shape) 4)]
    [(circle? a-shape) (* (* 2 (circle-radius a-shape)) pi)]))

;; Tests

(perimeter (make-square (make-posn 2 20) 3))
;; ]=> 12
(perimeter (make-circle (make-posn 10 99) 3))
;; ]=> 18.84954
