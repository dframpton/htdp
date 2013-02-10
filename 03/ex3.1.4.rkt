;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3.1.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex3.1.4.rkt

;; How to design a program 
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define (revenue ticket-price)
  (*  (attendees ticket-price) ticket-price))

(define (cost ticket-price)
  (* 1.50 (attendees ticket-price)))

(define (attendees ticket-price)
  (+ 120
     (* (/ 15 .10) (- 5.00 ticket-price))))

;; How *not* to design a program 
(define (profit2 price)
  (- (* (+ 120
	   (* (/ 15 .10)
	      (- 5.00 price)))
	price)
     (* 1.50
	(+ 120
	   (* (/ 15 .10)
              (- 5.00 price))))))

;; Tests
(profit 5.00)
(profit 4.00)
(profit 3.00)
(profit2 5.00)
(profit2 4.00)
(profit2 3.00)
