;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.2.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.2.3.rkt

;; Define the program triangle. It consumes the length of a triangle's side and
;; the perpendicular height. The program produces the area of the triangle.

(define (triangle length height)
  (/ (* length height) 2))
