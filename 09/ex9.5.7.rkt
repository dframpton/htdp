;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.5.7) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.5.7.rkt

;; Define the function average-price. It consumes a list of toy prices and
;; computes the average price of a toy. The average is the total of all prices
;; divided by the number of toys.

;; Iterative Refinement: First develop a function that works on non-empty lists.
;; Then produce a checked function (see section 7.5) that signals an error when
;; the function is applied to an empty list.

;; average-price : list-of-nums -> number
;; Compute the average price of a list of prices
;; Examples:
;; (= (average-price empty)
;;    0)
;; (= (average-price (cons 1.25 empty))
;;    1.25)
;; (= (average-price (cons 3.50 (cons 2.45 (cons 1.25 empty))))
;;    2.40)
(define (average-price prices)
  (/ (sum prices) (how-many-numbers prices)))

;; checked-average-price : list-of-nums -> number
;; Compute the average price of a list of prices, checking for an empty list
(define (checked-average-price prices)
  (cond
    [(empty? prices) (error 'checked-average-price "List cannot be empty")]
    [else (average-price prices)]))

;; sum : list-of-numbers -> number
;; Compute the sum of the numbers in a-list-of-nums
(define (sum a-list-of-nums)
  (cond
    [(empty? a-list-of-nums) 0]
    [else (+ (first a-list-of-nums) (sum (rest a-list-of-nums)))]))

;; how-many-numbers : list-of-numbers -> number
;; Compute the number of numbers in a list-of-numbers
(define (how-many-numbers list-of-numbers)
  (cond
    [(empty? list-of-numbers) 0]
    [else (+ 1 (how-many-numbers (rest list-of-numbers)))]))

;; Tests
;; (average-price empty) will throw an error because of division by zero
(= (average-price (cons 1.25 empty))
   1.25)
(= (average-price (cons 3.50 (cons 2.45 (cons 1.25 empty))))
   2.40)
(checked-average-price empty)
