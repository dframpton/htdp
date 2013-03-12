;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.3.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.3.2.rkt

;; Another way of formulating the second cond-clause in the function
;; contains-doll? is to understand (contains-doll? (rest a-list-of-symbols))
;; as a condition that evaluates to either true or false, and to combine it
;; appropriately with the condition (symbol=? (first a-list-of-symbols) 'doll)

;; Reformulate the definition of contains-doll? according to this observation.

;; contains-doll? : list-of-symbols -> boolean
;; Return true if list-of-symbols contains 'doll, otherwise return false
(define (contains-doll? a-list-of-symbols)
  (cond
    [(empty? a-list-of-symbols) false]
    [else (or (symbol=? (first a-list-of-symbols) 'doll)
              (contains-doll? (rest a-list-of-symbols)))]))

;; Tests
(boolean=? (contains-doll? empty) false)
(boolean=? (contains-doll? (cons 'ball empty)) false)
(boolean=? (contains-doll? (cons 'arrow (cons 'doll empty))) true)
(boolean=? (contains-doll? (cons 'bow (cons 'arrow (cons 'ball empty)))) false)
