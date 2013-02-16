;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.4.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.4.2.rkt

;; Develop the function tax, which consumes the gross pay and produces the
;; amount of tax owed. For a gross pay of $240 or less, the tax is 0%; for over
;; $240 and $480 or less, the tax rate is 15%; and for any pay over $480, the
;; tax rate is 28%.

;; tax : number -> number
;; Calculate tax owed on gross pay.
;; Examples:
;; (tax 200) should give 0
;; (tax 400) should give 60
;; (tax 600) should give 168
(define (tax gross-pay)
  (cond
    [(<= gross-pay 240) 0]
    [(<= gross-pay 480) (* gross-pay 0.15)]
    [else (* gross-pay 0.28)]))

;; Tests
(= (tax 200) 0)
(= (tax 240) 0)
(= (tax 400) 60)
(= (tax 480) 72)
(= (tax 600) 168)

;; Also develop netpay. The function determines the net pay of an employee from
;; the number of hours worked. The net pay is the gross pay minus the tax.
;; Assume the hourly pay rate is $12.

(define RATE 12)

;; net-pay : number -> number
;; Calculate net pay given hours worked.
;; Examples:
;; (net-pay 35) should give 357
;; (net-pay 40) should give 408
;; (net-pay 60) should give 518.40
(define (net-pay hours)
  (- (* hours RATE)
     (tax (* hours RATE))))

;; Tests
(= (net-pay 35) 357)
(= (net-pay 40) 408)
(= (net-pay 60) 518.40)
