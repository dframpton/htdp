;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.4.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.4.3.rkt

;; Use the template fun-for-shape to develop translate-shape. The function
;; consumes a shape and a number delta, and produces a shape whose key position
;; is moved by delta pixels in the x direction.

(define-struct circle (center radius color))
(define-struct rectangle (corner width height color))

;; A shape can be:
;; (make-circle p n s)
;; (make-rectangle p n n s)
;; Where p is a posn, n is a number, and s is a symbol.

;; Examples:
;; (make-circle (make-posn 50 50) 10 'red)
;; (make-rectangle (make-posn 10 10) 100 50 'blue)

;; fn-for-shape : shape -> ???
;; (define (fn shape)
;;   (cond
;;     [(circle? shape)
;;      ... (circle-center shape) ... 
;;      ... (circle-radius shape) ... 
;;      ... (circle-color shape)... ]
;;     [(rectangle? shape)
;;      ... (rectangle-corner shape) ... 
;;      ... (rectangle-width shape) ...
;;      ... (rectangle-height shape) ...
;;      ... (rectangle-color shape)... ]))

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

;; Tests
(translate-shape (make-circle (make-posn 150 150) 50 'red) 50)
;; ]=> (make-circle (make-posn 200 150) 50 'red)
(translate-shape (make-rectangle (make-posn 50 10) 200 50 'blue) 50)
;; ]=> (make-rectangle (make-posn 100 10) 200 50 'blue)
