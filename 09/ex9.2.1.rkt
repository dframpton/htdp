;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.2.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.2.1.rkt

;; Show that all the inventory lists discussed at the beginning of this section
;; belong to the class list-of-symbols.

;; A list of symbols is either:
;; 1. The empty list, empty
;; 2. (cons s los) where s is a symbol and los is a list of symbols

;; empty
;; An empty list is a list of symbols, as per 1

;; (cons 'ball empty)
;; (cons 'arrow (cons 'ball empty))
;; (cons 'clown empty)
;; (cons 'bow (cons 'arrow empty))
;; (cons 'clown (cons 'doll (cons 'arrow (cons 'ball empty))))
;; The others are all symbols cons'd onto lists of symbols, as per 2
