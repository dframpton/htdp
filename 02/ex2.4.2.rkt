;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.4.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.4.2.rkt

;; Enter the following sentences, one by one, into DrScheme's Definitions
;; window and click Execute:

;; (define (f 1)
;;   (+ x 10))
;; ]=> define: expected a variable, but found a number

;; (define (g x)
;;   + x 10)
;; ]=> define: expected only one expression for the function body, but found 2
;;     extra parts

;; (define h(x) 
;;   (+ x 10))
;; ]=> define: expected only one expression after the variable name h, but
;;     found 1 extra part

;; Read the error messages, fix the offending definition in an appropriate
;; manner, and repeat until all definitions are legal.

(define (f x)
  (+ x 10))

(define (g x)
  (+ x 10))

(define (h x)
  (+ x 10))

(f 5)
(g 5)
(h 5)
