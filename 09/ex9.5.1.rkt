;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.5.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.5.1.rkt

;; Use DrScheme to test the definition of sum on the following sample lists
;; of numbers:

;; empty 
;; (cons 1.00 empty)
;; (cons 17.05 (cons 1.22 (cons 2.59 empty)))

;; Compare the results with our specifications. Then apply sum to the
;; following examples:

;; empty
;; (cons 2.59 empty)
;; (cons 1.22 (cons 2.59 empty))

;; First determine what the result should be, then use DrScheme to evaluate
;; the expressions.

;; sum : list-of-numbers -> number
;; Compute the sum of the numbers in a-list-of-nums
(define (sum a-list-of-nums)
  (cond
    [(empty? a-list-of-nums) 0]
    [else (+ (first a-list-of-nums) (sum (rest a-list-of-nums)))]))

;; Tests
(= (sum empty) 0)
(= (sum (cons 1.00 empty)) 1.00)
(= (sum (cons 2.59 empty)) 2.59)
(= (sum (cons 1.22 (cons 2.59 empty))) 3.81)
(= (sum (cons 17.05 (cons 1.22 (cons 2.59 empty)))) 20.86)
