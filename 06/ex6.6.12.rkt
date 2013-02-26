;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.12) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.12.rkt

;; Develop draw-and-clear-rectangle, which draws a rectangle, sleeps for a
;; while, and then clears the rectangle. Finally, create a rectangle and use
;; the functions of this exercise set to move it four times.

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

;; draw-and-clear-rectangle : rectangle -> boolean
;; Draw a rectangle, pause, then clear it
(define (draw-and-clear-rectangle r)
  (and (draw-a-rectangle r)
       (sleep-for-a-while 1)
       (clear-a-rectangle r)))

;; clear-a-rectangle : rectangle -> boolean
;; Clear a rectangle on the canvas
(define (clear-a-rectangle r)
  (clear-solid-rect (rectangle-corner r)
                    (rectangle-width r)
                    (rectangle-height r)
                    (rectangle-color r)))

;; draw-a-rectangle : rectangle -> boolean
;; Draw a rectangle on the canvas
(define (draw-a-rectangle r)
  (draw-solid-rect (rectangle-corner r)
                   (rectangle-width r)
                   (rectangle-height r)
                   (rectangle-color r)))

;; translate-rectangle : rectangle number -> boolean
;; Move rectangle to the right
(define (translate-rectangle r delta)
  (make-rectangle (make-posn
                   (+ delta (posn-x (rectangle-corner r)))
                   (posn-y (rectangle-corner r)))
                  (rectangle-width r)
                  (rectangle-height r)
                  (rectangle-color r)))

;; move-rectangle : number rectangle -> rectangle
;; Draw and clear a rectangle, translate it by delta pixels
(define (move-rectangle delta a-rectangle)
  (cond
    [(draw-and-clear-rectangle a-rectangle) 
     (translate-rectangle a-rectangle delta)]
    [else a-rectangle]))

(define TEST-RECT (make-rectangle (make-posn 10 10) 50 20 'blue))

;; Tests
(start 300 300)
(draw-a-rectangle
 (move-rectangle 10
                 (move-rectangle 10
                                 (move-rectangle 10 TEST-RECT))))
