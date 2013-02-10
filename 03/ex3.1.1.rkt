;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3.1.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex3.1.1.rkt

;; attendees : number -> number
;; Compute the number of attendees, given ticket-price.
;; Examples:
;; (attendees 5.00) should produce 120
;; (attendees 4.90) should produce 135
;; (attendees 4.00) should produce 270
;; (attendees 3.00) should produce 420
(define (attendees ticket-price)
  (+ 120
     (* (/ 15 0.10)
        (- 5.00 ticket-price))))

;; Tests
(attendees 5.00)
(attendees 4.90)
(attendees 4.00)
(attendees 3.00)
