;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.2.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.2.4.rkt

;; Define the program convert3. It consumes three digits, starting with the
;; least significant digit, followed by the next most significant one, and so
;; on. The program produces the corresponding number. For example, the expected
;; value of (convert3 1 2 3) is 321.

(define (convert3 a b c)
  (+ (* c 100) (* b 10) a))

(convert3 1 2 3)
