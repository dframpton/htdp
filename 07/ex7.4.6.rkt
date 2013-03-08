;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.4.6) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.4.6.rkt

;; Develop move-shape, which moves a shape across the canvas. The function
;; consumes a number (delta) and a shape. The function should draw-and-clear
;; the shape and return a new shape that has been translated by delta pixels.
;; Use this function several times to move a shape across the canvas.

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

;; move-shape : shape number -> boolean
;; Move a shape across the canvas
(define (move-shape shape delta)
  (cond
    [(draw-and-clear-shape shape)
     (translate-shape shape delta)]
    [else (translate-shape shape delta)]))

;; Tests
(define TEST-RECT (make-rectangle (make-posn 50 10) 200 50 'blue))

(start 300 300)
(move-shape (move-shape (move-shape (move-shape TEST-RECT 10) 10) 10) 10)
