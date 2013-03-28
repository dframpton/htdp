;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11.2.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp")))))

;; ex11.2.1.rkt

;; Generalize hellos to repeat, which consumes a natural number n and a symbol
;; and produces a list with n occurrences of the symbol.

;; hellos : N -> list-of-symbols
;; Create a list of n copies of 'hello
(define (hellos n)
  (cond
    [(zero? n) empty]
    [else (cons 'hello (hellos (sub1 n)))]))

;; Tests
(hellos 0)
(hellos 1)
(hellos 2)

;; repeat : N symbol -> list-of-symbols
;; Create a list of n copies of the given symbol
(define (repeat n word)
  (cond
    [(zero? n) empty]
    [else (cons word (repeat (sub1 n) word))]))

;; Tests
(repeat 0 'bacon)
(repeat 1 'bacon)
(repeat 4 'bacon)
