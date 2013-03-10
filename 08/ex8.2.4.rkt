;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.2.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.2.4.rkt

;; Distinguish the syntactically legal from illegal sentences, and explain why.

;; 1. (define (f x) 'x)
;; Legal. Two or more variables after 'define', followed by an expression.

;; 2. (define (f 'x) x)
;; Illegal. Contains a symbol instead of a variable.

;; 3. (define (f x y) (+ 'y (not x)))
;; Legal. Two or more variables, followed by an expression consisting of two
;; legal primitive operations.
