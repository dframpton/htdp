;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.3.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.3.3.rkt

;; An old-style movie theater has a simple profit function. Each customer pays
;; $5 per ticket. Every performance costs the theater $20, plus $.50 per
;; attendee. Develop the function total-profit. It consumes the number of
;; attendees (of a show) and produces how much income the attendees produce.

(define (total-profit attendees)
  (- (* 5 attendees)
     (+ 20 (* 0.5 attendees))))

(total-profit 200) ;; ]=> 880
