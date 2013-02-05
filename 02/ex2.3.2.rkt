;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.3.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.3.2.rkt

;; The local supermarket needs a program that can compute the value of a bag of
;; coins. Define the program sum-coins. It consumes four numbers: the number of
;; pennies, nickels, dimes, and quarters in the bag; it produces the amount of
;; money in the bag.

(define (sum-coins pennies nickels dimes quarters)
  (+ (* pennies 1)
     (* nickels 5)
     (* dimes 10)
     (* quarters 25)))

(sum-coins 1 0 0 0) ;; ]=> 1
(sum-coins 0 1 0 0) ;; ]=> 5
(sum-coins 0 0 1 0) ;; ]=> 10
(sum-coins 0 0 0 1) ;; ]=> 25
(sum-coins 1 1 1 1) ;; ]=> 41
