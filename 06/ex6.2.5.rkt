;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.2.5) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.2.5.rkt

;; The function next consumes the current color of a traffic light (as a symbol)
;; and produces the next color that the traffic light shows. That is, if the
;; input is 'green, it produces 'yellow; if it is 'yellow, it produces 'red;
;; and if it is 'red, it produces 'green. Its effect is to switch the traffic
;; light from the input color to the next color.

;; Replace the last three lines of the program fragment in figure 8 with
;; (draw-bulb 'red). This creates a traffic light that is red. Then use next to
;; switch the traffic light four times.

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

;; next : symbol -> symbol
;; Switch a traffic light's current color and return the next one 
(define (next current-color)
  (cond
    [(and (symbol=? current-color 'red) (switch 'red 'green))
     'green]
    [(and (symbol=? current-color 'yellow) (switch 'yellow 'red))
     'red]
    [(and (symbol=? current-color 'green) (switch 'green 'yellow))
     'yellow]))

;; (next 'red)
;; (next 'green)
;; (next 'yellow)
