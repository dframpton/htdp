;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.1.rkt

;; Provide a structure definition and a data definition for representing colored
;; circles. A circle is characterized by three pieces of information: its
;; center, its radius, and the color of its perimeter. The first is a posn
;; structure, the second a number, and the third a (color) symbol.

;; Develop the template fun-for-circle, which outlines a function that consumes
;; circles. Its result is undetermined.

(define-struct circle (center radius color))
;; A circle is a structure: (make-circle center radius color)
;; where center is a posn, radius is a number, and color is a symbol

#|
;; fun-for-circle : circle -> ???
(define (fun-for-circle a-circle)
  ... (circle-center a-circle) ...
  ... (circle-radius a-circle) ...
  ... (circle-color a-circle) ...)
|#
