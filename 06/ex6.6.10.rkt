;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.10) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.10.rkt

;; Use the template fun-for-rect to develop translate-rectangle. The function
;; consumes a rectangle structure and a number delta. The result is a rectangle
;; whose upper-left corner is delta pixels to the right of the input. The
;; function has no effect on the canvas.

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

;; translate-rectangle : rectangle number -> boolean
;; Move rectangle to the right
(define (translate-rectangle r delta)
  (make-rectangle (make-posn
                 (+ delta (posn-x (rectangle-corner r)))
                 (posn-y (rectangle-corner r)))
                (rectangle-width r)
                (rectangle-height r)
                (rectangle-color r)))

;; Test
(define TEST-RECT (make-rectangle (make-posn 10 10) 50 20 'blue))
(translate-rectangle TEST-RECT 40)
;; ]=> (make-rectangle (make-posn 50 10) 50 20 'blue)
