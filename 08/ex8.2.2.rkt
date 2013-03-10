;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.2.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.2.2.rkt

;; Why are the following sentences syntactically legal?

;; 1. (define (f x) x)
;; 2. (define (f x) y)
;; 3. (define (f x y) 3)

;; The above are all legal as they all follow the form:
;; ( define ( <two or more variables> ) <expression> )

;; Explain why the following sentences are illegal definitions.

;; 1. (define (f 'x) x)
;; 2. (define (f x y z) (x))
;; 3. (define (f) 10)

;; The above are all illegal as they don't follow this form:
;; 1. A symbol is used, when it should be a variable.
;; 2. (x) is not a legal expression in this case.
;; 3. Two or more variables are expected after 'define'.
