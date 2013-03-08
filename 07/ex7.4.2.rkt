;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.4.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.4.2.rkt

;; Use the template fun-for-shape to develop draw-shape. The function consumes
;; a shape and draws it on the canvas.

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

;; Tests
(start 300 300)
(draw-shape (make-circle (make-posn 150 150) 50 'red))
(draw-shape (make-rectangle (make-posn 50 10) 200 50 'blue))
