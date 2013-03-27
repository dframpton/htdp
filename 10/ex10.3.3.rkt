;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.3.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.3.3.rkt

;; Use the template fun-for-losh to develop translate-losh. The function
;; consumes a list-of-shapes and a number delta. The result is a list of shapes
;; where each of them has been moved by delta pixels in the x direction. *The
;; function has no effect on the canvas*.

;; A shape is either
;; - (make-circle P N C)
;; - (make-rectangle P N N C)
;; where P is a posn,
;;       N is a number, and
;;       C is a symbol.

(define-struct circle (center radius color))
(define-struct rectangle (corner width height color))

#|
;; Template:
(define (fn-shape shape)
  (cond
    [(circle? shape)
     (circle-center shape) ...
     (circle-radius shape) ...
     (circle-color shape) ...]
    [(rectangle? shape)
     (rectangle-corner shape) ...
     (rectangle-width shape) ...
     (rectangle-height shape) ...
     (rectangle-color shape) ...]))
|#

;; A list of shapes is either
;; 1. empty
;; 2. (cons shape list-of-shapes)

#|
;; Template
(define (fn-list-of-shapes shapes)
  (cond
    [(empty? shapes) ...]
    [else (first shapes) ...
          (fn-list-of-shapes (rest shapes)) ...]))
|#

;; translate-shape : shape number -> boolean
;; Move a shape in the x direction
(define (translate-shape shape delta)
  (cond
    [(circle? shape)
     (make-circle
      (make-posn (+ delta (posn-x (circle-center shape)))
                 (posn-y (circle-center shape)))
      (circle-radius shape)
      (circle-color shape))]
     [(rectangle? shape)
      (make-rectangle
       (make-posn (+ delta (posn-x (rectangle-corner shape)))
                  (posn-y (rectangle-corner shape)))
       (rectangle-width shape)
       (rectangle-height shape)
       (rectangle-color shape))]))

;; translate-shapes : list-of-shapes number -> list-of-shapes
;; Move a list of shapes a given number of pixels in the x direction
(define (translate-shapes shapes delta)
  (cond
    [(empty? shapes) empty]
    [else (cons (translate-shape (first shapes) delta)
                (translate-shapes (rest shapes) delta))]))

;; Tests
(translate-shapes empty 50)
(translate-shapes
 (cons (make-circle (make-posn 50 50) 50 'red)
       (cons (make-rectangle (make-posn 0 0) 100 100 'blue)
             empty)) 50)
