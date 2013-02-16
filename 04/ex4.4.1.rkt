;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.4.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex.4.4.1.rkt

;; Develop the function interest. Like interest-rate, it consumes a deposit
;; amount. Instead of the rate, it produces the actual amount of interest that
;; the money earns in a year. The bank pays a flat 4% for deposits of up to
;; $1,000, a flat 4.5% per year for deposits of up to $5,000, and a flat 5% for
;; deposits of more than $5,000.

;; interest : number -> number
;; Calculate the amount of interest earned in a year.
;; Examples:
;; (interest 800) should give 32
;; (interest 2800) should give 126
;; (interest 8000) should give 400
(define (interest amount)
  (cond
    [(<= amount 1000) (* amount 0.040)]
    [(<= amount 5000) (* amount 0.045)]
    [else (* amount 0.050)]))

;; Tests
(= (interest 800) 32)
(= (interest 1000) 40)
(= (interest 2800) 126)
(= (interest 5000) 225)
(= (interest 8000) 400)
