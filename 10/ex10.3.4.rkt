;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.3.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.3.4.rkt

;; Use the template fun-for-losh to develop clear-losh. The function consumes a
;; list-of-shapes, erases each item on the list from the canvas, and returns true.

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

;; draw-shape : shape -> boolean
;; Draw a shape on the canvas
(define (draw-shape shape)
  (cond
    [(circle? shape)
     (draw-circle (circle-center shape)
                  (circle-radius shape)
                  (circle-color shape))]
    [(rectangle? shape)
     (draw-solid-rect (rectangle-corner shape)
                     (rectangle-width shape)
                     (rectangle-height shape)
                     (rectangle-color shape))]))

;; clear-shape : shape -> boolean
;; Erase a shape from the canvas
(define (clear-shape shape)
  (cond
    [(circle? shape)
     (clear-circle (circle-center shape)
                   (circle-radius shape)
                   (circle-color shape))]
    [(rectangle? shape)
     (clear-solid-rect (rectangle-corner shape)
                       (rectangle-width shape)
                       (rectangle-height shape)
                       (rectangle-color shape))]))

;; clear-shapes : list-of-shapes -> boolean
;; Erase each shape on the list from the canvas
(define (clear-shapes shapes)
  (cond
    [(empty? shapes) true]
    [else (and (clear-shape (first shapes))
               (clear-shapes (rest shapes)))]))

;; Tests
(start 300 300)
(draw-shape (make-circle (make-posn 50 50) 50 'red))
(draw-shape (make-rectangle (make-posn 0 0) 100 100 'blue))

(clear-shapes empty)
(clear-shapes
 (cons (make-circle (make-posn 50 50) 50 'red)
       (cons (make-rectangle (make-posn 0 0) 100 100 'blue)
             empty)))
