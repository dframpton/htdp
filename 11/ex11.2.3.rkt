;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11.2.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp")))))

;; ex11.2.3.rkt

;; Develop apply-n. The function consumes a natural number, n. It applies the
;; function move from exercise 10.3.6 n times to FACE, the list of shapes from
;; exercise 10.3.1. Each application should translate the shape by one pixel.
;; The purpose of the function is to simulate a continuously moving shape on a
;; canvas, the last missing piece of the extended exercise 10.3.

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

;; draw-shapes : list-of-shapes -> boolean
;; Draw each shape in a list of shapes
(define (draw-shapes shapes)
  (cond
    [(empty? shapes) true]
    [else (and (draw-shape (first shapes))
               (draw-shapes (rest shapes)))]))

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

;; move-picture : number list-of-shapes -> list-of-shapes
;; Move each shape on the screen by delta pixels
(define (move-picture delta shapes)
  (cond
    [(and (clear-shapes shapes)
          (draw-shapes (translate-shapes shapes delta))
          (sleep-for-a-while 1))
     (translate-shapes shapes delta)]
    [else shapes]))

;; Tests
(define FACE
  (cons (make-circle (make-posn 50 50) 50 'red)
        (cons (make-rectangle (make-posn 30 20) 10 10 'blue)
              (cons (make-rectangle (make-posn 65 20) 10 10 'blue)
                    (cons (make-rectangle (make-posn 40 75) 10 10 'blue)
                          (cons (make-rectangle (make-posn 40 75) 25 10 'blue)
                                (cons (make-rectangle (make-posn 45 35) 15 30 'blue)
                                      empty)))))))

;; apply-n : number -> boolean
;; Move a face n steps across the screen
(define (apply-n n)
  (cond
    [(zero? n) FACE]
    [else (move-picture 1 (apply-n (sub1 n)))]))

;; Tests
(start 300 100)
(apply-n 200)
