;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.2.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.2.3.rkt

;; Distinguish the syntactically legal from illegal sentences, and explain why. 

;; 1. (x)
;; Illegal. There should be one or more expressions following 'x' before the
;; closing paren.

;; 2. (+ 1 (not x))
;; Legal. Correct prefix notation primitive operation followed by one or more
;; expressions, both for the addition and the nested 'not'.

;; 3. (+ 1 2 3)
;; Legal. Correct prefix notation; primitive operation followed by one or more
;; expressions.
