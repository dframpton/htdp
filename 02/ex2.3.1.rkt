;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.3.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.3.1.rkt

;; Utopia's tax accountants always use programs that compute income taxes even
;; though the tax rate is a solid, never-changing 15%. Define the program tax,
;; which determines the tax on the gross pay.

(define (wage hours)
  (* 12 hours))

(define (tax pay)
  (* 0.15 pay))

(define (netpay hours)
  (- (wage hours)
     (tax (wage hours))))

(wage 40) ;; ]=> 480
(tax 480) ;; ]=> 72
(netpay 40) ;; ]=> 408
