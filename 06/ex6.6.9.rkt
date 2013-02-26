;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.9) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.9.rkt

;; Use the template fun-for-rect to develop in-rectangle?. The function
;; consumes a rectangle structure and a posn and determines whether or not the
;; pixel is inside the rectangle. A pixel is within a rectangle if its
;; horizontal and vertical distances to the upper-left corner are positive and
;; smaller than the width and height of the rectangle, respectively.

(define-struct rectangle (corner width height color))
;; A circle is a structure: (make-circle corner width height color)
;; where corner is a posn, width and height numbers, and color a symbol

#|
;; fun-for-rect : rectangle -> ???
(define (fun-for-rect r)
  ... (rectangle-corner r) ...
  ... (rectangle-width r) ...
  ... (rectangle-height r) ...
  ... (rectangle-color r) ...)
|#

;; in-rectangle? : rectangle posn -> boolean
;; Determine whether a pixel is within the rectangle
(define (in-rectangle? r pixel)
  (and (<= (posn-x (rectangle-corner r))
           (posn-x pixel)
           (+ (posn-x (rectangle-corner r))
              (rectangle-width r)))
       (<= (posn-y (rectangle-corner r))
           (posn-y pixel)
           (+ (posn-y (rectangle-corner r))
              (rectangle-height r)))))

;; I didn't at first think that </<= could be used on more than two operands,
;; being stuck in a Python mind-set for comparisons. I can now see that we are
;; basically testing if the x coord of the pixel is between the top left corner
;; and bottom right corner of the rectangle.

(define TEST-RECT (make-rectangle (make-posn 2 3) 3 2 'blue))
(define PIXEL-1 (make-posn 8 6))
(define PIXEL-2 (make-posn 4 4))

;; Tests
(in-rectangle? TEST-RECT PIXEL-1)
(in-rectangle? TEST-RECT PIXEL-2)
