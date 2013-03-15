;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.5.6) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.5.6.rkt

;; Develop the function delta, which consumes two price lists, that is, lists
;; of numbers. The first represents the inventory at the beginning of a time
;; period, the second one the inventory at the end. The function outputs the
;; difference in value. If the value of the inventory has increased, the result
;; is positive; if the value has decreased, it is negative.

;; delta : list-of-nums list-of-nums -> number
;; Compute the difference in value between two price lists
;; Examples:
;; (= (delta empty empty)
;;    0)
;; (= (delta (cons 1.5 (cons 0.75 (cons 3.25 empty)))
;;           (cons 1.25 (cons 0.5 (cons 3.0 empty))))
;;    -0.75)
;; (= (delta (cons 1.5 (cons 0.75 (cons 3.25 empty)))
;;           (cons 1.75 (cons 1.0 (cons 3.5 empty))))
;;    0.75)
(define (delta prices-start prices-end)
  (- (sum prices-end) (sum prices-start)))

;; sum : list-of-numbers -> number
;; Compute the sum of the numbers in a-list-of-nums
(define (sum a-list-of-nums)
  (cond
    [(empty? a-list-of-nums) 0]
    [else (+ (first a-list-of-nums) (sum (rest a-list-of-nums)))]))

;; Tests
(= (delta empty empty)
   0)
(= (delta (cons 1.5 (cons 0.75 (cons 3.25 empty)))
          (cons 1.25 (cons 0.5 (cons 3.0 empty))))
   -0.75)
(= (delta (cons 1.5 (cons 0.75 (cons 3.25 empty)))
          (cons 1.75 (cons 1.0 (cons 3.5 empty))))
   0.75)
