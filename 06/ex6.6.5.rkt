;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.5) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.5.rkt

;; Use the template fun-for-circle to develop clear-a-circle. The function
;; consumes a circle structure and clears the corresponding circle on the
;; canvas.

(define-struct circle (center radius color))
;; where center is a posn, radius a number, and color a symbol

#|
;; fun-for-circle : circle -> ???
(define (fun-for-circle a-circle)
  ... (circle-center a-circle) ...
  ... (circle-radius a-circle) ...
  ... (circle-color a-circle) ...)
|#

;; clear-a-circle : circle -> boolean
;; Clear a circle on the canvas
(define (clear-a-circle c)
  (clear-circle (circle-center c)
                (circle-radius c)
                (circle-color c)))

;; draw-a-circle : circle -> boolean
;; Draw a circle on the canvas
(define (draw-a-circle c)
  (draw-circle (circle-center c)
               (circle-radius c)
               (circle-color c)))

;; Tests
(start 300 300)
(draw-a-circle (make-circle (make-posn 50 50) 25 'red))
;; (clear-a-circle (make-circle (make-posn 50 50) 25 'red))
;; ]=> true
