;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.2.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.2.3.rkt

;; Provide a data definition for the class of list of booleans. The class
;; contains all arbitrarily large lists of booleans.

;; A list-of-booleans is either:
;; 1. the empty list, empty
;; 2. (cons b lob) where b is a boolean and lob is a list of booleans

;; Examples
empty
(cons true empty)
(cons false (cons true empty))
