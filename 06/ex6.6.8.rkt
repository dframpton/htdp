;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.8) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.8.rkt

;; Use the template fun-for-rect to develop draw-a-rectangle. The function
;; consumes a rectangle structure and draws the corresponding rectangle on the
;; screen. In contrast to circles, the entire rectangle is painted in the
;; matching color. Remember to use (start 300 300) to create the canvas before
;; testing the function.

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

;; draw-a-rectangle : rectangle -> boolean
;; Draw a rectangle on the canvas
(define (draw-a-rectangle r)
  (draw-solid-rect (rectangle-corner r)
                   (rectangle-width r)
                   (rectangle-height r)
                   (rectangle-color r)))

;; Tests
(start 300 300)
(draw-a-rectangle (make-rectangle (make-posn 50 50) 150 50 'blue))
