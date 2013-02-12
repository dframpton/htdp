;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3.3.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex3.3.3.rkt

;; Develop area-cylinder. The program consumes the radius of the cylinder's
;; base disk and its height. Its result is the surface area of the cylinder.

(define PI 3.14159)

;; area-cylinder : number number -> number
;; Compute the area of cylinder.
(define (area-cylinder radius height)
  (+ (* 2 (area-circle radius))
     (* (circumference radius) height)))

;; area-circle : number -> number
;; Compute the area of a circle.
(define (area-circle radius)
  (* PI (sqr radius)))

;; circumference : number -> number
;; Compute the circumference of a circle.
(define (circumference radius)
  (* 2 PI radius))

;; Tests
(area-cylinder 5 8)
