;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.4.5) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.4.5.rkt

;; Develop the function draw-and-clear-shape. The function consumes a shape,
;; draws it, sleeps for a while, and clears it. If all the effects work out,
;; it produces true.

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

;; draw-and-clear-shape : shape -> boolean
;; Draw a shape, pause, then clear it
(define (draw-and-clear-shape shape)
  (and (draw-shape shape)
       (sleep-for-a-while 1)
       (clear-shape shape)))

;; Tests
(start 300 300)
(draw-and-clear-shape (make-circle (make-posn 150 150) 50 'red))
