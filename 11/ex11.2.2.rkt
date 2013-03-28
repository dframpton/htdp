;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11.2.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp")))))

;; ex11.2.2.rkt

;; Develop the function tabulate-f, which tabulates the values of:

;; f : number -> number
(define (f x)
  (+ (* 3 (* x x)) 
     (+ (* -6 x)
        -1)))

;; for some natural numbers. Specifically, it consumes a natural number n and
;; produces a list of n posns. The first one combines n with (f n), the second
;; one n-1 with (f n-1), etc.

;; tabulate-f : N -> list-of-posns
;; Tabulate the values produced by the function f
(define (tabulate-f n)
  (cond
    [(zero? n) empty]
    [else (cons (make-posn n (f n)) (tabulate-f (sub1 n)))]))

;; Tests
(tabulate-f 0)
(tabulate-f 1)
(tabulate-f 3)
