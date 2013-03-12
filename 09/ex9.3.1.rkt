;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.3.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.3.1.rkt

;; Use DrScheme to test the definition of contains-doll?

;; contains-doll? : list-of-symbols -> boolean
;; Determine whether the symbol 'doll occurs in a-list-of-symbols
(define (contains-doll? a-list-of-symbols)
  (cond
    [(empty? a-list-of-symbols) false]
    [else (cond
            [(symbol=? (first a-list-of-symbols) 'doll) true]
            [else (contains-doll? (rest a-list-of-symbols))])]))

;; Tests
(boolean=? (contains-doll? empty) false)
(boolean=? (contains-doll? (cons 'ball empty)) false)
(boolean=? (contains-doll? (cons 'arrow (cons 'doll empty))) true)
(boolean=? (contains-doll? (cons 'bow (cons 'arrow (cons 'ball empty)))) false)
