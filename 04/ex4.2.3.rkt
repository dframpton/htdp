;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.2.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.2.3.rkt

;; Mathematical equations in one variable are claims about an unknown number.
;; Translate the following equations into Scheme functions. Determine whether
;; 10, 12, or 14 are solutions.

;; 4 * n + 2 = 62
;; equation1 : number -> boolean
;; to determine whether n is a solution for 4 * n + 2 = 62
(define (equation1 n)
  (= (+ (* 4 n) 2) 62))

;; 2 * n^2 = 102
;; equation2 : number -> boolean
;; to determine whether n is a solution for 2 * n^2 = 102
(define (equation2 n)
  (= (* 2 (sqr n)) 102))

;; 4 * n^2 + 6 * n + 2 = 462
;; equation3 : number -> boolean
;; to determine whether n is a solution for 4 * n^2 + 6 * n + 2 = 462
(define (equation3 n)
  (= (+ (* 4 (sqr n))
        (* 6 n)
        2)
     462))

;; Tests
(equation1 10)
(equation1 12)
(equation1 14)
(equation2 10)
(equation2 12)
(equation2 14)
(equation3 10)
(equation3 12)
(equation3 14)
