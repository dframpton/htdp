;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.4.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.4.3.rkt

;; Some credit card companies pay back a small portion of the charges a
;; customer makes over a year. One company returns:

;; 0.25% for the first $500 of charges,
;; 0.50% for the next $1000 (that is, the portion between $500 and $1500),
;; 0.75% for the next $1000 (that is, the portion between $1500 and $2500),
;; and 1.0% for everything above $2500.

;; Thus, a customer who charges $400 a year receives $1.00, which is
;; 0.25 * 1/100 * 400, and one who charges $1,400 a year receives $5.75,
;; which is 1.25 = 0.25 * 1/100 * 500 for the first $500 and 0.50 * 1/100 * 900
;; = 4.50 for the next $900.

;; Determine by hand the pay-backs for a customer who charged $2000 and one who
;; charged $2600.

;; Define the function pay-back, which consumes a charge amount and computes
;; the corresponding pay-back amount.

;; $2000 ]=> 10
;; 0.25 * 0.01 * 500  = 1.25
;; 0.50 * 0.01 * 1000 = 5
;; 0.75 * 0.01 * 500  = 3.75

;; $2600 ]=> 14.75
;; 0.25 * 0.01 * 500  = 1.25
;; 0.50 * 0.01 * 1000 = 5
;; 0.75 * 0.01 * 1000 = 7.5
;; 1.0  * 0.01 * 100  = 1

;; pay-back : number -> number
;; Calculate the pay-back amount given the charge amount.
;; Examples:
;; (pay-back 400) should give 1.00
;; (pay-back 1400) should give 5.75
(define (pay-back charge)
  (cond
    [(<= charge 500) (first-500 charge)]
    [(<= charge 1500) (between-500-1500 charge)]
    [(<= charge 2500) (between-1500-2500 charge)]
    [else (over-2500 charge)]))

(define (first-500 amount)
  (* 0.25 0.01 amount))

(define (between-500-1500 amount)
  (+ (first-500 500)
     (* 0.50 0.01 (- amount 500))))

(define (between-1500-2500 amount)
  (+ (between-500-1500 1500)
     (* 0.75 0.01 (- amount 1500))))

(define (over-2500 amount)
  (+ (between-1500-2500 2500)
     (* 1.00 0.01 (- amount 2500))))

;; Tests
(= (pay-back 400) 1.00)
(= (pay-back 1400) 5.75)
(= (pay-back 2000) 10)
(= (pay-back 2600) 14.75)
