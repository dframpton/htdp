;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.2.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.2.4.rkt

;; Develop the function switch. It consumes two symbols, each of which stands
;; for a traffic light color, and produces true. Its effects are to clear the
;; bulb for the first color and then to draw the second bulb.

;; Dimensions of traffic light    
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

;; Positions of the bulbs 
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

;; Draw the light with the red bulb turned on
(start WIDTH HEIGHT)
(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
(draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

;; clear-bulb : symbol -> boolean
;; Clear disk and display matching circle (eg, stroke not solid)
(define (clear-bulb colour)
  (cond
    [(symbol=? colour 'red)
     (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS)
          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(symbol=? colour 'yellow)
     (and (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS)
          (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(symbol=? colour 'green)
     (and (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS)
          (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]))

;; draw-bulb : symbol -> boolean
;; Clear circle and display matching disk (eg, solid not stroke)
(define (draw-bulb colour)
  (cond
    [(symbol=? colour 'red)
     (and (clear-circle (make-posn X-BULBS Y-RED) BULB-RADIUS)
          (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(symbol=? colour 'yellow)
     (and (clear-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS)
          (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(symbol=? colour 'green)
     (and (clear-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS)
          (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]))

;; switch : symbol symbol -> boolean
;; Turn off one bulb and turn on another
(define (switch colour1 colour2)
  (and (clear-bulb colour1)
       (draw-bulb colour2)))
