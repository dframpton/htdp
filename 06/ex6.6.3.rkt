;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.3.rkt

;; Use the template fun-for-circle to develop in-circle?. The function consumes
;; a circle structure and a posn and determines whether or not the pixel is
;; inside the circle. All pixels whose distance to the center is less or equal
;; to the radius are inside the circle; the others are outside.

(define-struct circle (center radius color))
;; where center is a posn, radius a number, and color a symbol

#|
;; fun-for-circle : circle -> ???
(define (fun-for-circle a-circle)
  ... (circle-center a-circle) ...
  ... (circle-radius a-circle) ...
  ... (circle-color a-circle) ...)
|#

(define TEST-CIRCLE (make-circle (make-posn 6 2) 1 'blue))
(define PIXEL-1 (make-posn 6 1.5))
(define PIXEL-2 (make-posn 8 6))

;; in-circle? : circle posn -> boolean
;; Determine whether a pixel is within the circle
(define (in-circle? c pixel)
  (and (>= (circle-radius c)
           (abs (- (posn-x (circle-center c))
                   (posn-x pixel))))
       (>= (circle-radius c)
           (abs (- (posn-y (circle-center c))
                   (posn-y pixel))))))

;; Tests
(in-circle? TEST-CIRCLE PIXEL-1)
(in-circle? TEST-CIRCLE PIXEL-2)
