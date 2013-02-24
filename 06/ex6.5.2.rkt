;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.5.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.5.2.rkt

;; Develop the function time->seconds, which consumes a time structure (see
;; exercise 6.4.2) and produces the number of seconds since midnight that the
;; time structure represents.

(define-struct time (hours minutes seconds))
;; A time is a structure: (make-time hours minutes seconds)
;; where hours, minutes, and seconds are numbers

;; time->seconds : time -> number
;; Calculate time in seconds since midnight from time structure
(define (time->seconds a-time)
  (+ (time-seconds a-time)
     (* (time-minutes a-time) 60)
     (* (time-hours a-time) 60 60)))

;; Tests
(= (time->seconds (make-time 0 0 0)) 0)
(= (time->seconds (make-time 0 0 1)) 1)
(= (time->seconds (make-time 0 1 0)) 60)
(= (time->seconds (make-time 1 0 0)) 3600)
(= (time->seconds (make-time 12 30 2)) 45002)
