;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.4.rkt

;; Use the template fun-for-circle to develop translate-circle. The function
;; consumes a circle structure and a number delta. The result is a circle whose
;; center is delta pixels to the right of the input. The function has no effect
;; on the canvas.

;; Geometric Translation: Moving a geometric shape along a straight line is
;; referred to as a translation.

(define-struct circle (center radius color))
;; where center is a posn, radius a number, and color a symbol

#|
;; fun-for-circle : circle -> ???
(define (fun-for-circle a-circle)
  ... (circle-center a-circle) ...
  ... (circle-radius a-circle) ...
  ... (circle-color a-circle) ...)
|#

;; translate-circle : circle number -> boolean
;; Move circle to the right
(define (translate-circle c delta)
  (make-circle (make-posn
                 (+ delta (posn-x (circle-center c)))
                 (posn-y (circle-center c)))
                (circle-radius c)
                (circle-color c)))

;; Test
(define TEST-CIRCLE (make-circle (make-posn 6 2) 1 'blue))
(translate-circle TEST-CIRCLE 10)
;; ]=> (make-circle (make-posn 16 2) 1 'blue)
