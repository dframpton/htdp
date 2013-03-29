;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11.3.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp")))))

;; ex11.3.4.rkt

;; Develop the function create-prices, which consumes a natural number and
;; produces a list with a corresponding number of prices between $.10 and $10.00
;; with increments of a dime. Use create-prices to test dollar-store? from
;; exercise 9.5.3.

;; create-prices : N -> list-of-nums
;; Produce a list of length n between 0.10 and 10.00, in 0.10 increments
(define (create-prices n)
  (cond
    [(zero? n) empty]
    [else (cons (* (random 100) 0.10)
                (create-prices (sub1 n)))]))

;; Tests
(create-prices 0)
(create-prices 3)
(create-prices 7)

;; dollar-store? : list-of-nums -> boolean
;; Check whether a list of prices (numbers) are all below 1
(define (dollar-store? list-of-nums)
  (cond
    [(empty? list-of-nums) true]
    [else (and (< (first list-of-nums) 1)
               (dollar-store? (rest list-of-nums)))]))

;; Tests
(dollar-store? empty)
(dollar-store? (create-prices 3))
