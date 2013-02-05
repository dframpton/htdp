;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.4.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.4.1.rkt

;; Evaluate the following sentences in DrScheme, one at a time. Read and
;; understand the error messages.

(+ (10) 20)
;; ]=> function call: expected a function after the open parenthesis, but
;;     found a number

(10 + 20)
;; ]=> function call: expected a function after the open parenthesis, but
;;     found a number

(+ +)
;; ]=> +: expected a function call, but there is no open parenthesis before
;;     this function
