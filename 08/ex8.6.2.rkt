;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.6.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.6.2.rkt

;; Evaluate the following sequence of definitions.

(define RADIUS 10)
;; (define RADIUS 10)

(define DIAMETER (* 2 RADIUS))
;; (define DIAMETER (* 2 10))
;; (define DIAMETER 20)

(define CIRCUMFERENCE (* 3.14 DIAMETER))
;; (define CIRCUMFERENCE (* 3.14 20))
;; (define CIRCUMFERENCE 62.8)
