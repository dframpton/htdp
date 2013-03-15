;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.5.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.5.3.rkt

;; Develop the function dollar-store?, which consumes a list of prices
;; (numbers) and checks whether all of the prices are below 1.

;; Generalize the function so that it consumes a list of prices (numbers)
;; and a threshold price (number) and checks that all prices in the list are
;; below the threshold.

;; dollar-store? : list-of-nums -> boolean
;; Check whether a list of prices (numbers) are all below 1
;; Examples:
;; (boolean=? (dollar-store? empty)
;;            true)
;; (boolean=? (not (dollar-store? (cons .75 (cons 1.95 (cons .25 empty)))))
;;            true)
;; (boolean=? (dollar-store? (cons .15 (cons .05 (cons .25 empty))))
;;            true)
(define (dollar-store? list-of-nums)
  (cond
    [(empty? list-of-nums) true]
    [else (and (< (first list-of-nums) 1)
               (dollar-store? (rest list-of-nums)))]))

;; Tests
(boolean=? (dollar-store? empty)
           true)
(boolean=? (not (dollar-store? (cons .75 (cons 1.95 (cons .25 empty)))))
           true)
(boolean=? (dollar-store? (cons .15 (cons .05 (cons .25 empty))))
           true)

;; below-threshold? : number list-of-nums -> boolean
;; Check whether a list of prices (numbers) are all below the threshold
;; Examples:
;; (boolean=? (below-threshold? 5 empty)
;;            true)
;; (boolean=? (not (below-threshold? 3 (cons 1.75 (cons 5.95 (cons 2.25 empty)))))
;;            true)
;; (boolean=? (below-threshold? (cons 2.15 (cons 1.05 (cons 0.75 empty))))
;;            true)
(define (below-threshold? limit list-of-nums)
  (cond
    [(empty? list-of-nums) true]
    [else (and (< (first list-of-nums) limit)
               (below-threshold? limit (rest list-of-nums)))]))

;; Tests
(boolean=? (below-threshold? 5 empty)
           true)
(boolean=? (not (below-threshold? 3 (cons 1.75 (cons 5.95 (cons 2.25 empty)))))
           true)
(boolean=? (below-threshold? 4 (cons 2.15 (cons 1.05 (cons 0.75 empty))))
           true)
