;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.7.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.7.1.rkt

;; Develop the function draw-next-part, which draws the pieces of a hangman
;; figure. The function consumes one of the seven symbols:
;; 'right-leg, 'left-leg, 'left-arm, 'right-arm, 'body, 'head, 'noose      
;; It always returns true and draws the matching part of the figure.

;; draw-next-part : symbol -> boolean
;; Draw the specified part of the figure
(define (draw-next-part part)
  (cond
    [(symbol=? part 'noose)
     (and
      (draw-solid-line (make-posn 0 10)
                       (make-posn 100 10)
                       'black)
      (draw-solid-line (make-posn 100 10)
                       (make-posn 100 30)
                       'black))]
    [(symbol=? part 'head)
     (draw-circle (make-posn 100 50) 20 'black)]
    [(symbol=? part 'body)
     (draw-solid-line (make-posn 100 70)
                      (make-posn 100 130)
                      'black)]
    [(symbol=? part 'left-arm)
     (draw-solid-line (make-posn 100 100)
                      (make-posn 40 80)
                      'black)]
    [(symbol=? part 'left-leg)
     (draw-solid-line (make-posn 100 130)
                      (make-posn 60 180)
                      'black)]
    [(symbol=? part 'right-arm)
     (draw-solid-line (make-posn 100 100)
                      (make-posn 160 80)
                      'black)]
    [(symbol=? part 'right-leg)
     (draw-solid-line (make-posn 100 130)
                      (make-posn 140 180)
                      'black)]))
;; Tests
(start 200 200)
(draw-next-part 'noose)
(draw-next-part 'head)
(draw-next-part 'body)
(draw-next-part 'left-arm)
(draw-next-part 'right-arm)
(draw-next-part 'left-leg)
(draw-next-part 'right-leg)
