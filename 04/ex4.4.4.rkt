;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.4.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.4.4.rkt

;; Develop the function how-many, which consumes the coefficients a, b, and c
;; of a proper quadratic equation and determines how many solutions the
;; equation has.

;; The number of solutions for a quadratic equation depends on the values of a,
;; b, and c. If the coefficient a is 0, we say the equation is degenerate and
;; do not consider how many solutions it has. Assuming a is not 0, the equation
;; has:
;; two solutions if b^2 > 4 * a * c
;; one solution if b^2 = 4 * a * c
;; no solution if b^2 < 4 * a * c

;; how-many : number number number -> number
;; Determine how many solutions an equation has given the coefficients a, b, c.
;; Examples:
;; (how-many 1 0 -1) should give 2
;; (how-many 2 4 2) should give 1
(define (how-many a b c)
  (cond
    [(> (sqr b) (* 4 a c)) 2]
    [(= (sqr b) (* 4 a c)) 1]
    [else 0]))

;; Tests
(= (how-many 1 0 -1) 2)
(= (how-many 2 4 2) 1)
