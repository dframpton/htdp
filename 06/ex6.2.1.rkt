;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.2.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.2.1.rkt

;; Evaluate the following expressions in order.

;; Open a canvas
(start 300 300)

;; Draw a red line
(draw-solid-line (make-posn 10 10) (make-posn 110 10) 'red)

;; Draw a blue rectangle
(draw-solid-rect (make-posn 10 30) 100 50 'blue)

;; Draw a yellow circle
(draw-circle (make-posn 110 30) 30 'yellow)

;; Draw a green disk
(draw-solid-disk (make-posn 10 80) 50 'green)

;; Close the canvas
(stop)
