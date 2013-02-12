;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3.3.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex3.3.2.rkt

;; Develop the program volume-cylinder. It consumes the radius of a cylinder's
;; base disk and its height; it computes the volume of the cylinder.

(define PI 3.14159)

;; volume-cylinder : number number -> number
;; Compute the volume of a cylinder.
(define (volume-cylinder radius height)
  (* (area-circle radius) height))

;; area-circle : number -> number
;; Compute the area of a circle.
(define (area-circle radius)
  (* PI (sqr radius)))

;; Tests
(volume-cylinder 3 2)
(volume-cylinder 5 10)
