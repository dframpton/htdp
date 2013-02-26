;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.7.rkt

;; Provide a structure definition and a data definition for representing colored
;; rectangles. A rectangle is characterized by four pieces of information: its
;; upper-left corner, its width, its height, and its fill color. The first is a
;; posn structure, the second and third quantities are plain numbers, and the
;; last one is a color.

;; Develop the template fun-for-rect, which outlines a function that consumes
;; rectangles. Its result is undetermined.

(define-struct rectangle (corner width height color))
;; A circle is a structure: (make-circle corner width height color)
;; where corner is a posn, width and height numbers, and color a symbol

#|
;; fun-for-rect : rectangle -> ???
(define (fun-for-rect r)
  ... (rectangle-corner r) ...
  ... (rectangle-width r) ...
  ... (rectangle-height r) ...
  ... (rectangle-color r) ...)
|#
