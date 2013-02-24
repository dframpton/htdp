;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.4.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.4.2.rkt

;; Provide a structure definition and a data definition for representing points
;; in time since midnight. A point in time consists of three numbers: hours,
;; minutes, and seconds.

(define-struct time-since-midnight (hours minutes seconds))
;; A time-since-midnight is a structure
;; where hours, minutes, and seconds are numbers
