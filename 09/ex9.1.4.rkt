;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.1.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.1.4.rkt

;; Provide a data definition for lists of two symbols. Then develop the
;; function contains-2-doll?, which consumes a list of two symbols and
;; determines whether one of them is 'doll.

;; Data definition
;; (cons x (cons y empty))
;; where x and y are symbols

;; contains-2-doll? : list-of-symbols -> boolean
;; Determine whether a list of two symbols contains 'doll
(define (contains-2-doll? p)
  (or (symbol=? 'doll (first p))
      (symbol=? 'doll (first (rest p)))))

;; Tests
(contains-2-doll? (cons 'apple (cons 'ball empty)))
(contains-2-doll? (cons 'doll (cons 'ball empty)))
(contains-2-doll? (cons 'apple (cons 'doll empty)))
(contains-2-doll? (cons 'doll (cons 'doll empty)))
