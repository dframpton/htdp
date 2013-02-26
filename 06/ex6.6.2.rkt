;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.6.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.6.2.rkt

;; Use fun-for-circle to develop draw-a-circle. The function consumes a circle
;; structure and draws the corresponding circle on the screen.

(define-struct circle (center radius color))

#|
;; fun-for-circle : circle -> ???
(define (fun-for-circle a-circle)
  ... (circle-center a-circle) ...
  ... (circle-radius a-circle) ...
  ... (circle-color a-circle) ...)
|#

;; draw-a-circle : circle -> boolean
(define (draw-a-circle a-circle)
  (draw-circle (circle-center a-circle)
               (circle-radius a-circle)
               (circle-color a-circle)))

;; Tests
(start 300 300)
(draw-a-circle (make-circle (make-posn 150 150) 50 'red))
