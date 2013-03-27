;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.3.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.3.1.rkt

;; Provide a data definition that describes the class of lists of shapes.
;; The class of shapes was defined in exercise 7.4.1.
;; Create a sample list that represents the face of figure 10.3.6 and name it
;; FACE -- assume a canvas of size 300 by 100.
;; Develop the template fn-lis-of-shapes, which outlines functions that consume a
;; list-of-shapes.  

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

(define FACE
  (cons (make-circle (make-posn 50 50) 40 'red)
        (cons (make-rectangle (make-posn 30 20) 5 5 'blue)
              (cons (make-rectangle (make-posn 65 20) 5 5 'blue)
                    (cons (make-rectangle (make-posn 40 75) 20 10 'red)
                          (cons (make-rectangle (make-posn 45 35) 10 30 'blue)
                                empty))))))
