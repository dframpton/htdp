;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3.3.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex3.3.4.rkt

;; Develop the function area-pipe. It computes the surface area of a pipe,
;; which is an open cylinder. The program consumes three values: the pipe's
;; inner radius, its length, and the thickness of its wall.

(define PI 3.14159)

;; area-pipe : number number number -> number
;; Compute the surface area of a pipe.
(define (area-pipe inner-radius length wall)
  (+ (* (circumference inner-radius) length)
     (* (circumference (+ inner-radius wall)) length)
     (* 2 (area-ring (+ inner-radius wall) inner-radius))))

;; area-circle : number -> number
;; Compute the area of a circle.
(define (area-circle radius)
  (* PI (sqr radius)))

;; area-ring : number number -> number
;; Compute the area of a ring.
(define (area-ring outer inner)
  (- (area-circle outer)
     (area-circle inner)))

;; circumference : number -> number
;; Compute the circumference of a circle.
(define (circumference radius)
  (* 2 PI radius))

;; Tests
(area-pipe 8 20 2)
(area-pipe 2 3 4)
