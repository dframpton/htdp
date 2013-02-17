;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex5.1.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp")))))

;; ex5.1.4.rkt

;; Develop what-kind. The function consumes the coefficients a, b, and c of a
;; quadratic equation. It then determines whether the equation is degenerate
;; and, if not, how many solutions the equation has. The function produces one
;; of four symbols: 'degenerate, 'two, 'one, or 'none (compare with ex4.4.4).

;; what-kind : number number number -> symbol
;; Determine how many solutions an equation has given the coefficients a, b, c.
;; Examples:
(define (what-kind a b c)
  (cond
    [(= a 0) 'degenerate]
    [(> (sqr b) (* 4 a c)) 'two]
    [(= (sqr b) (* 4 a c)) 'one]
    [else 'none]))

(symbol=? (what-kind 0 1 2) 'degenerate)
(symbol=? (what-kind 1 2 3) 'none)
(symbol=? (what-kind 2 4 2) 'one)
(symbol=? (what-kind 1 0 -1) 'two)
