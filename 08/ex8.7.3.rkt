;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.7.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.7.3.rkt

;; Suppose the Definitions window contains:

(define-struct ball (x y speed-x speed-y))

;; Determine the results of the following expressions:

(number? (make-ball 1 2 3 4))
;; false

(ball-speed-y (make-ball (+ 1 2) (+ 3 3) 2 3))
;; 3

(ball-y (make-ball (+ 1 2) (+ 3 3) 2 3))
;; 6

;; Also check how DrScheme deals with the following expressions:

(number? (make-ball 1 3 4))
;; make-ball: expects 4 arguments, but found only 3

(ball-x (make-posn 1 2))
;; ball-x: expects a ball, given (make-posn 1 2)

(ball-speed-y 5)
;; ball-speed-y: expects a ball, given 5
