;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3.3.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex3.3.5.rkt

;; Develop the program height, which computes the height that a rocket reaches
;; in a given amount of time. If the rocket accelerates at a constant rate g,
;; it reaches a speed of g · t in t time units and a height of 1/2 * v * t
;; where v is the speed at t.

;; height : number number -> number
;; Compute the height that a rocket reaches in a given amount of time.
(define (height acceleration time)
  (height-speed time (speed-time acceleration time)))
  
;; height-speed : number number -> number
;; Compute height a rocket reaches from speed and time.
(define (height-speed speed time)
  (* 1/2 speed time))

;; speed-time : number number -> number
;; Compute speed a rocket reaches given time.
(define (speed-time acceleration time)
  (* acceleration time))

;; Tests
(speed-time 10 1)
(height-speed 10 5)
(height 10 10)
