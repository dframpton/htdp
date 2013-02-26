;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.6) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.6.rkt

;; Define the function draw-and-clear-circle, which draws a circle structure,
;; waits for a short time, and clears it. To implement a waiting period, the
;; teachpack draw.ss provides the function sleep-for-a-while. It consumes a
;; number and puts the program to sleep for that many seconds; its result is
;; true. For example, (sleep-for-a-while 1) waits for one second.

(define-struct circle (center radius color))
;; where center is a posn, radius a number, and color a symbol

;; draw-and-clear-circle : circle -> boolean
;; Draw a circle, pause, then clear it
(define (draw-and-clear-circle c)
  (and (draw-a-circle c)
       (sleep-for-a-while 1)
       (clear-a-circle c)))

;; clear-a-circle : circle -> boolean
;; Clear a circle on the canvas
(define (clear-a-circle c)
  (clear-circle (circle-center c)
                (circle-radius c)
                (circle-color c)))

;; draw-a-circle : circle -> boolean
;; Draw a circle on the canvas
(define (draw-a-circle c)
  (draw-circle (circle-center c)
               (circle-radius c)
               (circle-color c)))

;; Tests
(start 300 300)
(draw-and-clear-circle (make-circle (make-posn 150 150) 50 'red))
