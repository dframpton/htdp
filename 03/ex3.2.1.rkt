;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex3.2.1.rkt

(define BASE-PRICE 5.00)
(define BASE-ATTENDANCE 120)
(define PRICE-DECREASE 0.10)
(define ATTENDANCE-INCREASE 15)
(define ATTENDEE-COST 1.50)

;; attendees : number -> number
;; Compute the number of attendees, given ticket-price.
;; Examples:
;; (attendees 5.00) should produce 120
;; (attendees 4.00) should produce 270
;; (attendees 3.00) should produce 420
(define (attendees ticket-price)
  (+ BASE-ATTENDANCE
     (* (/ ATTENDANCE-INCREASE PRICE-DECREASE)
        (- BASE-PRICE ticket-price))))

;; cost : number -> number
;; Compute the costs, given ticket-price.
;; Examples:
;; (cost 5.00) should produce 184.80
;; (cost 4.00) should produce 190.80
;; (cost 3.00) should produce 196.80
(define (cost ticket-price)
  (* ATTENDEE-COST (attendees ticket-price)))

;; revenue : number -> number
;; Compute the revenue, given ticket-price.
;; Examples:
;; (revenue 5.00) should produce 600
;; (revenue 4.00) should produce 1080
;; (revenue 3.00) should produce 1260
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

;; profit : number -> number
;; Compute the profit as the difference between revenue and costs, given ticket-price.
;; Examples:
;; (profit 5.00) should produce 415.20
;; (profit 4.00) should produce 889.20
;; (profit 3.00) should produce 1063.32
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

;; Tests
(profit 5.00)
(profit 4.00)
(profit 3.00)
