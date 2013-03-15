;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.5.8) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.5.8.rkt

;; Develop the function draw-circles, which consumes a posn p and a list of
;; numbers. Each number of the list represents the radius of some circle. The
;; function draws concentric red circles around p on a canvas, using the
;; operation draw-circle. Its result is true, if it can draw all of them;
;; otherwise an error has occurred and the function does not need to produce
;; a value.

;; draw-circles : list-of-nums posn -> boolean
;; Draw concentric red circles around the posn on a canvas
(define (draw-circles radii center)
  (cond
    [(empty? radii) true]
    [else (and (draw-circle center (first radii) 'red)
               (draw-circles (rest radii) center))]))

;; Use the teachpack draw.ss; create the canvas with (start 300 300). Recall
;; that draw.ss provides the structure definition for posn (see section 7.1).

;; Tests
(start 300 300)
(draw-circles empty (make-posn 150 150))
(draw-circles (cons 100 (cons 75 (cons 50 (cons 25 empty))))
              (make-posn 150 150))
