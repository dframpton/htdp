;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.5.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.5.2.rkt

;; Develop the function how-many-symbols, which consumes a list of symbols and
;; produces the number of items in the list.

;; Develop the function how-many-numbers, which counts how many numbers are in
;; a list of numbers. How do how-many-symbols and how-many-numbers differ?

;; how-many-symbols : list-of-symbols -> number
;; Compute the number of symbols in a list-of-symbols
;; Examples:
;; (= (how-many-symbols empty)
;;    0)
;; (= (how-many-symbols (cons 'red empty))
;;    1)
;; (= (how-many-symbols (cons 'blue (cons 'green (cons 'red empty))))
;;    3)
(define (how-many-symbols list-of-symbols)
  (cond
    [(empty? list-of-symbols) 0]
    [else (+ 1 (how-many-symbols (rest list-of-symbols)))]))

;; Tests
(= (how-many-symbols empty)
   0)
(= (how-many-symbols (cons 'red empty))
   1)
(= (how-many-symbols (cons 'blue (cons 'green (cons 'red empty))))
   3)

;; how-many-numbers : list-of-numbers -> number
;; Compute the number of numbers in a list-of-numbers
;; Examples:
;; (= (how-many-numbers empty)
;;    0)
;; (= (how-many-numbers (cons 2 empty))
;;    1)
;; (= (how-many-numbers (cons '8 (cons 4 (cons 2 empty))))
;;    3)
(define (how-many-numbers list-of-numbers)
  (cond
    [(empty? list-of-numbers) 0]
    [else (+ 1 (how-many-numbers (rest list-of-numbers)))]))

;; Tests
(= (how-many-numbers empty)
   0)
(= (how-many-numbers (cons 2 empty))
   1)
(= (how-many-numbers (cons 8 (cons 4 (cons 2 empty))))
   3)

;; The functions are identical, the only difference is the name and the input.
