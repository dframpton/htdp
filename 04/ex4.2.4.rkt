;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.2.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.2.4.rkt

;; Reformulate the test cases for exercises 2.2.1, 2.2.2, 2.2.3, and 2.2.4
;; as claims.

;; ex2.2.1
(define (fahrenheit->celsius f)
  (* (- f 32) 5/9))

;; ex2.2.2
(define (dollar->euro dollar)
  (* dollar 0.73600))

;; ex2.2.3
(define (triangle length height)
  (/ (* length height) 2))

;; ex2.2.4
(define (convert3 a b c)
  (+ (* c 100) (* b 10) a))

(= (fahrenheit->celsius 212) 100)
(= (fahrenheit->celsius 32) 0)
(= (dollar->euro 100) 73.60)
(= (triangle 10 6) 30)
(= (convert3 1 2 3) 321)
(= (convert3 9 8 7) 789)
